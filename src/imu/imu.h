/* 
 * File:   imu.h
 * Author: PaulStelian
 *
 * Created on 26 aprilie 2014, 23:09
 */

#ifndef IMU_H
#define	IMU_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "adxl362/adxl362_io.h"
#include "gyro/gyro_io.h"
#include "calibration.h"

typedef struct
{
    float x;
    float y;
    float z;
    float dx;
    float dy;
    float dz;
    float temp;
} SENSOR_DATA;

typedef struct {
  float angle;
  float rate_bias;
  float rate;
  float angle_noise;

  float rate_raw;
  float rate_lpf;
  float angle_raw;
  float angle_lpf;

  float rotation;

  uint8_t rate_inited;
  uint8_t angle_inited;
} SENSOR_FILTER;

typedef struct
{
    float x;
    float y;
    float z;
} VECTOR_3D;

int IMU_Init();

void IMU_GetValues( SENSOR_DATA * values );
void IMU_GetInclination3 ( int intervalms, SENSOR_FILTER * filter );
void zeroGyro();


#ifdef	__cplusplus
}
#endif

#endif	/* IMU_H */

