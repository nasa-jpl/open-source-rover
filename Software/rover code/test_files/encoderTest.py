#!/usr/bin/env python


import time
import serial
import math
from open_source_rover.rover import roboclaw
from open_source_rover.rover import rover


rc = roboclaw.Roboclaw("/dev/ttyS0",115200)
rc.Open()
address = [0x80,0x81,0x82,0x83,0x84]

r = 3.15
ratio = 10884.47
data={}

def getCornerAngles():
	enc1 = rc.ReadEncM1(address[3])[1]
	enc2 = rc.ReadEncM2(address[3])[1]
	enc3 = rc.ReadEncM1(address[4])[1]
	enc4 = rc.ReadEncM2(address[4])[1]
	enc1a = int(3E-05 * math.pow(enc1,2) + 0.0331 * enc1 - 51.005)
	enc2a = int(2E-06 * math.pow(enc2,2) + 0.084 * enc2 - 50.147)
	enc3a = int(8E-05 * math.pow(enc3,2) - 0.0644 * enc3 -31.398)
	enc4a = int(1E-04 * math.pow(enc4,2) + 0.1681 * enc4 + 8.8313)


	data["enc"] = [enc1a,enc2a,enc3a,enc4a]
	print "data in gCA:", data, enc1,enc2,enc3,enc4
	#print "data in gCA:", enc3,enc4

'''
while True:
    try:
        rc.ForwardM1(address[4],50)
    except KeyboardInterrupt:
        rc.ForwardM1(address[4],0)
'''

while 1:
	getCornerAngles()
	time.sleep(0.5)

rc.ForwardM1(address[4],0)
