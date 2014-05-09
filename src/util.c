#include "app.h"
#include "util.h"

bool isSerialInit = false;
DRV_HANDLE usartHandle;
DRV_HANDLE usartBufferHandle;
DRV_USART_CLIENT_STATUS usartStatus;

void serialPrint ( char * buffer )
{
    static uint32_t bufferSize;

    // Init srial port
    if ( !isSerialInit ) {
        usartHandle = DRV_USART_Open(SYS_USART_DRIVER_INDEX,
                DRV_IO_INTENT_READWRITE);
        isSerialInit = true;
    }

    bufferSize = strlen( buffer );

    usartStatus = DRV_USART_ClientStatus( usartHandle );
    if ( usartStatus == DRV_USART_CLIENT_STATUS_READY )
    {
        /* Submit buffer to USART */
        DRV_USART_BufferAddWrite( usartHandle,
                              &(usartBufferHandle),
                              buffer, bufferSize );

        if ( usartBufferHandle != DRV_HANDLE_INVALID )
        {
            /* Buffer is accepted. Driver will transmit. */
            //appData.state = APP_WAIT_FOR_DONE;
        }
        else
        {
            //appData.state = APP_ERROR;
        }
    }
}