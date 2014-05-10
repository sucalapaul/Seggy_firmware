#include "app.h"
#include "pid.h"
#include "imu/imu.h"
#include "math.h"


SENSOR_FILTER sensor_filtered;
char buffer[30];

float fmax(float a, float b)
{
  if (a>=b) {
    return a;
  } else {
    return b;
  }
}

float fmin(float a, float b)
{
  if (a<=b) {
    return a;
  } else {
    return b;
  }
}

float flim(float x, float lo, float hi)
{
  if (x>hi) return hi;
  if (x<lo) return lo;
  return x;
}

void PID_Step( int intervalms )
{
    static float angle_corrected, noise;
    static float overspeed;
    static float overspeed_integral;
    static float softstart;
    static bool tipped;
    static float error, previous_error, errori, set_point;
    static float pid, cmd, speed_estimate;

    set_point = -7.87f;

    IMU_GetInclination3 ( intervalms, &sensor_filtered );

    overspeed = 0.0;
    angle_corrected = sensor_filtered.angle_lpf; // + flim(0.4*overspeed + overspeed_integral, -0.4, 0.4);

    previous_error = error;
    error = set_point - angle_corrected;
    errori = flim ( errori + angle_corrected * 0.1, -10.0, 10.0 );

    
    if (!tipped && ( error > 30.0 || error < -30.0) )
    {
        tipped=1;
    }

    if (tipped) {
        // too tippy to try to recover.
        MOTOR_SetIdle();
        return;
    }

    previous_error = error;
    error = set_point - angle_corrected;
    errori = flim ( errori + angle_corrected * 0.5, -10.0, 10.0 );

    pid = ( kp * error + kd * sensor_filtered.rate_lpf + ki * errori ) * softstart;

    // Adaptive gain for accelerometer
    noise = fmin ( sensor_filtered.angle_noise, fabsf( pid ) * 30.0 );
    lpf_update ( &noise, 50, intervalms, 0.0 );
    sensor_filtered.angle_noise = noise;

    softstart = fmin(1.0, softstart + 0.001 * intervalms);

    MOTOR_SetCommand ( 0, - pid );

    //sprintf ( buffer, "%7.3f,%7.3f,%7.3f\r\n", error, -angle_corrected,- pid );
    //serialPrint( buffer );
}
