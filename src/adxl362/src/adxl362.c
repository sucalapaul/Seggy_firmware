#include "app.h"
#include "peripheral/spi/plib_spi.h"
#include "system/ports/sys_ports.h"
#include "adxl362/adxl362_io.h"


void xl362Init()
{

    /* CS pin set to output */
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, ADXL362_CS_PORT_ID, ADXL362_CS_PORT_PIN);
    
    /* Setup SPI module - 8 bit transfers, master mode, 10MHz SPI clock speed */
    PLIB_SPI_CommunicationWidthSelect(ADXL362_SPI_MODULE_ID, SPI_COMMUNICATION_WIDTH_8BITS);
    PLIB_SPI_BaudRateSet(ADXL362_SPI_MODULE_ID, PB_FREQUENCY, ADXL362_SPI_BAUD);
    PLIB_SPI_PinEnable(ADXL362_SPI_MODULE_ID, SPI_PIN_DATA_OUT);
    PLIB_SPI_InputSamplePhaseSelect(ADXL362_SPI_MODULE_ID, SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE);
    PLIB_SPI_OutputDataPhaseSelect(ADXL362_SPI_MODULE_ID, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK);
    PLIB_SPI_ClockPolaritySelect(ADXL362_SPI_MODULE_ID, SPI_CLOCK_POLARITY_IDLE_LOW);
    PLIB_SPI_MasterEnable(ADXL362_SPI_MODULE_ID);
    PLIB_SPI_Enable(ADXL362_SPI_MODULE_ID);

    ADXL362_SPI_CS_DESELECT();
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
void xl362Read(unsigned char count, unsigned char regaddr, unsigned char *buf)
{   
    ADXL362_SPI_CS_SELECT();

    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, XL362_REG_READ);
    //while(!PLIB_SPI_ReceiverBufferIsFull(ADXL362_SPI_MODULE_ID));
    //*buf = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);

    //while(!PLIB_SPI_ReceiverBufferIsFull(ADXL362_SPI_MODULE_ID));

    while(!PLIB_SPI_ReceiverBufferIsFull(ADXL362_SPI_MODULE_ID));
    char aa = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);

    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, regaddr);
    while(!PLIB_SPI_ReceiverBufferIsFull(ADXL362_SPI_MODULE_ID));
    char a = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);

    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, 0);
    while(!PLIB_SPI_ReceiverBufferIsFull(ADXL362_SPI_MODULE_ID));
    char aaa = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);
    
    PLIB_SPI_BufferWrite(ADXL362_SPI_MODULE_ID, 0);
    while(!PLIB_SPI_ReceiverBufferIsFull(ADXL362_SPI_MODULE_ID));
    *buf = PLIB_SPI_BufferRead(ADXL362_SPI_MODULE_ID);


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