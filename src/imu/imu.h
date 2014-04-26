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

typedef struct
{
    uint32_t x;
    uint32_t y;
    uint32_t z;
    uint32_t dx;
    uint32_t dy;
    uint32_t dz;
} SENSOR_DATA;


#ifdef	__cplusplus
}
#endif

#endif	/* IMU_H */

