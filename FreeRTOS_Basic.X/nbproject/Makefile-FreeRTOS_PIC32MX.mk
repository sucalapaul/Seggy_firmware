#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-FreeRTOS_PIC32MX.mk)" "nbproject/Makefile-local-FreeRTOS_PIC32MX.mk"
include nbproject/Makefile-local-FreeRTOS_PIC32MX.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=FreeRTOS_PIC32MX
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mx_sk/system_init.c ../src/system_config/pic32mx_sk/system_interrupt.S ../src/system_config/pic32mx_sk/system_tasks.c ../src/main.c ../src/app.c ../src/app_bsp/pic32mx_sk/bsp_sys_init.c ../src/app_bsp/pic32mx_sk/config_performance.c D:/microchip/harmony/v0_70_01b/framework/peripheral/int/src/plib_int_pic32.c D:/microchip/harmony/v0_70_01b/framework/system/int/src/sys_int_pic32.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/croutine.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/list.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/queue.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/tasks.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/timers.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_2.c D:/microchip/harmony/v0_70_01b/framework/driver/usart/src/dynamic/drv_usart_dynamic.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/351744058/system_init.o ${OBJECTDIR}/_ext/351744058/system_interrupt.o ${OBJECTDIR}/_ext/351744058/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o ${OBJECTDIR}/_ext/417613685/config_performance.o ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o ${OBJECTDIR}/_ext/562674888/port.o ${OBJECTDIR}/_ext/562674888/port_asm.o ${OBJECTDIR}/_ext/1456250450/croutine.o ${OBJECTDIR}/_ext/1456250450/list.o ${OBJECTDIR}/_ext/1456250450/queue.o ${OBJECTDIR}/_ext/1456250450/tasks.o ${OBJECTDIR}/_ext/1456250450/timers.o ${OBJECTDIR}/_ext/567226613/heap_2.o ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/351744058/system_init.o.d ${OBJECTDIR}/_ext/351744058/system_interrupt.o.d ${OBJECTDIR}/_ext/351744058/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o.d ${OBJECTDIR}/_ext/417613685/config_performance.o.d ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o.d ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o.d ${OBJECTDIR}/_ext/562674888/port.o.d ${OBJECTDIR}/_ext/562674888/port_asm.o.d ${OBJECTDIR}/_ext/1456250450/croutine.o.d ${OBJECTDIR}/_ext/1456250450/list.o.d ${OBJECTDIR}/_ext/1456250450/queue.o.d ${OBJECTDIR}/_ext/1456250450/tasks.o.d ${OBJECTDIR}/_ext/1456250450/timers.o.d ${OBJECTDIR}/_ext/567226613/heap_2.o.d ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/351744058/system_init.o ${OBJECTDIR}/_ext/351744058/system_interrupt.o ${OBJECTDIR}/_ext/351744058/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o ${OBJECTDIR}/_ext/417613685/config_performance.o ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o ${OBJECTDIR}/_ext/562674888/port.o ${OBJECTDIR}/_ext/562674888/port_asm.o ${OBJECTDIR}/_ext/1456250450/croutine.o ${OBJECTDIR}/_ext/1456250450/list.o ${OBJECTDIR}/_ext/1456250450/queue.o ${OBJECTDIR}/_ext/1456250450/tasks.o ${OBJECTDIR}/_ext/1456250450/timers.o ${OBJECTDIR}/_ext/567226613/heap_2.o ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o

# Source Files
SOURCEFILES=../src/system_config/pic32mx_sk/system_init.c ../src/system_config/pic32mx_sk/system_interrupt.S ../src/system_config/pic32mx_sk/system_tasks.c ../src/main.c ../src/app.c ../src/app_bsp/pic32mx_sk/bsp_sys_init.c ../src/app_bsp/pic32mx_sk/config_performance.c D:/microchip/harmony/v0_70_01b/framework/peripheral/int/src/plib_int_pic32.c D:/microchip/harmony/v0_70_01b/framework/system/int/src/sys_int_pic32.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/croutine.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/list.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/queue.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/tasks.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/timers.c D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_2.c D:/microchip/harmony/v0_70_01b/framework/driver/usart/src/dynamic/drv_usart_dynamic.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-FreeRTOS_PIC32MX.mk dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/351744058/system_interrupt.o: ../src/system_config/pic32mx_sk/system_interrupt.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/351744058 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_interrupt.o 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_interrupt.o.ok ${OBJECTDIR}/_ext/351744058/system_interrupt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/351744058/system_interrupt.o.d" "${OBJECTDIR}/_ext/351744058/system_interrupt.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../src/system_config/pic32mx_sk" -MMD -MF "${OBJECTDIR}/_ext/351744058/system_interrupt.o.d"  -o ${OBJECTDIR}/_ext/351744058/system_interrupt.o ../src/system_config/pic32mx_sk/system_interrupt.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/351744058/system_interrupt.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX"
	
