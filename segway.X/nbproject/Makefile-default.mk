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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=D:/Dropbox/segway/Firmware/segway.X/system_config.c D:/Dropbox/segway/Firmware/segway.X/system_init.c D:/Dropbox/segway/Firmware/segway.X/system_int.c D:/Dropbox/segway/Firmware/segway.X/system_tasks.c D:/Dropbox/segway/Firmware/segway.X/main.c D:/Dropbox/segway/Firmware/segway.X/app.c D:/microchip/harmony/v0_70_01b\/framework/driver/tmr/src/dynamic/drv_tmr_dynamic.c D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk.c D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk_pic32.c D:/microchip/harmony/v0_70_01b\framework/system/common/sys_buffer.c D:/microchip/harmony/v0_70_01b\framework/system/common/sys_queue.c D:/microchip/harmony/v0_70_01b\framework/system/ports/src/sys_ports.c D:/microchip/harmony/v0_70_01b\framework/system/tmr/src/sys_tmr.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1769027071/system_config.o ${OBJECTDIR}/_ext/1769027071/system_init.o ${OBJECTDIR}/_ext/1769027071/system_int.o ${OBJECTDIR}/_ext/1769027071/system_tasks.o ${OBJECTDIR}/_ext/1769027071/main.o ${OBJECTDIR}/_ext/1769027071/app.o ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o ${OBJECTDIR}/_ext/1278480279/sys_clk.o ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o ${OBJECTDIR}/_ext/94416437/sys_buffer.o ${OBJECTDIR}/_ext/94416437/sys_queue.o ${OBJECTDIR}/_ext/1233680761/sys_ports.o ${OBJECTDIR}/_ext/778732530/sys_tmr.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1769027071/system_config.o.d ${OBJECTDIR}/_ext/1769027071/system_init.o.d ${OBJECTDIR}/_ext/1769027071/system_int.o.d ${OBJECTDIR}/_ext/1769027071/system_tasks.o.d ${OBJECTDIR}/_ext/1769027071/main.o.d ${OBJECTDIR}/_ext/1769027071/app.o.d ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o.d ${OBJECTDIR}/_ext/1278480279/sys_clk.o.d ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o.d ${OBJECTDIR}/_ext/94416437/sys_buffer.o.d ${OBJECTDIR}/_ext/94416437/sys_queue.o.d ${OBJECTDIR}/_ext/1233680761/sys_ports.o.d ${OBJECTDIR}/_ext/778732530/sys_tmr.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1769027071/system_config.o ${OBJECTDIR}/_ext/1769027071/system_init.o ${OBJECTDIR}/_ext/1769027071/system_int.o ${OBJECTDIR}/_ext/1769027071/system_tasks.o ${OBJECTDIR}/_ext/1769027071/main.o ${OBJECTDIR}/_ext/1769027071/app.o ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o ${OBJECTDIR}/_ext/1278480279/sys_clk.o ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o ${OBJECTDIR}/_ext/94416437/sys_buffer.o ${OBJECTDIR}/_ext/94416437/sys_queue.o ${OBJECTDIR}/_ext/1233680761/sys_ports.o ${OBJECTDIR}/_ext/778732530/sys_tmr.o

# Source Files
SOURCEFILES=D:/Dropbox/segway/Firmware/segway.X/system_config.c D:/Dropbox/segway/Firmware/segway.X/system_init.c D:/Dropbox/segway/Firmware/segway.X/system_int.c D:/Dropbox/segway/Firmware/segway.X/system_tasks.c D:/Dropbox/segway/Firmware/segway.X/main.c D:/Dropbox/segway/Firmware/segway.X/app.c D:/microchip/harmony/v0_70_01b\/framework/driver/tmr/src/dynamic/drv_tmr_dynamic.c D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk.c D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk_pic32.c D:/microchip/harmony/v0_70_01b\framework/system/common/sys_buffer.c D:/microchip/harmony/v0_70_01b\framework/system/common/sys_queue.c D:/microchip/harmony/v0_70_01b\framework/system/ports/src/sys_ports.c D:/microchip/harmony/v0_70_01b\framework/system/tmr/src/sys_tmr.c


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1769027071/system_config.o: D:/Dropbox/segway/Firmware/segway.X/system_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_config.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_config.o D:/Dropbox/segway/Firmware/segway.X/system_config.c   
	
