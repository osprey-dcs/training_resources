#!/opt/p4p/bin/python

from time import time, sleep

from p4p.server import Server
from p4p.server.thread import SharedPV
from p4p.nt import NTScalar

cnt=0
pv=SharedPV(nt=NTScalar('I'), initial=cnt)

with Server(providers=[{'demo:box':pv}]):
    while True:
        pv.post(cnt, timestamp=time())
        cnt += 1
        sleep(1)
