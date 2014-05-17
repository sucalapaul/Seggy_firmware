/*******************************************************************************
 System Initialization File

  File Name:
    system_init.c

  Summary:
    System Initialization.

 Important :
 This demo uses an evaluation license which is meant for demonstration only and
 that customers desiring development and production on OPENRTOS must procure a
 suitable license.
 
  Description:
    This file contains source code necessary to initialize the system.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2011-2012 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
//#include "system/int/sys_int.h"
//#include "system_config.h"
//#include "system_definitions.h"
#include "app.h"
#include "peripheral/tmr/plib_tmr.h"
#include "peripheral/oc/plib_oc.h"
#include "motor/motor.h"

#include "peripheral/adc/plib_adc.h"


// ****************************************************************************
// ****************************************************************************
// Section: Configuration Bits
// ****************************************************************************
// ****************************************************************************

/*
 System PLL Output Clock Divider (FPLLODIV)     = Divide by 1
 PLL Multiplier (FPLLMUL)                       = Multiply by 20
 PLL Input Divider (FPLLIDIV)                   = Divide by 2
 Watchdog Timer Enable (FWDTEN)                 = Disabled
 Clock Switching and Monitor Selection (FCKSM)  = Clock Switch Enable,
                                                  Fail Safe Clock Monitoring Enable
 Peripheral Clock Divisor (FPBDIV)              = Divide by 2
 */
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF
#pragma config FCKSM = CSECME, FPBDIV = DIV_2

/*
 CLKO Output Signal Active on the OSCO Pin(OSCIOFNC)    = Enable
 Primary Oscillator Configuration(POSCMOD)              = External
 Secondary Oscillator Enable(FSOSCEN)                   = Enable
 Oscillator Selection Bits(FNOSC)                       = Primary osc with PLL
 */
#pragma config OSCIOFNC = ON, POSCMOD = HS, FSOSCEN = ON, FNOSC = PRIPLL

/* Disable USB PLL */
#pragma config UPLLEN   = OFF

/* USB PLL input devider */
#pragma config UPLLIDIV = DIV_2

#pragma config ICESEL = ICS_PGx2

SYS_STATUS      sysStatus;
SYS_MODULE_OBJ  usartModule;

// ****************************************************************************
// ****************************************************************************
// Section: System Initialization
// ****************************************************************************
// ****************************************************************************
/*******************************************************************************
  Function:
    void SYS_Initialize ( SYS_INIT_DATA *data )

  Summary:
    Initializes the board, services, drivers, application and other modules

  Description:
    This routine initializes the board, services, drivers, application and other
    modules as configured at build time.  In a bare-metal environment (where no
    OS is supported), this routine should be called almost immediately after
    entering the "main" routine.

  Precondition:
    The C-language run-time environment and stack must have been initialized.

  Parameters:
    data        - Pointer to the system initialzation data structure containing
                  pointers to the board, system service, and driver
                  initialization routines
  Returns:
    None.

  Example:
    <code>
    SYS_INT_Initialize(NULL);
    </code>

  Remarks:
    Basic System Initialization Sequence:

    1.  Initilize minimal board services and processor-specific items
        (enough to use the board to initialize drivers and services)
    2.  Initialize all supported system services
    3.  Initialize all supported modules
        (libraries, drivers, middleware, and application-level modules)
    4.  Initialize the main (static) application, if present.

    The order in which services and modules are initialized and started may be
    important.

    For a static system (a system not using the ISP's dynamic implementation
    of the initialization and "Tasks" services) this routine is implemented
    for the specific configuration of an application.
 */

// *****************************************************************************
// *****************************************************************************
// Section: Driver Initialization Data
// *****************************************************************************
// *****************************************************************************

/* Structure to hold the application's system data. */
APP_DRV_OBJECTS appDrvObjects;

// *****************************************************************************
/* USART Driver Initialization Data

  Summary:
    Defines the USART driver's initialization data

  Description
    This structure defines the USART driver's initialization data, passed into
    the driver's initialization routine ("DRV_USART_Initialize") by the
    system's ("SYS_Initialize") routine.

  Remarks:
    None.
*/
static DRV_USART_INIT drvUSARTInit =
{
    /* Set the baud rate */
    .baud = APP_UART_BAUDRATE,

    /* System module initialization */
    .moduleInit = {0},

    /* Identifies USART hardware module (PLIB-level) ID */
    .usartID = SYS_USART_ID,

     /* Operation Modes of the driver */
    .mode = DRV_USART_OPERATION_MODE_NORMAL,

    /* Flags for the usart initialization */
    .flags = DRV_USART_INIT_FLAG_NONE,

    /* Baud Rate value to be used, if not using auto baud */
    .brgClock = SYS_CLK_FREQUENCY,

    /* Control the line control configuration */
    .lineControl = DRV_USART_LINE_CONTROL_8NONE1,

    /* Operation mode initialization data */
    .moduleInit.value = SYS_MODULE_POWER_RUN_FULL,

    /* Handshake Mode */
    .handshake = DRV_USART_HANDSHAKE_NONE,

    /* Interrupt Source for TX Interrupt */
    .interruptTransmit = INT_SOURCE_USART_1_TRANSMIT,

    /* Interrupt Source for RX Interrupt */
    .interruptReceive = INT_SOURCE_USART_1_RECEIVE,

    /* Interrupt Source for Error Interrupt */
    .interruptError = INT_SOURCE_USART_1_ERROR,

    /* Receive Queue length */
    .queueSizeReceive          = 10,

    /* Transmit Queue length */
    .queueSizeTransmit         = 10
};




