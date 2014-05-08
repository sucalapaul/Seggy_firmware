/* 
 * File:   motor.h
 * Author: Dexter
 *
 * Created on May 8, 2014, 9:00 PM
 */

#ifndef MOTOR_H
#define	MOTOR_H

#ifdef	__cplusplus
extern "C" {
#endif


typedef struct
{
    float speed;
    float direction;
} MOTORS_COMMAND;

void MOTOR_Initialize ();
void MOTOR_SetCommand( float direction, float speed );

#ifdef	__cplusplus
}
#endif

#endif	/* MOTOR_H */

