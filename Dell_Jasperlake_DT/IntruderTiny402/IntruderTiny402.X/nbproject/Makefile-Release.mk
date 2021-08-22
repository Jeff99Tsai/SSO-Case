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
ifeq "$(wildcard nbproject/Makefile-local-Release.mk)" "nbproject/Makefile-local-Release.mk"
include nbproject/Makefile-local-Release.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Release
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../examples/src/i2c_slave_example.c ../src/bod.c ../src/clkctrl.c ../src/cpuint.c ../src/driver_init.c ../src/i2c_slave.c ../src/protected_io.S ../src/slpctrl.c ../device_config.c ../src/tca.c ../atmel_start.c ../driver_isr.c ../main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o ${OBJECTDIR}/_ext/1360937237/bod.o ${OBJECTDIR}/_ext/1360937237/clkctrl.o ${OBJECTDIR}/_ext/1360937237/cpuint.o ${OBJECTDIR}/_ext/1360937237/driver_init.o ${OBJECTDIR}/_ext/1360937237/i2c_slave.o ${OBJECTDIR}/_ext/1360937237/protected_io.o ${OBJECTDIR}/_ext/1360937237/slpctrl.o ${OBJECTDIR}/_ext/1472/device_config.o ${OBJECTDIR}/_ext/1360937237/tca.o ${OBJECTDIR}/_ext/1472/atmel_start.o ${OBJECTDIR}/_ext/1472/driver_isr.o ${OBJECTDIR}/_ext/1472/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o.d ${OBJECTDIR}/_ext/1360937237/bod.o.d ${OBJECTDIR}/_ext/1360937237/clkctrl.o.d ${OBJECTDIR}/_ext/1360937237/cpuint.o.d ${OBJECTDIR}/_ext/1360937237/driver_init.o.d ${OBJECTDIR}/_ext/1360937237/i2c_slave.o.d ${OBJECTDIR}/_ext/1360937237/protected_io.o.d ${OBJECTDIR}/_ext/1360937237/slpctrl.o.d ${OBJECTDIR}/_ext/1472/device_config.o.d ${OBJECTDIR}/_ext/1360937237/tca.o.d ${OBJECTDIR}/_ext/1472/atmel_start.o.d ${OBJECTDIR}/_ext/1472/driver_isr.o.d ${OBJECTDIR}/_ext/1472/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o ${OBJECTDIR}/_ext/1360937237/bod.o ${OBJECTDIR}/_ext/1360937237/clkctrl.o ${OBJECTDIR}/_ext/1360937237/cpuint.o ${OBJECTDIR}/_ext/1360937237/driver_init.o ${OBJECTDIR}/_ext/1360937237/i2c_slave.o ${OBJECTDIR}/_ext/1360937237/protected_io.o ${OBJECTDIR}/_ext/1360937237/slpctrl.o ${OBJECTDIR}/_ext/1472/device_config.o ${OBJECTDIR}/_ext/1360937237/tca.o ${OBJECTDIR}/_ext/1472/atmel_start.o ${OBJECTDIR}/_ext/1472/driver_isr.o ${OBJECTDIR}/_ext/1472/main.o

