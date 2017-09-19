# LIBVERSION is overwritten by the python script in module.Makefile, so it didn't work
# LIBVERSION=2.9.0

STARTUPS=-none-
EXCLUDE_VERSIONS=3.14
USR_DEPENDENCIES += devlib2,2.9.0


# SRC_TOP : Local Variable to represent where all source files are located.
#           Input variable of the main Makefile

# All source codes are defined here, are defined in Makefile in each main Applcations with 
# Library IOC only. I don't add PRODUCT in this makefile. Still I have no idea how I implement
# the PRODUCT binary within EEE
# Tuesday, September 19 14:30:38 CEST 2017, jhlee


export PERL5LIB=$(EPICS_BASE)/lib/perl

MRF_VERSION = 2.2.0

#
#

MRFCOMMOM = $(SRC_TOP)/mrfCommon/src
EVRAPP    = $(SRC_TOP)/evrApp/src
MRMSHARED = $(SRC_TOP)/mrmShared/src
EVGMRMAPP = $(SRC_TOP)/evgMrmApp/src
EVRMRMAPP = $(SRC_TOP)/evrMrmApp/src

USR_INCLUDES += -I$(MRFCOMMOM)
USR_INCLUDES += -I$(EVRAPP)
USR_INCLUDES += -I$(MRFCOMMOM)/mrf
USR_INCLUDES += -I$(EVRAPP)/evr
USR_INCLUDES += -I$(MRMSHARED)
USR_INCLUDES += -I$(EVGMRMAPP)
USR_INCLUDES += -I$(EVRMRMAPP)

# ## Introduce mrf, in order to compile some source files which
# ## should know databuf.h, object.h, and version.h
# ## it turns out, include/mrf is created, and copy all headers files
# ## in that directory. However, module.Makefile include 
# ## include and include/mrf as default.
# ##
#HEADERS_PREFIX=mrf

# HEADERS += $(MRFCOMMOM)/mrfBitOps.h
# HEADERS += $(MRFCOMMOM)/mrfCommon.h        # Common MRF event system constants & definitions
# HEADERS += $(MRFCOMMOM)/mrfCommonIO.h      # Common I/O access macros
# HEADERS += $(MRFCOMMOM)/mrfFracSynth.h     # Fractional Synthesizer routines
# HEADERS += $(MRFCOMMOM)/linkoptions.h
# HEADERS += $(MRFCOMMOM)/mrfcsr.h
# HEADERS += $(MRFCOMMOM)/mrf/databuf.h
# HEADERS += $(MRFCOMMOM)/mrf/object.h
HEADERS += $(MRFCOMMOM)/mrf/version.h
# HEADERS += $(MRFCOMMOM)/devObj.h
# HEADERS += $(MRFCOMMOM)/configurationInfo.h
# HEADERS += $(MRFCOMMOM)/plx9030.h
# HEADERS += $(MRFCOMMOM)/plx9056.h
# HEADERS += $(MRFCOMMOM)/latticeEC30.h



SOURCES += $(MRFCOMMOM)/mrfFracSynth.c
SOURCES += $(MRFCOMMOM)/linkoptions.c
SOURCES += $(MRFCOMMOM)/object.cpp
SOURCES += $(MRFCOMMOM)/devObj.cpp
SOURCES += $(MRFCOMMOM)/devObjAnalog.cpp
SOURCES += $(MRFCOMMOM)/devObjLong.cpp
SOURCES += $(MRFCOMMOM)/devObjBinary.cpp
SOURCES += $(MRFCOMMOM)/devObjMBB.cpp
SOURCES += $(MRFCOMMOM)/devObjMBBDirect.cpp
SOURCES += $(MRFCOMMOM)/devObjString.cpp
SOURCES += $(MRFCOMMOM)/devObjCommand.cpp
SOURCES += $(MRFCOMMOM)/devObjWf.cpp
SOURCES += $(MRFCOMMOM)/devMbboDirectSoft.c
SOURCES += $(MRFCOMMOM)/devlutstring.cpp
SOURCES += $(MRFCOMMOM)/databuf.cpp
SOURCES += $(MRFCOMMOM)/mrfCommon.cpp
SOURCES += $(MRFCOMMOM)/spi.cpp
SOURCES += $(MRFCOMMOM)/flash.cpp
SOURCES += $(MRFCOMMOM)/flashiocsh.cpp




HEADERS += $(EVRAPP)/evr/pulser.h
HEADERS += $(EVRAPP)/evr/output.h
HEADERS += $(EVRAPP)/evr/delay.h
HEADERS += $(EVRAPP)/evr/input.h
HEADERS += $(EVRAPP)/evr/prescaler.h
HEADERS += $(EVRAPP)/evr/evr.h
HEADERS += $(EVRAPP)/evr/cml.h
# HEADERS += $(EVRAPP)/evrGTIF.h

SORUCES += $(EVRAPP)/evr.cpp
SORUCES += $(EVRAPP)/evrGTIF.cpp
SORUCES += $(EVRAPP)/devEvrStringIO.cpp
SORUCES += $(EVRAPP)/devEvrEvent.cpp
SORUCES += $(EVRAPP)/devEvrMapping.cpp
SORUCES += $(EVRAPP)/devEvrPulserMapping.cpp
SORUCES += $(EVRAPP)/asub.c
SORUCES += $(EVRAPP)/devWfMailbox.c


