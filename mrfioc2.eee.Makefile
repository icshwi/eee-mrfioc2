# LIBVERSION is overwritten by the python script in module.Makefile, so it didn't work
# LIBVERSION=2.9.0

STARTUPS=-none-
EXCLUDE_VERSIONS=3.14
USR_DEPENDENCIES += devlib2-han,2.9.0


# SRC_TOP : Local Variable to represent where all source files are located.
#           Input variable of the main Makefile


## mrfCommon


DBDS += $(SRC_TOP)/mrfCommon/src/mrfCommon.dbd
DBDS += $(SRC_TOP)/mrmShared/src/mrmShared.dbd
DBDS += $(SRC_TOP)/evgMrmApp/src/evgInit.dbd
DBDS += $(SRC_TOP)/evrMrmApp/src/drvemSupport.dbd
DBDS += $(SRC_TOP)/evrApp/src/evrSupport.dbd



# SOURCES := $(SOURCES) $(filter-out $(SOURCES), $(wildcard $(SRC_TOP)/mrfCommon/src*))
# SOURCES := $(SOURCES) $(filter-out $(SOURCES), $(wildcard $(SRC_TOP)/mrmShared/src*))
# SOURCES := $(SOURCES) $(filter-out $(SOURCES), $(wildcard $(SRC_TOP)/evgMrmApp/src*))
# SOURCES := $(SOURCES) $(filter-out $(SOURCES), $(wildcard $(SRC_TOP)/evrMrmApp/src*))
# SOURCES := $(SOURCES) $(filter-out $(SOURCES), $(wildcard $(SRC_TOP)/evrApp/src*))
# SOURCES := $(SOURCES) $(filter-out $(SOURCES), $(wildcard $(SRC_TOP)/mrfApp/src*))

SOURCES += $(shell find $($(SRC_TOP)/mrfCommon/src/) -name '*.c*')
SOURCES += $(shell find $($(SRC_TOP)/mrmShared/src/) -name '*.c*')
SOURCES += $(shell find $($(SRC_TOP)/mrfApp/src/) -name '*.c*')
SOURCES += $(shell find $($(SRC_TOP)/evgMrmApp/src/) -name '*.c*')
SOURCES += $(shell find $($(SRC_TOP)/evrMrmApp/src/) -name '*.c*')
SOURCES += $(shell find $($(SRC_TOP)/evrApp/src/) -name '*.c*')



# SOURCES += $(SRC_TOP)/mrfCommon/src/devMbboDirectSoft.c
# SOURCES += $(SRC_TOP)/mrfCommon/src/linkoptions.c
# SOURCES += $(SRC_TOP)/mrfCommon/src/mrfFracSynth.c

# SOURCES += $(SRC_TOP)/mrfCommon/src/mrfCommon.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/devObjMBBDirect.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/devObjWf.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/devObjLong.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/object.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/devObjAnalog.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/devObjString.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/devObjBinary.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/objectTest.cpp
# SOURCES += $(SRC_TOP)/mrfCommon/src/devObjMBB.cpp


# dbds += $(SRC_TOP)/mrmShared/src/mrmShared.dbd

# SOURCES += $(SRC_TOP)/mrmShared/src/sfp.cpp
# SOURCES += $(SRC_TOP)/mrmShared/src/mrmFlash.cpp
# SOURCES += $(SRC_TOP)/mrmShared/src/mrmRemoteFlash.cpp
# SOURCES += $(SRC_TOP)/mrmShared/src/dataBuffer/mrmDataBuffer.cpp
# SOURCES += $(SRC_TOP)/mrmShared/src/dataBuffer/mrmDataBuffer_300.cpp
# SOURCES += $(SRC_TOP)/mrmShared/src/dataBuffer/mrmDataBuffer_230.cpp
# SOURCES += $(SRC_TOP)/mrmShared/src/dataBuffer/mrmDataBufferUser.cpp
# SOURCES += $(SRC_TOP)/mrmShared/src/dataBuffer/mrmDataBufferObj.cpp


#DBDS += $(SRC_TOP)/evrMrmApp/src/evrSupport.dbd
#DBDS += $(SRC_TOP)/evgMrmApp/src/evgInit.dbd



# DBDS += $(SRC_TOP)/pciApp/epicspci.dbd


# HEADERS += $(SRC_TOP)/pciApp/devLibPCI.h
# HEADERS += $(SRC_TOP)/pciApp/devLibPCIImpl.h

# SOURCES += $(SRC_TOP)/pciApp/devLibPCI.c
# SOURCES += $(SRC_TOP)/pciApp/devLibPCIStrings.c
# SOURCES += $(SRC_TOP)/pciApp/pcish.c

# SOURCES_Linux   += $(SRC_TOP)/pciApp/os/Linux/devLibPCIOSD.c

# #HEADERS_RTEMS   += $(SRC_TOP)/pciApp/os/RTEMS/devLibPCIOSD.h
# #SOURCES_RTEMS   += $(SRC_TOP)/pciApp/os/RTEMS/devLibPCIOSD.c
# #SOURCES_RTEMS   += $(SRC_TOP)/pciApp/osdPciShared.c

# #HEADERS_vxWorks += $(SRC_TOP)/pciApp/os/vxWorks/devLibPCIOSD.h
# #SOURCES_vxWorks += $(SRC_TOP)/pciApp/os/vxWorks/devLibPCIOSD.c
# #SOURCES_vxWorks += $(SRC_TOP)/pciApp/osdPciShared.c


# DBDS += $(SRC_TOP)/vmeApp/epicsvme.dbd

# HEADERS += $(SRC_TOP)/vmeApp/devcsr.h
# HEADERS += $(SRC_TOP)/vmeApp/vmedefs.h

# SOURCES += $(SRC_TOP)/vmeApp/devcsr.c
# SOURCES += $(SRC_TOP)/vmeApp/iocreg.c
# SOURCES += $(SRC_TOP)/vmeApp/vmesh.c
# SOURCES += $(SRC_TOP)/vmeApp/devlib_compat.c

# SOURCES_Linux   += $(SRC_TOP)/pciApp/os/Linux/devLibPCIOSD.c
# #SOURCES_RTEMS   += $(SRC_TOP)/pciApp/os/RTEMS/devLibPCIOSD.c
# #SOURCES_vxWorks += $(SRC_TOP)/pciApp/os/vxWorks/devLibPCIOSD.c


# #include ${HOME}/ics_gitsrc/m-epics-environment/scripts/module.Makefile


include ${EPICS_ENV_PATH}/module.Makefile

