#include "app.h"
#include "peripheral/spi/plib_spi.h"
#include "system/ports/sys_ports.h"
#include "gyro/gyro_io.h"

GYRO_RAW_DATA gyro_raw_data;

void gyroInit()
{
    /* CS pin set to output */
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, GYRO_CS_PORT_ID, GYRO_CS_PORT_PIN);

    /* Setup SPI module - 8 bit transfers, master mode, 10MHz SPI clock speed */
    PLIB_SPI_CommunicationWidthSelect(GYRO_SPI_MODULE_ID, SPI_COMMUNICATION_WIDTH_8BITS);
    PLIB_SPI_BaudRateSet(GYRO_SPI_MODULE_ID, 1000000, GYRO_SPI_BAUD);
    PLIB_SPI_PinEnable(GYRO_SPI_MODULE_ID, SPI_PIN_SLAVE_SELECT);
    PLIB_SPI_InputSamplePhaseSelect(GYRO_SPI_MODULE_ID, SPI_INPUT_SAMPLING_PHASE_AT_END);
    PLIB_SPI_OutputDataPhaseSelect(GYRO_SPI_MODULE_ID, SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK);
    PLIB_SPI_ClockPolaritySelect(GYRO_SPI_MODULE_ID, SPI_CLOCK_POLARITY_IDLE_HIGH);
    PLIB_SPI_FIFOEnable(GYRO_SPI_MODULE_ID);
    PLIB_SPI_MasterEnable(GYRO_SPI_MODULE_ID);
    PLIB_SPI_Enable(GYRO_SPI_MODULE_ID);
    GYRO_SPI_CS_DESELECT();
}

void gyroRegisterRead(unsigned char regaddr, unsigned char *buf)
{
    GYRO_SPI_CS_SELECT();

    // Write Command, Address and dummy byte
    PLIB_SPI_BufferWrite(GYRO_SPI_MODULE_ID, regaddr | GYRO_READ);
    PLIB_SPI_BufferWrite(GYRO_SPI_MODULE_ID, 0);

    // Wait until receive buffer got all data
    while ( PLIB_SPI_FIFOCountGet(GYRO_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 2 );

    // Read a dummy byte (command & address) and valid data
    unsigned char a = PLIB_SPI_BufferRead(GYRO_SPI_MODULE_ID);
    *buf = PLIB_SPI_BufferRead(GYRO_SPI_MODULE_ID);

    GYRO_SPI_CS_DESELECT();
}