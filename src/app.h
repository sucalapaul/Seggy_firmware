/* 
 * File:   app.h
 * Author: PaulStelian
 *
 * Created on 06 aprilie 2014, 02:18
 */

#ifndef APP_H
#define	APP_H

#ifdef	__cplusplus
extern "C" {
#endif


#include "system_config.h"
#include "system_definitions.h"
#include "system/system.h"
#include "system/ports/sys_ports.h"
#include "adxl362/adxl362_io.h"
#include "driver/usart/drv_usart.h"
//#include "driver/usart/src/drv_usart_local.h"

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************
extern SYS_MODULE_OBJ    usartModule;
    
// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* Application current state */
    //APP_STATES state;

    /* USART buffer for display */
    char buffer[APP_BUFFER_SIZE];

    /* Data Size in the USART Buffer */
    uint32_t bufferSize;

    /* Structure used to transfer buffer via USART driver. */
    //DRV_USART_IO_BUFFER bufferObject;

    /* USART driver handle */
    DRV_HANDLE usartHandle;

    /* Handle returned by USART for buffer submitted */
    DRV_HANDLE usartBufferHandle;

    /*States to control the application state machine and configuring the driver*/
    //APP_DEMO_STATES demoState;

} APP_DATA;

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Summary:
     Sample application's initialization routine

  Description:
    This routine initializes sample application's state machine.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void APP_Initialize ( void );


/*******************************************************************************
  Function:
    void APP_Tasks ( void )

  Summary:
    Demo application tasks function

  Description:
    This routine is the demo application's tasks function.  It
    defines the application's state machine and core logic.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void APP_Tasks ( void );


#ifdef	__cplusplus
}
#endif

#endif	/* APP_H */