${OBJECTDIR}/_ext/1769027071/system_init.o: D:/Dropbox/segway/Firmware/segway.X/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_init.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_init.o D:/Dropbox/segway/Firmware/segway.X/system_init.c   
	
${OBJECTDIR}/_ext/1769027071/system_int.o: D:/Dropbox/segway/Firmware/segway.X/system_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_int.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_int.o D:/Dropbox/segway/Firmware/segway.X/system_int.c   
	
${OBJECTDIR}/_ext/1769027071/system_tasks.o: D:/Dropbox/segway/Firmware/segway.X/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_tasks.o D:/Dropbox/segway/Firmware/segway.X/system_tasks.c   
	
${OBJECTDIR}/_ext/1769027071/main.o: D:/Dropbox/segway/Firmware/segway.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/main.o.d" -o ${OBJECTDIR}/_ext/1769027071/main.o D:/Dropbox/segway/Firmware/segway.X/main.c   
	
${OBJECTDIR}/_ext/1769027071/app.o: D:/Dropbox/segway/Firmware/segway.X/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/app.o.d" -o ${OBJECTDIR}/_ext/1769027071/app.o D:/Dropbox/segway/Firmware/segway.X/app.c   
	
${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o: D:/microchip/harmony/v0_70_01b\/framework/driver/tmr/src/dynamic/drv_tmr_dynamic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/565377960 
	@${RM} ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o.d 
	@${RM} ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o.d" -o ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o D:/microchip/harmony/v0_70_01b\/framework/driver/tmr/src/dynamic/drv_tmr_dynamic.c   
	
${OBJECTDIR}/_ext/1278480279/sys_clk.o: D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1278480279 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1278480279/sys_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1278480279/sys_clk.o.d" -o ${OBJECTDIR}/_ext/1278480279/sys_clk.o D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk.c   
	
${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o: D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1278480279 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o.d" -o ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk_pic32.c   
	
${OBJECTDIR}/_ext/94416437/sys_buffer.o: D:/microchip/harmony/v0_70_01b\framework/system/common/sys_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/94416437 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/94416437/sys_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/94416437/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/94416437/sys_buffer.o D:/microchip/harmony/v0_70_01b\framework/system/common/sys_buffer.c   
	
${OBJECTDIR}/_ext/94416437/sys_queue.o: D:/microchip/harmony/v0_70_01b\framework/system/common/sys_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/94416437 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/94416437/sys_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/94416437/sys_queue.o.d" -o ${OBJECTDIR}/_ext/94416437/sys_queue.o D:/microchip/harmony/v0_70_01b\framework/system/common/sys_queue.c   
	
${OBJECTDIR}/_ext/1233680761/sys_ports.o: D:/microchip/harmony/v0_70_01b\framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1233680761 
	@${RM} ${OBJECTDIR}/_ext/1233680761/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1233680761/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1233680761/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1233680761/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1233680761/sys_ports.o D:/microchip/harmony/v0_70_01b\framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/778732530/sys_tmr.o: D:/microchip/harmony/v0_70_01b\framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/778732530 
	@${RM} ${OBJECTDIR}/_ext/778732530/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/778732530/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/778732530/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/778732530/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/778732530/sys_tmr.o D:/microchip/harmony/v0_70_01b\framework/system/tmr/src/sys_tmr.c   
	
else
${OBJECTDIR}/_ext/1769027071/system_config.o: D:/Dropbox/segway/Firmware/segway.X/system_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_config.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_config.o D:/Dropbox/segway/Firmware/segway.X/system_config.c   
	
${OBJECTDIR}/_ext/1769027071/system_init.o: D:/Dropbox/segway/Firmware/segway.X/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_init.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_init.o D:/Dropbox/segway/Firmware/segway.X/system_init.c   
	
${OBJECTDIR}/_ext/1769027071/system_int.o: D:/Dropbox/segway/Firmware/segway.X/system_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_int.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_int.o D:/Dropbox/segway/Firmware/segway.X/system_int.c   
	
${OBJECTDIR}/_ext/1769027071/system_tasks.o: D:/Dropbox/segway/Firmware/segway.X/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1769027071/system_tasks.o D:/Dropbox/segway/Firmware/segway.X/system_tasks.c   
	
${OBJECTDIR}/_ext/1769027071/main.o: D:/Dropbox/segway/Firmware/segway.X/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/main.o.d" -o ${OBJECTDIR}/_ext/1769027071/main.o D:/Dropbox/segway/Firmware/segway.X/main.c   
	
${OBJECTDIR}/_ext/1769027071/app.o: D:/Dropbox/segway/Firmware/segway.X/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1769027071 
	@${RM} ${OBJECTDIR}/_ext/1769027071/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769027071/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1769027071/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1769027071/app.o.d" -o ${OBJECTDIR}/_ext/1769027071/app.o D:/Dropbox/segway/Firmware/segway.X/app.c   
	
${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o: D:/microchip/harmony/v0_70_01b\/framework/driver/tmr/src/dynamic/drv_tmr_dynamic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/565377960 
	@${RM} ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o.d 
	@${RM} ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o.d" -o ${OBJECTDIR}/_ext/565377960/drv_tmr_dynamic.o D:/microchip/harmony/v0_70_01b\/framework/driver/tmr/src/dynamic/drv_tmr_dynamic.c   
	
${OBJECTDIR}/_ext/1278480279/sys_clk.o: D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1278480279 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1278480279/sys_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1278480279/sys_clk.o.d" -o ${OBJECTDIR}/_ext/1278480279/sys_clk.o D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk.c   
	
${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o: D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1278480279 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o.d" -o ${OBJECTDIR}/_ext/1278480279/sys_clk_pic32.o D:/microchip/harmony/v0_70_01b\framework/system/clk/src/sys_clk_pic32.c   
	
${OBJECTDIR}/_ext/94416437/sys_buffer.o: D:/microchip/harmony/v0_70_01b\framework/system/common/sys_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/94416437 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/94416437/sys_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/94416437/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/94416437/sys_buffer.o D:/microchip/harmony/v0_70_01b\framework/system/common/sys_buffer.c   
	
${OBJECTDIR}/_ext/94416437/sys_queue.o: D:/microchip/harmony/v0_70_01b\framework/system/common/sys_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/94416437 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/94416437/sys_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/94416437/sys_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/94416437/sys_queue.o.d" -o ${OBJECTDIR}/_ext/94416437/sys_queue.o D:/microchip/harmony/v0_70_01b\framework/system/common/sys_queue.c   
	
${OBJECTDIR}/_ext/1233680761/sys_ports.o: D:/microchip/harmony/v0_70_01b\framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1233680761 
	@${RM} ${OBJECTDIR}/_ext/1233680761/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1233680761/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1233680761/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/1233680761/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1233680761/sys_ports.o D:/microchip/harmony/v0_70_01b\framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/778732530/sys_tmr.o: D:/microchip/harmony/v0_70_01b\framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/778732530 
	@${RM} ${OBJECTDIR}/_ext/778732530/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/778732530/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/778732530/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DINLINE_API="static inline" -DINLINE="static inline" -DUSE_CRYPTO_HW -I"." -I"../../../../microchip/harmony/v0_70_01b/framework" -I"../../../../microchip/harmony/v0_70_01b/framework/system" -MMD -MF "${OBJECTDIR}/_ext/778732530/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/778732530/sys_tmr.o D:/microchip/harmony/v0_70_01b\framework/system/tmr/src/sys_tmr.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  D:/microchip/harmony/v0_70_01b\\/bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    D:\microchip\harmony\v0_70_01b\\bin\framework\peripheral\PIC32MX795F512L_peripherals.a       -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  D:/microchip/harmony/v0_70_01b\\/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    D:\microchip\harmony\v0_70_01b\\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/segway.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