SOURCES_Linux += $(EVRAPP)/ntpShm.cpp
SOURCES_DEFAULT += $(EVRAPP)/ntpShmNull.cpp




# # #
# # #


# HEADERS += $(MRMSHARED)/mrmDataBufTx.h
# HEADERS += $(MRMSHARED)/mrmSeq.h
# HEADERS += $(MRMSHARED)/mrmpci.h
# HEADERS += $(MRMSHARED)/sfp.h
SOURCES += $(MRMSHARED)/mrmDataBufTx.cpp
SOURCES += $(MRMSHARED)/mrmSeq.cpp
SOURCES += $(MRMSHARED)/devMrfBufTx.cpp
SOURCES += $(MRMSHARED)/sfp.cpp
SOURCES += $(MRMSHARED)/mrmtimesrc.cpp




# HEADERS += $(EVGMRMAPP)/evgMrm.h
# HEADERS += $(EVGMRMAPP)/evgRegMap.h
# HEADERS += $(EVGMRMAPP)/evgAcTrig.h
# HEADERS += $(EVGMRMAPP)/evgEvtClk.h
# HEADERS += $(EVGMRMAPP)/evgTrigEvt.h
# HEADERS += $(EVGMRMAPP)/evgMxc.h
# HEADERS += $(EVGMRMAPP)/evgDbus.h
# HEADERS += $(EVGMRMAPP)/evgInput.h
# HEADERS += $(EVGMRMAPP)/evgOutput.h
# HEADERS += $(EVGMRMAPP)/mrmevgseq.h

SOURCES += $(EVGMRMAPP)/evgInit.cpp
SOURCES += $(EVGMRMAPP)/evg.cpp
SOURCES += $(EVGMRMAPP)/evgMrm.cpp
SOURCES += $(EVGMRMAPP)/evgAcTrig.cpp
SOURCES += $(EVGMRMAPP)/evgEvtClk.cpp
SOURCES += $(EVGMRMAPP)/evgTrigEvt.cpp
SOURCES += $(EVGMRMAPP)/devSupport/devEvgTrigEvt.cpp
SOURCES += $(EVGMRMAPP)/evgMxc.cpp
SOURCES += $(EVGMRMAPP)/evgDbus.cpp
SOURCES += $(EVGMRMAPP)/devSupport/devEvgDbus.cpp
SOURCES += $(EVGMRMAPP)/evgInput.cpp
SOURCES += $(EVGMRMAPP)/evgOutput.cpp
SOURCES += $(EVGMRMAPP)/mrmevgseq.cpp
SOURCES += $(EVGMRMAPP)/seqconst.c
SOURCES += $(EVGMRMAPP)/seqnsls2.c



# SOURCES += $(EVRMRMAPP)/drvemIocsh.c
# SOURCES += $(EVRMRMAPP)/drvemSetup.c
# SOURCES += $(EVRMRMAPP)/drvem.cpp
# SOURCES += $(EVRMRMAPP)/drvemOutput.cpp
# SOURCES += $(EVRMRMAPP)/drvemInput.cpp
# SOURCES += $(EVRMRMAPP)/drvemPrescaler.cpp
# SOURCES += $(EVRMRMAPP)/drvemPulser.cpp
# SOURCES += $(EVRMRMAPP)/drvemCML.cpp
# SOURCES += $(EVRMRMAPP)/delayModule.cpp
# SOURCES += $(EVRMRMAPP)/drvemRxBuf.cpp
# SOURCES += $(EVRMRMAPP)/devMrmBuf.cpp
# SOURCES += $(EVRMRMAPP)/mrmevrseq.cpp
# SOURCES += $(EVRMRMAPP)/bufrxmgr.cpp
# SOURCES += $(EVRMRMAPP)/devMrmBufRx.cpp
# SOURCES += $(EVRMRMAPP)/irqHack.cpp
# SOURCES += $(EVRMRMAPP)/mrmGpio.cpp





DBDS    += $(MRFCOMMOM)/mrfCommon.dbd
DBDS    += $(EVRAPP)/evrSupport.dbd
DBDS    += $(MRMSHARED)/mrmShared.dbd
DBDS    += $(EVGMRMAPP)/evgInit.dbd
DBDS    += $(EVRMRMAPP)/drvemSupport.dbd


# #include ${HOME}/ics_gitsrc/m-epics-environment/scripts/module.Makefile

include ${EPICS_ENV_PATH}/module.Makefile


# 
# There is no way to handle if source file calls /mrf/version.h or evr/output.h in module.Makefile
# This is the dirty solution to work around after many trials and fails
#
version.h::
	mkdir -p ${BUILD_PATH}/${EPICSVERSION}/include/mrf/
	mkdir -p ${BUILD_PATH}/${EPICSVERSION}/include/evr/
	$(PERL) ../../$(MRFCOMMOM)/genVersionHeader.pl -V "$(MRF_VERSION)" -N MRF_VERSION $@
	install -t ${BUILD_PATH}/${EPICSVERSION}/include/mrf/ $@
	install -t ${BUILD_PATH}/${EPICSVERSION}/include/evr/ ${BUILD_PATH}/${EPICSVERSION}/include/output.h

