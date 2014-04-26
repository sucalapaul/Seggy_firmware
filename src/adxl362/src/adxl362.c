#include "app.h"
#include "peripheral/spi/plib_spi.h"
#include "system/ports/sys_ports.h"
#include "adxl362/adxl362_io.h"

ADXL362_RAW_DATA xl362_raw_data;

void xl362Init()
{
    unsigned char buf;
    /* CS pin set to output */
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, ADXL362_CS_PORT_ID, ADXL362_CS_PORT_PIN);
    
    /* Setup SPI module - 8 bit transfers, master mode, 10MHz SPI clock speed */
    PLIB_SPI_CommunicationWidthSelect(ADXL362_SPI_MODULE_ID, SPI_COMMUNICATION_WIDTH_8BITS);
    PLIB_SPI_BaudRateSet(ADXL362_SPI_MODULE_ID, 1000000, ADXL362_SPI_BAUD);
    PLIB_SPI_PinEnable(ADXL362_SPI_MODULE_ID, SPI_PIN_SLAVE_SELECT);
    PLIB_SPI_InputSamplePhaseSelect(ADXL362_SPI_MODULE_ID, SPI_INPUT_SAMPLING_PHASE_AT_END);
    PLIB_SPI_OutputDataPhaseSelect(ADXL362_SPI_MODULE_ID, SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK);
    PLIB_SPI_ClockPolaritySelect(ADXL362_SPI_MODULE_ID, SPI_CLOCK_POLARITY_IDLE_LOW);
    PLIB_SPI_FIFOEnable(ADXL362_SPI_MODULE_ID);
    PLIB_SPI_MasterEnable(ADXL362_SPI_MODULE_ID);
    PLIB_SPI_Enable(ADXL362_SPI_MODULE_ID);
    ADXL362_SPI_CS_DESELECT();

    /* Configure accelerometer FILTER CONTROL REGISTER
     * Output Data Rate: 100 Hz
     * Halved Bandwidth
     * Measurement Range: ±2 g */
    buf = XL362_FILTER_CTL_ODR ( XL362_RATE_100 ) |
            XL362_FILTER_CTL_HALF_BW |
            XL362_FILTER_CTL_RANGE ( XL362_RANGE_2G );
    xl362RegisterWrite(XL362_FILTER_CTL, &buf);

    /* Configure accelerometer POWER CONTROL REGISTER
     * Measurement Mode
     * NO Autosleep
     * NO Wake-Up
     * Power vs. Noise Tradeoff: Ultralow noise mode                       */
    buf = XL362_POWER_CTL_MEASURE ( XL362_MEASURE_3D ) |
            XL362_POWER_CTL_LOW_NOISE( XL362_NOISE_MODE_ULTRALOW );
    xl362RegisterWrite(XL362_POWER_CTL, &buf);
}
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
//void xl362Read(unsigned char count, unsigned char regaddr, unsigned char *buf)
//{
//    ADXL362_SPI_CS_SELECT();
//
//    // Write Command, Address and dummy byte
//    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, XL362_REG_READ);
//    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, regaddr);
//    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, 0);
//
//    // Wait until receive buffer got all data
//    while ( PLIB_SPI_FIFOCountGet(ADXL362_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 3 );
//
//    // Read two dummy bytes (command & address) and valid data
//    PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
//    PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
//    *buf = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
//    PLIB_SPI_BufferClear(ADXL362_SPI_MODULE_ID);
//
//    ADXL362_SPI_CS_DESELECT();
//}

void xl362RegisterRead(unsigned char regaddr, unsigned char *buf)
{
    ADXL362_SPI_CS_SELECT();

    // Write Command, Address and dummy byte
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, XL362_REG_READ);
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, regaddr);
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, 0);

    // Wait until receive buffer got all data
    while ( PLIB_SPI_FIFOCountGet(ADXL362_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 3 );

    // Read two dummy bytes (command & address) and valid data
    PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
    PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
    *buf = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);


    ADXL362_SPI_CS_DESELECT();
}

void xl362RegisterWrite(unsigned char regaddr, unsigned char *buf)
{
    ADXL362_SPI_CS_SELECT();

    // Write Command, Address and dummy byte
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, XL362_REG_WRITE);
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, regaddr);
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, *buf);

    // Wait until receive buffer got all data
    while ( PLIB_SPI_FIFOCountGet(ADXL362_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 3 );

    // Read dummy bytes (clear buffer)
    PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
    PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
    PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
    PLIB_SPI_BufferClear(ADXL362_SPI_MODULE_ID);

    ADXL362_SPI_CS_DESELECT();
}

/*
  The fifo read function takes a byte count as an int and a
  pointer to the buffer where to return the data.  When the read
  function runs, it goes through the following sequence:

    1) CS_N Low
    2) Send the correct command
    4) Read each byte
    5) CS_N high
*/
void xl362FifoRead(unsigned int count, unsigned char *buf)
{
}


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
void xl362Write(unsigned char count, unsigned char regaddr, unsigned char *buf)
{

}

void xl362RawDataRead(ADXL362_RAW_DATA * raw_data)
{
    uint8_t i;
    unsigned char buf[10];
    ADXL362_SPI_CS_SELECT();

    // Write Command, Address and dummy byte
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, XL362_REG_READ);
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, XL362_XDATAL);

    // Write dummy bytes, in order to receive X, Y, Z and Temperature
    // in burst mode
    for (i = 0; i < 8; i++)
    {
        PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, 0);
    }

    // Wait until receive buffer got all data
    while ( PLIB_SPI_FIFOCountGet(ADXL362_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 10 );

    // Read all response from SPI buffer
    for (i = 0; i < 10; i++)
    {
        buf[i] = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
    }

    // Convert sign extended data to int
    raw_data->x = ( (int16_t)buf[3] << 8 ) + buf[2];
    raw_data->y = ( (int16_t)buf[5] << 8 ) + buf[4];
    raw_data->z = ( (int16_t)buf[7] << 8 ) + buf[6];
    raw_data->t = ( (int16_t)buf[9] << 8 ) + buf[8];
    
    ADXL362_SPI_CS_DESELECT();
}