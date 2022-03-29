#!/opt/p4p/bin/python

from time import time, sleep

from p4p.server import Server, ServerOperation
from p4p.server.thread import SharedPV
from p4p.nt import NTScalar

pv=SharedPV(nt=NTScalar('I'), initial=0.0)

@pv.put
def doubler(pv : SharedPV, op : ServerOperation):
    print('Put', op.value())
    pv.post(2*op.value(), timestamp=time())
    op.done()

Server.forever(providers=[{
	'demo:doubler':pv,
}])
