#include "calibration.h"

void IMU_LoadCalibration()
{
    acc_offset_x = -72;
    acc_offset_y = 28;
    acc_offset_z = 215;
    acc_scale_x = 1.0 / 986;
    acc_scale_y = 1.0 / 1033;
    acc_scale_z = 1.0 / 1013;

    gyro_offset_x = 0;
    gyro_offset_y = 0;
    gyro_offset_z = 0;
    gyro_scale_x = 0.00875;
    gyro_scale_y = -0.00875;
    gyro_scale_z = 0.00875;
}