# Source Files
SOURCEFILES=../examples/src/i2c_slave_example.c ../src/bod.c ../src/clkctrl.c ../src/cpuint.c ../src/driver_init.c ../src/i2c_slave.c ../src/protected_io.S ../src/slpctrl.c ../device_config.c ../src/tca.c ../atmel_start.c ../driver_isr.c ../main.c



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Release.mk dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny402
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o: ../examples/src/i2c_slave_example.c  .generated_files/387d5a46ae6907aff45a58d7fc0f708a9793330d.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2130678003" 
	@${RM} ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o.d" -MT "${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o.d" -MT ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o -o ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o ../examples/src/i2c_slave_example.c 
	
${OBJECTDIR}/_ext/1360937237/bod.o: ../src/bod.c  .generated_files/748e4aa415a9a7d74a3c6f0dd3b5a29c680b8c53.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bod.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bod.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/bod.o.d" -MT "${OBJECTDIR}/_ext/1360937237/bod.o.d" -MT ${OBJECTDIR}/_ext/1360937237/bod.o -o ${OBJECTDIR}/_ext/1360937237/bod.o ../src/bod.c 
	
${OBJECTDIR}/_ext/1360937237/clkctrl.o: ../src/clkctrl.c  .generated_files/c52e84ce65e28bf6e24290f0190e7585332d3e46.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/clkctrl.o.d" -MT "${OBJECTDIR}/_ext/1360937237/clkctrl.o.d" -MT ${OBJECTDIR}/_ext/1360937237/clkctrl.o -o ${OBJECTDIR}/_ext/1360937237/clkctrl.o ../src/clkctrl.c 
	
${OBJECTDIR}/_ext/1360937237/cpuint.o: ../src/cpuint.c  .generated_files/b04a89be94a14c69dffcbab4748db94eb89b7cda.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpuint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/cpuint.o.d" -MT "${OBJECTDIR}/_ext/1360937237/cpuint.o.d" -MT ${OBJECTDIR}/_ext/1360937237/cpuint.o -o ${OBJECTDIR}/_ext/1360937237/cpuint.o ../src/cpuint.c 
	
${OBJECTDIR}/_ext/1360937237/driver_init.o: ../src/driver_init.c  .generated_files/135990dea4eee33bf1673f6bfa7c646831f2ea53.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/driver_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/driver_init.o.d" -MT "${OBJECTDIR}/_ext/1360937237/driver_init.o.d" -MT ${OBJECTDIR}/_ext/1360937237/driver_init.o -o ${OBJECTDIR}/_ext/1360937237/driver_init.o ../src/driver_init.c 
	
${OBJECTDIR}/_ext/1360937237/i2c_slave.o: ../src/i2c_slave.c  .generated_files/8e42784e4ce3737b790cf182275c9d2b19f524e2.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/i2c_slave.o.d" -MT "${OBJECTDIR}/_ext/1360937237/i2c_slave.o.d" -MT ${OBJECTDIR}/_ext/1360937237/i2c_slave.o -o ${OBJECTDIR}/_ext/1360937237/i2c_slave.o ../src/i2c_slave.c 
	
${OBJECTDIR}/_ext/1360937237/slpctrl.o: ../src/slpctrl.c  .generated_files/1f276e0b0e1c01214076105dc0a1ce094b782475.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/slpctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/slpctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/slpctrl.o.d" -MT "${OBJECTDIR}/_ext/1360937237/slpctrl.o.d" -MT ${OBJECTDIR}/_ext/1360937237/slpctrl.o -o ${OBJECTDIR}/_ext/1360937237/slpctrl.o ../src/slpctrl.c 
	
${OBJECTDIR}/_ext/1472/device_config.o: ../device_config.c  .generated_files/bb64921549678b3cca23306cc5cba1a948e40b55.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/device_config.o.d" -MT "${OBJECTDIR}/_ext/1472/device_config.o.d" -MT ${OBJECTDIR}/_ext/1472/device_config.o -o ${OBJECTDIR}/_ext/1472/device_config.o ../device_config.c 
	
${OBJECTDIR}/_ext/1360937237/tca.o: ../src/tca.c  .generated_files/dffbb1116bd92cc6ce9917edb5aea642a297b5f9.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tca.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tca.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/tca.o.d" -MT "${OBJECTDIR}/_ext/1360937237/tca.o.d" -MT ${OBJECTDIR}/_ext/1360937237/tca.o -o ${OBJECTDIR}/_ext/1360937237/tca.o ../src/tca.c 
	
${OBJECTDIR}/_ext/1472/atmel_start.o: ../atmel_start.c  .generated_files/f44a8144cf792710ac78b6d4a5036dbbc200e0da.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/atmel_start.o.d" -MT "${OBJECTDIR}/_ext/1472/atmel_start.o.d" -MT ${OBJECTDIR}/_ext/1472/atmel_start.o -o ${OBJECTDIR}/_ext/1472/atmel_start.o ../atmel_start.c 
	
${OBJECTDIR}/_ext/1472/driver_isr.o: ../driver_isr.c  .generated_files/e7311167de9b2be3e348feb6b118ff80f8e6b069.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/driver_isr.o.d" -MT "${OBJECTDIR}/_ext/1472/driver_isr.o.d" -MT ${OBJECTDIR}/_ext/1472/driver_isr.o -o ${OBJECTDIR}/_ext/1472/driver_isr.o ../driver_isr.c 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/205a4f3dfa189bd2ac16409018126ca7663cb47d.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o -o ${OBJECTDIR}/_ext/1472/main.o ../main.c 
	
else
${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o: ../examples/src/i2c_slave_example.c  .generated_files/77f8fa0e7bd6edb26314dc6a1760a9f48d2bed18.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2130678003" 
	@${RM} ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o.d" -MT "${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o.d" -MT ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o -o ${OBJECTDIR}/_ext/2130678003/i2c_slave_example.o ../examples/src/i2c_slave_example.c 
	
${OBJECTDIR}/_ext/1360937237/bod.o: ../src/bod.c  .generated_files/7d4f6f36f748a797c525b60af7460b81a0673bce.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bod.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bod.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/bod.o.d" -MT "${OBJECTDIR}/_ext/1360937237/bod.o.d" -MT ${OBJECTDIR}/_ext/1360937237/bod.o -o ${OBJECTDIR}/_ext/1360937237/bod.o ../src/bod.c 
	
${OBJECTDIR}/_ext/1360937237/clkctrl.o: ../src/clkctrl.c  .generated_files/8e4afdd3370e0bbaa4ccf2fe77673313bd782196.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/clkctrl.o.d" -MT "${OBJECTDIR}/_ext/1360937237/clkctrl.o.d" -MT ${OBJECTDIR}/_ext/1360937237/clkctrl.o -o ${OBJECTDIR}/_ext/1360937237/clkctrl.o ../src/clkctrl.c 
	
${OBJECTDIR}/_ext/1360937237/cpuint.o: ../src/cpuint.c  .generated_files/ab8e6602bb636344503ab0b9cf7e43b4d43d680a.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpuint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/cpuint.o.d" -MT "${OBJECTDIR}/_ext/1360937237/cpuint.o.d" -MT ${OBJECTDIR}/_ext/1360937237/cpuint.o -o ${OBJECTDIR}/_ext/1360937237/cpuint.o ../src/cpuint.c 
	
${OBJECTDIR}/_ext/1360937237/driver_init.o: ../src/driver_init.c  .generated_files/586756d1e89df5a733da95902d31a761a48ab900.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/driver_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/driver_init.o.d" -MT "${OBJECTDIR}/_ext/1360937237/driver_init.o.d" -MT ${OBJECTDIR}/_ext/1360937237/driver_init.o -o ${OBJECTDIR}/_ext/1360937237/driver_init.o ../src/driver_init.c 
	
${OBJECTDIR}/_ext/1360937237/i2c_slave.o: ../src/i2c_slave.c  .generated_files/e3e9e53c93da7925b1c3c9cfd962fdc2c424e7bc.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_slave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/i2c_slave.o.d" -MT "${OBJECTDIR}/_ext/1360937237/i2c_slave.o.d" -MT ${OBJECTDIR}/_ext/1360937237/i2c_slave.o -o ${OBJECTDIR}/_ext/1360937237/i2c_slave.o ../src/i2c_slave.c 
	
${OBJECTDIR}/_ext/1360937237/slpctrl.o: ../src/slpctrl.c  .generated_files/df69f8307483975227677fe45cb0daa70be7a0cb.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/slpctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/slpctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/slpctrl.o.d" -MT "${OBJECTDIR}/_ext/1360937237/slpctrl.o.d" -MT ${OBJECTDIR}/_ext/1360937237/slpctrl.o -o ${OBJECTDIR}/_ext/1360937237/slpctrl.o ../src/slpctrl.c 
	
${OBJECTDIR}/_ext/1472/device_config.o: ../device_config.c  .generated_files/1fbbb0341a13c11d94500369a15b515688675460.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/device_config.o.d" -MT "${OBJECTDIR}/_ext/1472/device_config.o.d" -MT ${OBJECTDIR}/_ext/1472/device_config.o -o ${OBJECTDIR}/_ext/1472/device_config.o ../device_config.c 
	
${OBJECTDIR}/_ext/1360937237/tca.o: ../src/tca.c  .generated_files/e42925cee7deac4ce0f209844729898bf0fc9c93.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tca.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tca.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/tca.o.d" -MT "${OBJECTDIR}/_ext/1360937237/tca.o.d" -MT ${OBJECTDIR}/_ext/1360937237/tca.o -o ${OBJECTDIR}/_ext/1360937237/tca.o ../src/tca.c 
	
${OBJECTDIR}/_ext/1472/atmel_start.o: ../atmel_start.c  .generated_files/2e37be240c954cef31c53da37fb3345340d4b6b7.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/atmel_start.o.d" -MT "${OBJECTDIR}/_ext/1472/atmel_start.o.d" -MT ${OBJECTDIR}/_ext/1472/atmel_start.o -o ${OBJECTDIR}/_ext/1472/atmel_start.o ../atmel_start.c 
	
${OBJECTDIR}/_ext/1472/driver_isr.o: ../driver_isr.c  .generated_files/7e2033d533e276bfe96bb64c3a787c8dbb6a703f.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/driver_isr.o.d" -MT "${OBJECTDIR}/_ext/1472/driver_isr.o.d" -MT ${OBJECTDIR}/_ext/1472/driver_isr.o -o ${OBJECTDIR}/_ext/1472/driver_isr.o ../driver_isr.c 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/824a5a03c477195de0543234d90ec5669c2aa25c.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o -o ${OBJECTDIR}/_ext/1472/main.o ../main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/protected_io.o: ../src/protected_io.S  .generated_files/bbd117ceac615d92b80daf6b49412139784d017d.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/protected_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  -std=gnu99 -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/protected_io.o.d" -MT "${OBJECTDIR}/_ext/1360937237/protected_io.o.d" -MT ${OBJECTDIR}/_ext/1360937237/protected_io.o -o ${OBJECTDIR}/_ext/1360937237/protected_io.o  ../src/protected_io.S 
	
else
${OBJECTDIR}/_ext/1360937237/protected_io.o: ../src/protected_io.S  .generated_files/ae70f886dd83a557ae3dbe1c92e4bd521b72ea77.flag .generated_files/9d0170169ca80d00f4e148176ab6f4ba4a90b492.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/protected_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_Release=$(CND_CONF)  -std=gnu99 -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/_ext/1360937237/protected_io.o.d" -MT "${OBJECTDIR}/_ext/1360937237/protected_io.o.d" -MT ${OBJECTDIR}/_ext/1360937237/protected_io.o -o ${OBJECTDIR}/_ext/1360937237/protected_io.o  ../src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_Release=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -std=gnu99 -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.map  -DXPRJ_Release=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -std=gnu99 -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/IntruderTiny402.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Release
	${RM} -r dist/Release

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
