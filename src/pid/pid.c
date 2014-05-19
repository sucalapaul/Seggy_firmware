#include "app.h"
#include "pid.h"
#include "imu/imu.h"
#include "math.h"

#include "peripheral/adc/plib_adc.h"


SENSOR_FILTER sensor_filtered;
char buffer[50];

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
    static float pid, cmd, speed_estimate, direction;
    static int potValue;
    static float hard_speed_lim;
    static float cur_speed_est;

    set_point = 0.0f;
    hard_speed_lim = 0.7f;

    IMU_GetInclination3 ( intervalms, &sensor_filtered );


    /* Read direction knob*/
    PLIB_ADC_MuxChannel0InputPositiveSelect(ADC_ID_1, ADC_MUX_A, ADC_INPUT_POSITIVE_AN0);
    PLIB_ADC_SamplingStart(ADC_ID_1);
    while ( !PLIB_ADC_ConversionHasCompleted(ADC_ID_1) );
    potValue = PLIB_ADC_ResultGetByIndex(ADC_ID_1, 0) - 500;
    if ( potValue > -30 && potValue < 30 ) {
        potValue = 0;
        direction = -sensor_filtered.rotation/100.0f;
    } else {
        direction = (float)potValue / 1000.0f;
        sensor_filtered.rotation = 0.0f;
    }

    /* GET PID VALUES FROM POTENTIOMETERS */
    /* Read P value*/
    PLIB_ADC_MuxChannel0InputPositiveSelect(ADC_ID_1, ADC_MUX_A, ADC_INPUT_POSITIVE_AN1);
    PLIB_ADC_SamplingStart(ADC_ID_1);
    while ( !PLIB_ADC_ConversionHasCompleted(ADC_ID_1) );
    potValue = PLIB_ADC_ResultGetByIndex(ADC_ID_1, 0);
    kp = (float)potValue / 10000.0f;

    /* Read I value*/
    PLIB_ADC_MuxChannel0InputPositiveSelect(ADC_ID_1, ADC_MUX_A, ADC_INPUT_POSITIVE_AN2);
    PLIB_ADC_SamplingStart(ADC_ID_1);
    while ( !PLIB_ADC_ConversionHasCompleted(ADC_ID_1) );
    potValue = PLIB_ADC_ResultGetByIndex(ADC_ID_1, 0);
    ki = - (float)potValue / 10000.0f;

    /* Read D value*/
    PLIB_ADC_MuxChannel0InputPositiveSelect(ADC_ID_1, ADC_MUX_A, ADC_INPUT_POSITIVE_AN3);
    PLIB_ADC_SamplingStart(ADC_ID_1);
    while ( !PLIB_ADC_ConversionHasCompleted(ADC_ID_1) );
    potValue = PLIB_ADC_ResultGetByIndex(ADC_ID_1, 0);
    kd = - (float)potValue / 100000.0f;




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

    pid = ( kp * error + kd * sensor_filtered.rate_lpf + ki * errori ) * softstart;

    // Adaptive gain for accelerometer
    //noise = fmin ( sensor_filtered.angle_noise, fabsf( pid ) * 30.0 );
    //lpf_update ( &noise, 50, intervalms, 0.0 );
    //sensor_filtered.angle_noise = noise;

    softstart = fmin(1.0, softstart + 0.001 * intervalms);

    //lpf_update ( &cmd, 70, intervalms, pid );
    cmd = pid;
    cmd = (cur_speed_est + (1.0+0.2*fabs(cur_speed_est)) * pid);
    cur_speed_est = flim(cur_speed_est + 0.0008*intervalms*pid,
                         -0.3,0.3);

    cmd=flim(cmd, -hard_speed_lim, hard_speed_lim);
    MOTOR_SetCommand ( direction, - cmd );

    sprintf ( buffer, "%5.4f,%5.4f,%6.5f,%5.3f,%5.3f\r\n", kp, ki , kd, cmd, error
            );
    serialPrint( buffer );
}
