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

int IMU_Init();

void IMU_GetValues( SENSOR_DATA * values );
void zeroGyro();


#ifdef	__cplusplus
}
#endif

#endif	/* IMU_H */