void SYS_Initialize ( void * data )
{
    /* Configure the hardware for maximum performance. */

    SYSTEMConfigPerformance(80000000);
    /* Initialize the BSP */
     BSP_Initialize( );
   /* Initialize the Application */
    APP_Initialize ();
    /* Initializethe interrupt system  */
    SYS_INT_Initialize();

    /* set priority for USART interrupt source */
    SYS_INT_VectorPrioritySet(INT_VECTOR_UART1, INT_PRIORITY_LEVEL3);

    /* set sub-priority for USART interrupt source */
    SYS_INT_VectorSubprioritySet(INT_VECTOR_UART1, INT_SUBPRIORITY_LEVEL3);

     /* set priority for Timer 5 interrupt source */
    /* Same as configMAX_SYSCALL_INTERRUPT_PRIORITY */
    SYS_INT_VectorPrioritySet(INT_VECTOR_T5, INT_PRIORITY_LEVEL3);
    
    /* set sub-priority for Timer 5 interrupt source */
    SYS_INT_VectorSubprioritySet(INT_VECTOR_T5, INT_SUBPRIORITY_LEVEL3);


//    /* Inialize the system */
//    appDrvObjects.drvUSARTObject = DRV_USART_Initialize(SYS_USART_DRIVER_INDEX,
//            (SYS_MODULE_INIT *)&drvUSARTInit );

    /* Inialize the system */
    usartModule = DRV_USART_Initialize(SYS_USART_DRIVER_INDEX,
                                      (SYS_MODULE_INIT *)&drvUSARTInit);
    /* Check the usart status */
    sysStatus = DRV_USART_Status(usartModule);

    IMU_Init();
    MOTOR_Initialize();


        /* Enable CN1 & Enable the global change notice module */
//    PLIB_PORTS_PinChangeNoticeEnable(PORTS_ID_0, CN15);
//    PLIB_PORTS_ChangeNoticeEnable(PORTS_ID_0);

    /* Enable the change notice interrupt source, set its priority level to 2,
       set its subpriority level to 0 */
    PLIB_INT_SourceEnable(INT_ID_0, INT_SOURCE_EXTERNAL_4);
    PLIB_INT_VectorPrioritySet(INT_ID_0, INT_VECTOR_INT4, INT_PRIORITY_LEVEL2);
    PLIB_INT_VectorSubPrioritySet(INT_ID_0, INT_VECTOR_INT4, INT_SUBPRIORITY_LEVEL0);

    /* Enable multi-vectored interrupts, enable the generation of interrupts to the CPU */
    PLIB_INT_MultiVectorSelect(INT_ID_0);
    PLIB_INT_Enable(INT_ID_0);


    PLIB_PORTS_PinModeSelect(PORTS_ID_0, PORTS_ANALOG_PIN_0, PORTS_PIN_MODE_ANALOG);
                /* ADC setup - ouput in integer format, trigger mode auto, enable autosample */
            PLIB_ADC_ResultFormatSelect(ADC_ID_1, ADC_RESULT_FORMAT_INTEGER_16BIT);
            PLIB_ADC_SamplingModeSelect(ADC_ID_1, ADC_SAMPLING_MODE_MUXA);
            PLIB_ADC_ConversionTriggerSourceSelect(ADC_ID_1, ADC_CONVERSION_TRIGGER_INTERNAL_COUNT);
            PLIB_ADC_VoltageReferenceSelect(ADC_ID_1, ADC_REFERENCE_VDD_TO_AVSS );
            PLIB_ADC_SampleAcqusitionTimeSet(ADC_ID_1, 0x01);
            PLIB_ADC_ConversionClockSet(ADC_ID_1, SYS_CLK_FREQUENCY, 1);

            /* Connect AN2 as positive input, Vref- as negative input */
            PLIB_ADC_MuxChannel0InputPositiveSelect(ADC_ID_1, ADC_MUX_A, ADC_INPUT_POSITIVE_AN0);
            PLIB_ADC_MuxChannel0InputNegativeSelect(ADC_ID_1, ADC_MUX_A, ADC_INPUT_NEGATIVE_VREF_MINUS);

            /* Enable the ADC module */
            PLIB_ADC_Enable(ADC_ID_1);

            PLIB_ADC_SamplingStart(ADC_ID_1);
}

/*******************************************************************************/
/*******************************************************************************
 End of File
*/
