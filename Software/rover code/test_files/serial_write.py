#!/usr/bin/env python

import time
import serial

ser = serial.Serial(
	port='/dev/ttyS0',
	baudrate=9600,
	parity=serial.PARITY_NONE,
	stopbits=serial.STOPBITS_ONE,
	bytesize=serial.EIGHTBITS,
	timeout=1
)

counter =0
while 1:
	ser.write('Write counter: %d \n'%(counter))
	time.sleep(1)
	print counter
	counter +=1

