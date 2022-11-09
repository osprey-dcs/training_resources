#!/opt/epics-current/etherip/bin/linux-x86_64/eipIoc

dbLoadDatabase("/opt/epics-current/etherip/dbd/eipIoc.dbd")
eipIoc_registerRecordDeviceDriver(pdbbase)

drvEtherIP_init()
drvEtherIP_define_PLC("demo", "tservice", 0)

dbLoadRecords("demo.db", "P=$(USER):,PLC=demo")

iocInit()
