#!/opt/p4p/bin/ipython

from matplotlib.pylab import imshow, show
from p4p.client.thread import Context

ctxt=Context()

imshow(ctxt.get('demo:wildlife'))
show()
