TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = scan
# scan.dbd will be created and installed
DBD += scan.dbd

# scan.dbd will be made up from these files:
scan_DBD += base.dbd

# Include dbd files from all support applications:
scan_DBD += sscanSupport.dbd sscanProgressSupport.dbd calcSupport.dbd busySupport.dbd

# Add all the support libraries needed by this IOC
scan_LIBS += sscan scanProgress calc busy

# scan_registerRecordDeviceDriver.cpp derives from scan.dbd
scan_SRCS += scan_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
scan_SRCS_DEFAULT += scanMain.cpp
scan_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#scan_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
scan_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

