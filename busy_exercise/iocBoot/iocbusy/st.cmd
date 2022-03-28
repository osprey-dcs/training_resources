#!../../bin/linux-x86_64/busy

#- You may have to change busy to something else
#- everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase("../../dbd/busy.dbd",0,0)
busy_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/busy_demo.db","P=${USER}")

iocInit()

## Start any sequence programs
#seq sncbusy,"user=training"
