/* 
 * File:   system_config.h
 * Author: PaulStelian
 *
 * Created on 05 aprilie 2014, 23:17
 */

#ifndef SYSTEM_CONFIG_H
#define	SYSTEM_CONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif

// *****************************************************************************
// *****************************************************************************
// Section: General System Configuration
// *****************************************************************************
// *****************************************************************************

#define SYS_CLK_FREQUENCY  (80000000ul)

#define SYS_CLK_ClockFrequencyGet(i)        SYS_CLK_FREQUENCY
#define SYS_CLK_PeripheralClockGet(i)       SYS_CLK_FREQUENCY   // 1:1
#define SYS_CLK_PeriphBusFreqGet(i)         SYS_CLK_FREQUENCY   // 1:1

#define PB_FREQUENCY       (40000000ul)

// *****************************************************************************
// *****************************************************************************
// Section: System Services Configuration
// *****************************************************************************
// *****************************************************************************

/* Define the index for the driver we'll use. */
#define SYS_USART_DRIVER_INDEX          DRV_USART_INDEX_0

/* Define the hardware (PLIB) index associted with this instance of the driver. */
#define SYS_USART_ID                    USART_ID_1

// *****************************************************************************
// *****************************************************************************
// Section: UART Driver Configuration
// *****************************************************************************
// *****************************************************************************

#define DRV_USART_INSTANCES_NUMBER      1
#define DRV_USART_CLIENTS_NUMBER        1
#define DRV_USART_INTERRUPT_MODE        true
#define DRV_USART_XFER_BUFFER_NUMBER    10
#define DRV_USART_INTERRUPT_SOURCE_TX   INT_SOURCE_USART_1_TRANSMIT
#define DRV_USART_INTERRUPT_SOURCE_RX   INT_SOURCE_USART_1_RECEIVE

/* Combined quque depth is 5*/
#define DRV_USART_QUEUE_DEPTH_COMBINED  5

#define DRV_USART_PERIPHERAL_BUS

#define DRV_USART_CONFIG_BYTE_Q_SIZE_TX         1
#define DRV_USART_CONFIG_BYTE_Q_SIZE_RX         1
#define DRV_USART_CONFIG_BLOCK_DEVICE_MODE


#define ADXL362_CS_PORT_ID      PORT_CHANNEL_D
#define ADXL362_CS_PORT_PIN     PORTS_BIT_POS_8
#define ADXL362_SPI_MODULE_ID   SPI_ID_2
#define ADXL362_SPI_BAUD        (1000000ul)

#define GYRO_CS_PORT_ID      PORT_CHANNEL_D
#define GYRO_CS_PORT_PIN     PORTS_BIT_POS_11
#define GYRO_SPI_MODULE_ID   SPI_ID_4
#define GYRO_SPI_BAUD        (1000000ul)

#define MOTOR_MAX_PWM           4000
#define MOTOR_TIMER_ID          TMR_ID_2
#define MOTOR_OC_TIMER_SOURCE   OC_TIMER_16BIT_TMR2
#define MOTOR_RIGTH_BW_OC_ID    OC_ID_2
#define MOTOR_RIGTH_FW_OC_ID    OC_ID_3
#define MOTOR_LEFT_BW_OC_ID     OC_ID_4
#define MOTOR_LEFT_FW_OC_ID     OC_ID_5

    

    



// *****************************************************************************
// *****************************************************************************
// Section: Application Configuration
// *****************************************************************************
// *****************************************************************************

/* Define the size of the application's message buffer. */
#define APP_BUFFER_SIZE         60
#define APP_UART_BAUDRATE       9600
#define APP_NO_OF_BYTES_TO_READ 1
#define APP_ESC_MSG             0x1B


    

#ifdef	__cplusplus
}
#endif

#endif	/* SYSTEM_CONFIG_H */

