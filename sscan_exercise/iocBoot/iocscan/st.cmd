#!../../bin/linux-x86_64/scan

#- You may have to change scan to something else
#- everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase("../../dbd/scan.dbd",0,0)
scan_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/random.db","P=${USER}")

dbLoadRecords("$(SSCAN)/sscanApp/Db/standardScans.db","P=${USER}:,MAXPTS1=2000,MAXPTS2=1000,MAXPTS3=1000,MAXPTS4=10,MAXPTSH=2000")
dbLoadRecords("$(SSCAN)/sscanApp/Db/saveData.db","P=${USER}:")
dbLoadRecords("$(SSCAN)/sscanApp/Db/scanProgress.db","P=${USER}:scanProgress:")

iocInit()

## Start any sequence programs
#seq sncscan,"user=training"
