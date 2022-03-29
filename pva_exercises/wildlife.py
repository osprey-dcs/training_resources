#!/opt/p4p/bin/python

from p4p.server import Server
from p4p.server.thread import SharedPV
from p4p.nt import NTNDArray
from scipy.misc import face

pv=SharedPV(
    nt=NTNDArray(),
    initial=face(gray=True),
)

Server.forever(providers=[{'demo:wildlife':pv}])

## aka.
#with Server(providers=[{'wildlife':pv}]):
#   while True:
#       time.sleep(9999)
