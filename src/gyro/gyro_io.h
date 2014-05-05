/* 
 * File:   gyro_io.h
 * Author: PaulStelian
 *
 * Created on 27 aprilie 2014, 02:04
 */

#ifndef GYRO_IO_H
#define	GYRO_IO_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "gyro.h"
#include "system/ports/sys_ports.h"



#define GYRO_SPI_CS_SELECT()    	SYS_PORTS_PinClear(PORTS_ID_0, GYRO_CS_PORT_ID, GYRO_CS_PORT_PIN)
#define GYRO_SPI_CS_DESELECT()          SYS_PORTS_PinSet(PORTS_ID_0, GYRO_CS_PORT_ID, GYRO_CS_PORT_PIN)

typedef struct
{
    int16_t x;
    int16_t y;
    int16_t z;
    int8_t  t; //temperature
    uint8_t status;
} GYRO_RAW_DATA;

short gyroInit();
void gyroRegisterRead(unsigned char regaddr, unsigned char *buf);
void gyroRegisterWrite(unsigned char regaddr, unsigned char *buf);
void gyroRawDataRead(GYRO_RAW_DATA * raw_data);


#ifdef	__cplusplus
}
#endif

#endif	/* GYRO_IO_H */

