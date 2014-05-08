#include "app.h"
#include "peripheral/tmr/plib_tmr.h"
#include "peripheral/oc/plib_oc.h"
#include "motor.h"

static int speed_right;
static int speed_left;

void MOTOR_Initialize ( )
{
    /* Setup Timer 2 - PBclk as the source, prescaler is 1:1 (PBclk / 1),
      enable 16bit counter mode, clear the counter, set the period to 2,000
      - 80MHz PBclk / 1 = 80MHz Timer 2 clock
      - Period is set to 4,000 so that the timer rolls over every 25us
      - 1/25us = 20KHz signal */
    PLIB_TMR_ClockSourceSelect(MOTOR_TIMER_ID, TMR_CLOCK_SOURCE_PERIPHERAL_CLOCK);
    PLIB_TMR_PrescaleSelect(MOTOR_TIMER_ID, TMR_PRESCALE_VALUE_1);
    PLIB_TMR_Mode16BitEnable(MOTOR_TIMER_ID);
    PLIB_TMR_Counter16BitClear(MOTOR_TIMER_ID);
    PLIB_TMR_Period16BitSet(MOTOR_TIMER_ID, MOTOR_MAX_PWM);

    /* Enable the OCMP modules */
    MOTOR_OC_Init ( MOTOR_RIGTH_FW_OC_ID, MOTOR_OC_TIMER_SOURCE );
    MOTOR_OC_Init ( MOTOR_RIGTH_BW_OC_ID, MOTOR_OC_TIMER_SOURCE );
    MOTOR_OC_Init ( MOTOR_LEFT_FW_OC_ID, MOTOR_OC_TIMER_SOURCE );
    MOTOR_OC_Init ( MOTOR_LEFT_BW_OC_ID, MOTOR_OC_TIMER_SOURCE );

    /* Start the timer */
    PLIB_TMR_Start(MOTOR_TIMER_ID);
}

void MOTOR_OC_Init ( OC_MODULE_ID module_id, OC_16BIT_TIMERS tmr )
{
   /* Setup OCMP 1 module - Use timer 2, output is an edge aligned signal,
      disable PWM faults, duty cycle and compare values will have 16-bit values,
      buffer value is set to 0, pulse width (duty cycle) value is set to 500
      - The PWM remains high until the timer reaches 500. The PWM then goes
      - low until the timer hits its period of 2000, rolling over to repeat
      - the process again. 500/2,000 = 25% Duty Cycle */
    PLIB_OC_TimerSelect(module_id, tmr);
    PLIB_OC_ModeSelect(module_id, OC_COMPARE_PWM_EDGE_ALIGNED_MODE);
    PLIB_OC_FaultInputSelect(module_id, OC_FAULT_DISABLE);
    PLIB_OC_BufferSizeSelect(module_id, OC_BUFFER_SIZE_16BIT);
    PLIB_OC_Buffer16BitSet(module_id, 0);
    PLIB_OC_PulseWidth16BitSet(module_id, 0);
    PLIB_OC_Enable(module_id);
}


void MOTOR_SetCommand( float direction, float speedf )
{
    if ( speedf > 1.0f )
    {
        speedf = 1.0f;
    }
    
    if ( speedf < -1.0f )
    {
        speedf = -1.0f;
    }

    speed_right = speedf * MOTOR_MAX_PWM;
    speed_left = speedf * MOTOR_MAX_PWM;

    
}
