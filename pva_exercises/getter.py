#!/opt/p4p/bin/python

from p4p.client.thread import Context
ctxt=Context()

print(ctxt.get('demo:sin'))
