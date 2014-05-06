#include "app.h"
#include "peripheral/spi/plib_spi.h"
#include "system/ports/sys_ports.h"
#include "gyro/gyro_io.h"

//GYRO_RAW_DATA gyro_raw_data;

int gyroInit()
{
    unsigned char buf;
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

    // Check if Gyro sensor is connected
    gyroRegisterRead(GYRO_WHO_AM_I, &buf);
    if ( buf != GYRO_WHO_AM_I_RESPONSE )
    {
        // Device not present, abort initialization
        return 1;
    }

    /* Config gyro register 1
     * Normal power mode, Enable all axes
     * Cut-off: 25Hz
     * ODR:     100Hz                                                   */
    buf = GYRO_REG1_XEN | GYRO_REG1_YEN | GYRO_REG1_ZEN | GYRO_REG1_PD |
            GYRO_REG1_BW0 | GYRO_REG1_BW1;
    gyroRegisterWrite(GYRO_CTRL_REG1, &buf);

    /* Config gyro register 2
     * High pass filter cut off frecuency: 1Hz
     * High pass filter mode: Normal                                    */
    buf = GYRO_REG2_HPCF0 | GYRO_REG2_HPCF1;
    gyroRegisterWrite(GYRO_CTRL_REG2, &buf);

    /* Config gyro register 4
     * Scale selection: 250 dps
     * Output registers not updated until MSB and LSB reading           */
    buf = GYRO_REG4_SCALE_250 | GYRO_REG4_BDU;
    gyroRegisterWrite(GYRO_CTRL_REG4, &buf);

    /* Config gyro register 5
     * Data is high-pass and low-pass-filtered by LPF2 */
    buf = GYRO_REG5_OUT_SEL0 | GYRO_REG5_OUT_SEL1 | GYRO_REG5_HP_EN;
    gyroRegisterWrite(GYRO_CTRL_REG5, &buf);

    return 0;
}

void gyroRegisterRead(unsigned char regaddr, unsigned char *buf)
{
    GYRO_SPI_CS_SELECT();

    // Write Command, Address and dummy byte
    PLIB_SPI_BufferWrite ( GYRO_SPI_MODULE_ID, regaddr | GYRO_READ );
    PLIB_SPI_BufferWrite ( GYRO_SPI_MODULE_ID, 0 );

    // Wait until receive buffer got all data
    while ( PLIB_SPI_FIFOCountGet(GYRO_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 2 );

    // Read a dummy byte (command & address) and valid data
    unsigned char a = PLIB_SPI_BufferRead(GYRO_SPI_MODULE_ID);
    *buf = PLIB_SPI_BufferRead(GYRO_SPI_MODULE_ID);

    GYRO_SPI_CS_DESELECT();
}

void gyroRegisterWrite(unsigned char regaddr, unsigned char *buf)
{
    GYRO_SPI_CS_SELECT();

    // Write Command, Address and dummy byte
    PLIB_SPI_BufferWrite ( GYRO_SPI_MODULE_ID, regaddr | GYRO_WRITE );
    PLIB_SPI_BufferWrite ( GYRO_SPI_MODULE_ID, *buf );

    // Wait until receive buffer got all data
    while ( PLIB_SPI_FIFOCountGet(GYRO_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 2 );

    // Read two dummy bytes (command & address) and data
    PLIB_SPI_BufferRead(GYRO_SPI_MODULE_ID);
    PLIB_SPI_BufferRead(GYRO_SPI_MODULE_ID);
    
    GYRO_SPI_CS_DESELECT();
}

void gyroRawDataRead(GYRO_RAW_DATA * raw_data)
{
    uint8_t i;
    unsigned char buf[10];
    
    GYRO_SPI_CS_SELECT();

    // Write Command, Address and dummy byte
    PLIB_SPI_BufferWrite ( GYRO_SPI_MODULE_ID, GYRO_OUT_TEMP | GYRO_MULTI_READ );
    for ( i = 0; i < 8; i++ )
    {
        PLIB_SPI_BufferWrite ( GYRO_SPI_MODULE_ID, 0 );
    }

    // Wait until receive buffer got all data
    while ( PLIB_SPI_FIFOCountGet(GYRO_SPI_MODULE_ID, SPI_FIFO_TYPE_RECEIVE) < 9 );

    // Read all response from SPI buffer
    for (i = 0; i < 9; i++)
    {
        buf[i] = PLIB_SPI_BufferRead(GYRO_SPI_MODULE_ID);
    }

    raw_data->t = buf[1];
    raw_data->status = buf[2];

    raw_data->x = ( (int16_t)buf[4] << 8 ) + buf[3];
    raw_data->y = ( (int16_t)buf[6] << 8 ) + buf[5];
    raw_data->z = ( (int16_t)buf[8] << 8 ) + buf[7];

    GYRO_SPI_CS_DESELECT();
}