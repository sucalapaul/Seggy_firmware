#include "imu/imu.h"
#include "math.h"

float tempRawDx, tempRawDy, tempRawDz;
VECTOR_3D REst, RGyro, Az, inclination, prevInclination;
bool first_reading;

int IMU_Init()
{
    if ( xl362Init() )
    {
        // Error initilizing Accelerometer
        return 1;
    }

    if ( gyroInit() )
    {
        // Error initializing Gyroscope
        return 1;
    }

    IMU_LoadCalibration();
    zeroGyro;
    first_reading = true;
    
    // Initialize variables

    return 0;
}

/* 
 * Get calibrated sensor values
 */
void IMU_GetValues( SENSOR_DATA * values )
{
    GYRO_RAW_DATA gyro_raw_data;
    ADXL362_RAW_DATA adxl_raw_data;

    // Read sensor raw data
    xl362RawDataRead ( &adxl_raw_data );
    gyroRawDataRead ( &gyro_raw_data );

    // Flip axes according to sensor physical positions
    values -> x = (float) adxl_raw_data.x;
    values -> y = (float) adxl_raw_data.y;
    values -> z = (float) adxl_raw_data.z;
    tempRawDx = (float) gyro_raw_data.x;
    tempRawDy = (float) gyro_raw_data.y;
    tempRawDz = (float) gyro_raw_data.z;

    // Calibration 
    values -> x = ( values -> x - acc_offset_x ) * acc_scale_x;
    values -> y = ( values -> y - acc_offset_y ) * acc_scale_y;
    values -> z = ( values -> z - acc_offset_z ) * acc_scale_z;
    values -> dy = ( tempRawDx - gyro_offset_x ) * gyro_scale_x;
    values -> dx = ( tempRawDy - gyro_offset_y ) * gyro_scale_y;
    values -> dz = ( tempRawDz - gyro_offset_z ) * gyro_scale_z;

    // TODO: Compensate with temperature
}

/*
 * Compute gyro offset
 */
void zeroGyro()
{
    int i;
    const int totSamples = 20;
    GYRO_RAW_DATA raw_data, 
            accumulator = { .x = 0, .y = 0, .z = 0 };

    for ( i = 0; i < totSamples; i++ ) {
        gyroRawDataRead ( &raw_data );
        accumulator.x += raw_data.x;
        accumulator.y += raw_data.y;
        accumulator.z += raw_data.z;
    }

    gyro_offset_x = accumulator.x / totSamples;
    gyro_offset_y = accumulator.y / totSamples;
    gyro_offset_z = accumulator.z / totSamples;
}

//void normalize ( SENSOR_DATA )

float squared(float x){
  return x*x;
}

void IMU_GetInclination2(int intervalms, SENSOR_DATA * inclination)
{
    static SENSOR_DATA calibratedData;
    static float R;
    static char signRzGyro;
    static float kGyro = 4;

    IMU_GetValues ( &calibratedData );

    // normalize accelerometer data
    R = sqrtf ( calibratedData.x * calibratedData.x +
                calibratedData.y * calibratedData.y +
                calibratedData.z * calibratedData.z );

    calibratedData.x /= R;
    calibratedData.y /= R;
    calibratedData.z /= R;

    //directionCosineVector.x = atan2f(calibratedData.y, calibratedData.z) * 180 / M_PI;

    if ( first_reading )
    {
        // initialize with accelerometer readings
        REst.x = calibratedData.x;
        REst.y = calibratedData.y;
        REst.z = calibratedData.z;
        first_reading = false;
    }
    else
    {
        if ( fabsf(REst.z) < 0.1f )
        {
            RGyro.x = REst.x;
            RGyro.y = REst.y;
            RGyro.z = REst.z;
        }
        else
        {
            Az.x = atan2f ( REst.x, REst.z ) * 180 / M_PI;
            Az.y = atan2f ( REst.y, REst.z ) * 180 / M_PI;

            Az.x += ( calibratedData.dx * ( intervalms / 1000.0f ));
            Az.y += ( calibratedData.dy * ( intervalms / 1000.0f ));

            signRzGyro = ( cosf ( Az.x * M_PI / 180 ) >=0 ) ? 1 : -1;

            RGyro.x = sinf ( Az.x * M_PI / 180 );
            RGyro.x /= sqrtf( 1 + squared(cosf(Az.x * M_PI / 180)) * squared(tanf(Az.y * M_PI / 180)) );
            RGyro.y = sinf ( Az.y * M_PI / 180 );
            RGyro.y /= sqrtf( 1 + squared(cosf(Az.y * M_PI / 180)) * squared(tanf(Az.x * M_PI / 180)) );

            RGyro.z = signRzGyro * sqrtf(1 - squared(RGyro.x) - squared(RGyro.y));
        }
    
        REst.x = RGyro.x; //( calibratedData.x + kGyro * RGyro.x ) / ( 1 + kGyro ); //calibratedData.x
        REst.y = RGyro.y; //( calibratedData.y + kGyro * RGyro.y ) / ( 1 + kGyro );
        REst.z = RGyro.z; //( calibratedData.z + kGyro * RGyro.z ) / ( 1 + kGyro );


        inclination -> x = REst.x * REst.x;
        inclination -> y = REst.y * REst.y;
        inclination -> z = REst.z * REst.z;

        R = sqrtf ( REst.x * REst.x + REst.y * REst.y + REst.z * REst.z );
        REst.x /= R;
        REst.y /= R;
        REst.z /= R;

    }

//    inclination -> x = atan2f ( REst.x, REst.z ) * 180 / M_PI;
//    inclination -> y = atan2f ( REst.y, REst.z ) * 180 / M_PI;
//    inclination -> z = REst.z;
}

void IMU_GetInclination(int intervalms, SENSOR_DATA * inclination)
{
    static SENSOR_DATA calibratedData;
    static float estimated_angle, accelerometer_angle, gyro_angle;
    static float kGyro = 8.0f;

    IMU_GetValues( &calibratedData );

    accelerometer_angle = atan2f ( calibratedData.y, calibratedData.z ) * 180 / M_PI;
    
    if ( first_reading ) {
        estimated_angle = accelerometer_angle;
        first_reading = false;
    }
    else
    {
        gyro_angle = estimated_angle + ( calibratedData.dx * ( intervalms / 1000.0f ));

        estimated_angle = ( accelerometer_angle + kGyro * gyro_angle ) / ( 1 + kGyro );
    }

    inclination -> x = estimated_angle;
    inclination -> y = accelerometer_angle;
    inclination -> z = gyro_angle;
}