${OBJECTDIR}/_ext/562674888/port_asm.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/562674888 
	@${RM} ${OBJECTDIR}/_ext/562674888/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/562674888/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/562674888/port_asm.o.ok ${OBJECTDIR}/_ext/562674888/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/562674888/port_asm.o.d" "${OBJECTDIR}/_ext/562674888/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../src/system_config/pic32mx_sk" -MMD -MF "${OBJECTDIR}/_ext/562674888/port_asm.o.d"  -o ${OBJECTDIR}/_ext/562674888/port_asm.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/562674888/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX"
	
else
${OBJECTDIR}/_ext/351744058/system_interrupt.o: ../src/system_config/pic32mx_sk/system_interrupt.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/351744058 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_interrupt.o 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_interrupt.o.ok ${OBJECTDIR}/_ext/351744058/system_interrupt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/351744058/system_interrupt.o.d" "${OBJECTDIR}/_ext/351744058/system_interrupt.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../src/system_config/pic32mx_sk" -MMD -MF "${OBJECTDIR}/_ext/351744058/system_interrupt.o.d"  -o ${OBJECTDIR}/_ext/351744058/system_interrupt.o ../src/system_config/pic32mx_sk/system_interrupt.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/351744058/system_interrupt.o.asm.d",--gdwarf-2 -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX"
	
${OBJECTDIR}/_ext/562674888/port_asm.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/562674888 
	@${RM} ${OBJECTDIR}/_ext/562674888/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/562674888/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/562674888/port_asm.o.ok ${OBJECTDIR}/_ext/562674888/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/562674888/port_asm.o.d" "${OBJECTDIR}/_ext/562674888/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../src/system_config/pic32mx_sk" -MMD -MF "${OBJECTDIR}/_ext/562674888/port_asm.o.d"  -o ${OBJECTDIR}/_ext/562674888/port_asm.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/562674888/port_asm.o.asm.d",--gdwarf-2 -I"../src" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/351744058/system_init.o: ../src/system_config/pic32mx_sk/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/351744058 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/351744058/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/351744058/system_init.o.d" -o ${OBJECTDIR}/_ext/351744058/system_init.o ../src/system_config/pic32mx_sk/system_init.c   
	
${OBJECTDIR}/_ext/351744058/system_tasks.o: ../src/system_config/pic32mx_sk/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/351744058 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/351744058/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/351744058/system_tasks.o.d" -o ${OBJECTDIR}/_ext/351744058/system_tasks.o ../src/system_config/pic32mx_sk/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/417613685/bsp_sys_init.o: ../src/app_bsp/pic32mx_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/417613685 
	@${RM} ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417613685/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/417613685/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o ../src/app_bsp/pic32mx_sk/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/417613685/config_performance.o: ../src/app_bsp/pic32mx_sk/config_performance.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/417613685 
	@${RM} ${OBJECTDIR}/_ext/417613685/config_performance.o.d 
	@${RM} ${OBJECTDIR}/_ext/417613685/config_performance.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417613685/config_performance.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/417613685/config_performance.o.d" -o ${OBJECTDIR}/_ext/417613685/config_performance.o ../src/app_bsp/pic32mx_sk/config_performance.c   
	
