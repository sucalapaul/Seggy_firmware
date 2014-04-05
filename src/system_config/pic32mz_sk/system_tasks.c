/*******************************************************************************
 System Tasks File

  File Name:
    sys_tasks.c

  Summary:
    System tasks File.

 Important :
 This demo uses an evaluation license which is meant for demonstration only and
 that customers desiring development and production on OPENRTOS must procure a
 suitable license.

 Description:
    This file will contain any source code necessary to maintain various tasks
    in the system.
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

/*******************************************************************************
  Function:
    void SYS_Tasks ( void )

  Summary:
    Calls all module-specific "tasks" routines to maintain module state

  Description:
    This routine calls all module-specific "tasks" routines to maintain module 
    state.

  Precondition:
    SYS_Initialize has been called

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    int main ( void )
    {
        SYS_Initialize(&initData);

        while (true)
        {
            SYS_Tasks();
        }
    }
    </code>

  Remarks:
    When not using the dynamic system "Tasks" service, this routine must be
    implemented by the application's system configuration (in the application's
    configuration-specific "sys_tasks.c" file).
 */

void SYS_Tasks ( void )
{

    /* Start the tasks and timer running. */
    vTaskStartScheduler();
    
    /* If all is well, the scheduler will now be running, and the following
    line will never be reached.  If the following line does execute, then
    there was insufficient FreeRTOS heap memory available for the idle and/or
    timer tasks	to be created.  See the memory management section on the
    FreeRTOS web site for more details. */
}


/*******************************************************************************
 End of File
*/

