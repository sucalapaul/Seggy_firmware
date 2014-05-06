#include "imu/imu.h"

float tempRawDx, tempRawDy, tempRawDz;

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