${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o: D:/microchip/harmony/v0_70_01b/framework/peripheral/int/src/plib_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1257749628 
	@${RM} ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o D:/microchip/harmony/v0_70_01b/framework/peripheral/int/src/plib_int_pic32.c   
	
${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o: D:/microchip/harmony/v0_70_01b/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1359244983 
	@${RM} ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o D:/microchip/harmony/v0_70_01b/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/562674888/port.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/562674888 
	@${RM} ${OBJECTDIR}/_ext/562674888/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/562674888/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/562674888/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/562674888/port.o.d" -o ${OBJECTDIR}/_ext/562674888/port.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/_ext/1456250450/croutine.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/croutine.o.d" -o ${OBJECTDIR}/_ext/1456250450/croutine.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/croutine.c   
	
${OBJECTDIR}/_ext/1456250450/list.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/list.o.d" -o ${OBJECTDIR}/_ext/1456250450/list.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/list.c   
	
${OBJECTDIR}/_ext/1456250450/queue.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/queue.o.d" -o ${OBJECTDIR}/_ext/1456250450/queue.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/queue.c   
	
${OBJECTDIR}/_ext/1456250450/tasks.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/tasks.o.d" -o ${OBJECTDIR}/_ext/1456250450/tasks.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/tasks.c   
	
${OBJECTDIR}/_ext/1456250450/timers.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/timers.o.d" -o ${OBJECTDIR}/_ext/1456250450/timers.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/timers.c   
	
${OBJECTDIR}/_ext/567226613/heap_2.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/567226613 
	@${RM} ${OBJECTDIR}/_ext/567226613/heap_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/567226613/heap_2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567226613/heap_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/567226613/heap_2.o.d" -o ${OBJECTDIR}/_ext/567226613/heap_2.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_2.c   
	
${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o: D:/microchip/harmony/v0_70_01b/framework/driver/usart/src/dynamic/drv_usart_dynamic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/741549046 
	@${RM} ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o.d 
	@${RM} ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o.d" -o ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o D:/microchip/harmony/v0_70_01b/framework/driver/usart/src/dynamic/drv_usart_dynamic.c   
	
else
${OBJECTDIR}/_ext/351744058/system_init.o: ../src/system_config/pic32mx_sk/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/351744058 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/351744058/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/351744058/system_init.o.d" -o ${OBJECTDIR}/_ext/351744058/system_init.o ../src/system_config/pic32mx_sk/system_init.c   
	
${OBJECTDIR}/_ext/351744058/system_tasks.o: ../src/system_config/pic32mx_sk/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/351744058 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/351744058/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/351744058/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/351744058/system_tasks.o.d" -o ${OBJECTDIR}/_ext/351744058/system_tasks.o ../src/system_config/pic32mx_sk/system_tasks.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/417613685/bsp_sys_init.o: ../src/app_bsp/pic32mx_sk/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/417613685 
	@${RM} ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417613685/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/417613685/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/417613685/bsp_sys_init.o ../src/app_bsp/pic32mx_sk/bsp_sys_init.c   
	
${OBJECTDIR}/_ext/417613685/config_performance.o: ../src/app_bsp/pic32mx_sk/config_performance.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/417613685 
	@${RM} ${OBJECTDIR}/_ext/417613685/config_performance.o.d 
	@${RM} ${OBJECTDIR}/_ext/417613685/config_performance.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/417613685/config_performance.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/417613685/config_performance.o.d" -o ${OBJECTDIR}/_ext/417613685/config_performance.o ../src/app_bsp/pic32mx_sk/config_performance.c   
	
${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o: D:/microchip/harmony/v0_70_01b/framework/peripheral/int/src/plib_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1257749628 
	@${RM} ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1257749628/plib_int_pic32.o D:/microchip/harmony/v0_70_01b/framework/peripheral/int/src/plib_int_pic32.c   
	
${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o: D:/microchip/harmony/v0_70_01b/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1359244983 
	@${RM} ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1359244983/sys_int_pic32.o D:/microchip/harmony/v0_70_01b/framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/562674888/port.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/562674888 
	@${RM} ${OBJECTDIR}/_ext/562674888/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/562674888/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/562674888/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/562674888/port.o.d" -o ${OBJECTDIR}/_ext/562674888/port.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/_ext/1456250450/croutine.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/croutine.o.d" -o ${OBJECTDIR}/_ext/1456250450/croutine.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/croutine.c   
	
${OBJECTDIR}/_ext/1456250450/list.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/list.o.d" -o ${OBJECTDIR}/_ext/1456250450/list.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/list.c   
	
${OBJECTDIR}/_ext/1456250450/queue.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/queue.o.d" -o ${OBJECTDIR}/_ext/1456250450/queue.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/queue.c   
	
${OBJECTDIR}/_ext/1456250450/tasks.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/tasks.o.d" -o ${OBJECTDIR}/_ext/1456250450/tasks.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/tasks.c   
	
${OBJECTDIR}/_ext/1456250450/timers.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1456250450 
	@${RM} ${OBJECTDIR}/_ext/1456250450/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1456250450/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1456250450/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/1456250450/timers.o.d" -o ${OBJECTDIR}/_ext/1456250450/timers.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/timers.c   
	
${OBJECTDIR}/_ext/567226613/heap_2.o: D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/567226613 
	@${RM} ${OBJECTDIR}/_ext/567226613/heap_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/567226613/heap_2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567226613/heap_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/567226613/heap_2.o.d" -o ${OBJECTDIR}/_ext/567226613/heap_2.o D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_2.c   
	
${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o: D:/microchip/harmony/v0_70_01b/framework/driver/usart/src/dynamic/drv_usart_dynamic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/741549046 
	@${RM} ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o.d 
	@${RM} ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -I"D:/microchip/harmony/v0_70_01b/framework" -I"../src" -I"../src/system_config/pic32mx_sk" -I"../src/app_bsp/pic32mx_sk" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/include" -I"D:/microchip/harmony/v0_70_01b/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o.d" -o ${OBJECTDIR}/_ext/741549046/drv_usart_dynamic.o D:/microchip/harmony/v0_70_01b/framework/driver/usart/src/dynamic/drv_usart_dynamic.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_Basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/FreeRTOS_PIC32MX
	${RM} -r dist/FreeRTOS_PIC32MX

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
