#include "app.h"
#include "util.h"

bool isSerialInit = false;
bool keyPress;
DRV_HANDLE usartHandle;
DRV_HANDLE usartBufferHandle;
DRV_HANDLE usartReadBufferHandle;
DRV_USART_CLIENT_STATUS usartStatus;
char readBuffer[10];
char writeBuffer[20];

void APP_BufferEventHandler(DRV_USART_BUFFER_EVENT buffEvent,
                            DRV_USART_BUFFER_HANDLE hBufferEvent,
                            uintptr_t context )
{
    switch(buffEvent)
    {
        /* Buffer event is completed successfully */
        case DRV_USART_BUFFER_EVENT_COMPLETE:
        {
            keyPress = false;
            switch (readBuffer[0])
            {
                case 'q': kp += 0.001; keyPress = true;
                break;
                case 'a': kp -= 0.001; keyPress = true;
                break;
                case 'w': ki += 0.001; keyPress = true;
                break;
                case 's': ki -= 0.001; keyPress = true;
                break;
                case 'e': kd += 0.001; keyPress = true;
                break;
                case 'd': kd -= 0.001; keyPress = true;
                break;
            }
            readBuffer[0] = 0;
            if ( keyPress ) {
                sprintf ( writeBuffer, "%6.5f, %6.5f, %6.5f \r\n", kp, ki, kd );
                serialPrint ( writeBuffer );
            }

        }
    }
}

void serialInit()
{
        usartHandle = DRV_USART_Open(SYS_USART_DRIVER_INDEX,
                ( DRV_IO_INTENT_READWRITE | DRV_IO_INTENT_NONBLOCKING ));
        isSerialInit = true;

        DRV_USART_BufferEventHandlerSet(usartHandle, APP_BufferEventHandler, 0);

        /* Read data */
//        DRV_USART_BufferAddRead( usartHandle,
//                                 &(usartReadBufferHandle),
//                                 readBuffer, 1);
}

void serialPrint ( char * buffer )
{
    static uint32_t bufferSize;

    // Write data to serial
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
//    DRV_USART_BufferAddRead( usartHandle,
//                         &(usartReadBufferHandle),
//                         readBuffer, 1);
}


