/*----------------------------------------------------------------------
  File Name          :
  Author             : MPD Application Team
  Version            : V0.0.1
  Date               : 11/06/2008
  Description        :
  File ID            : $Id: xl362_io.h,v 1.1.1.1 2012/01/10 15:18:18 jlee11 Exp $

  Analog Devices ADXL 345 digital output accellerometer
  with advanced digital features.

  (c) 2008 Analog Devices application support team.
  xxx@analog.com

  ----------------------------------------------------------------------

  The present firmware which is for guidance only aims at providing
  customers with coding information regarding their products in order
  for them to save time.  As a result, Analog Devices shall not be
  held liable for any direct, indirect or consequential damages with
  respect to any claims arising from the content of such firmware and/or
  the use made by customers of the coding information contained herein
  in connection with their products.

----------------------------------------------------------------------*/

#ifndef ADXL362_IO_H
#define	ADXL362_IO_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "adxl362.h"
#include "system/ports/sys_ports.h"
/* Wrapper functions for reading and writing bursts to / from the XL362
   Will need to be modified for your hardware
*/


#define ADXL362_SPI_CS_SELECT()    	SYS_PORTS_PinClear(PORTS_ID_0,ADXL362_CS_PORT_ID,ADXL362_CS_PORT_PIN)
#define ADXL362_SPI_CS_DESELECT() 	SYS_PORTS_PinSet(PORTS_ID_0,ADXL362_CS_PORT_ID,ADXL362_CS_PORT_PIN)

typedef struct
{
    int16_t x;
    int16_t y;
    int16_t z;
    int16_t t; //temperature
} ADXL362_RAW_DATA;

void xl362Init();
void xl362RegisterRead(unsigned char regaddr, unsigned char *buf);
void xl362RegisterWrite(unsigned char regaddr, unsigned char *buf);
void xl362RawDataRead(ADXL362_RAW_DATA * raw_data);


/*
  The read function takes a byte count, a register address and a
  pointer to the buffer where to return the data.  When the read
  function runs, it goes through the following sequence:

    1) CS_N Low
    2) Send the correct command
    3) Send the register address
    4) Read each byte
    5) CS_N high
*/
void xl362Read(unsigned char count, unsigned char regaddr, unsigned char *buf);
/*
  The fifo read function takes a byte count as an int and a
  pointer to the buffer where to return the data.  When the read
  function runs, it goes through the following sequence:

    1) CS_N Low
    2) Send the correct command
    4) Read each byte
    5) CS_N high
*/
void xl362FifoRead(unsigned int count, unsigned char *buf);
/*
  The write function takes a byte count, and a pointer to the buffer
  with the data.  The first byte of the data should be the start
  register address, the remaining bytes will be written starting at
  that register.  The mininum bytecount that shoudl be passed is 2,
  one byte of address, followed by a byte of data.  Multiple
  sequential registers can be written with longer byte counts. When
  the write function runs, it goes through the following sequence:

    1) CS_N Low
    2) Send the correct command
    3) Send the register address
    4) Send each byte
    5) CS_N high
*/
void xl362Write(unsigned char count, unsigned char regaddr, unsigned char *buf);




#ifdef	__cplusplus
}
#endif

#endif	/* ADXL362_IO_H */

