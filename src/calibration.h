/* 
 * File:   calibration.h
 * Author: Mishu
 *
 * Created on May 6, 2014, 6:17 PM
 */

#ifndef CALIBRATION_H
#define	CALIBRATION_H

#ifdef	__cplusplus
extern "C" {
#endif

    int acc_offset_x;
    int acc_offset_y;
    int acc_offset_z;
    float acc_scale_x;
    float acc_scale_y;
    float acc_scale_z;

    int gyro_offset_x;
    int gyro_offset_y;
    int gyro_offset_z;
    float gyro_scale_x;
    float gyro_scale_y;
    float gyro_scale_z;

    void IMU_load_calibration();

#ifdef	__cplusplus
}
#endif

#endif	/* CALIBRATION_H */

