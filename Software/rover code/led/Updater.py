#Framework for DisplayUpdaterData
#Establishes pin connections and constantly refreshes the physical LED Display 

import os
import time
import numpy as np
import RPi.GPIO as GPIO
from Display import display
import Feature

#Set GPIO Pin Values
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
red1_pin = 17
green1_pin = 18
#green1_pin = 27
blue1_pin = 22
red2_pin = 23
green2_pin = 24
blue2_pin = 25
clock_pin = 3
a_pin = 7
b_pin = 8
c_pin = 9
latch_pin = 4
oe_pin = 2
dir1 = 10
dir2 = 11
delay = 0.000001

class updater():
	def __init__(self,Display):
		self.screenOutput = [[0 for y in range(32)] for x in range(16)]
		self.display = Display

		GPIO.setup(red1_pin, GPIO.OUT)
		GPIO.setup(green1_pin, GPIO.OUT)
		GPIO.setup(blue1_pin, GPIO.OUT)
		GPIO.setup(red2_pin, GPIO.OUT)
		GPIO.setup(green2_pin, GPIO.OUT)
		GPIO.setup(blue2_pin, GPIO.OUT)
		GPIO.setup(clock_pin, GPIO.OUT)
		GPIO.setup(a_pin, GPIO.OUT)
		GPIO.setup(b_pin, GPIO.OUT)
		GPIO.setup(c_pin, GPIO.OUT)
		GPIO.setup(latch_pin, GPIO.OUT)
		GPIO.setup(oe_pin, GPIO.OUT)
		GPIO.setup(dir1, GPIO.OUT)
		GPIO.setup(dir2, GPIO.OUT)

	#built-in control
	def clock(self):
		GPIO.output(clock_pin, 1)
		GPIO.output(clock_pin, 0)

	#built-in control
	def latch(self):
		GPIO.output(latch_pin, 1)
		GPIO.output(latch_pin, 0)

	#built-in control
	def bits_from_int(self,x):
		a_bit = x & 1
		b_bit = x & 2
		c_bit = x & 4
		return (a_bit, b_bit, c_bit)

	#built-in control
	def set_row(self, row):
		a_bit, b_bit, c_bit = self.bits_from_int(row)
		GPIO.output(a_pin, a_bit)
		GPIO.output(b_pin, b_bit)
		GPIO.output(c_pin, c_bit)

	#built-in control
	def set_color_top(self, color):
		red, green, blue = self.bits_from_int(color)
		GPIO.output(red1_pin, red)
		GPIO.output(green1_pin, green)
		GPIO.output(blue1_pin, blue)

	#built-in control
	def set_color_bottom(self, color):
		red, green, blue = self.bits_from_int(color)
		GPIO.output(red2_pin, red)
		GPIO.output(green2_pin, green)
		GPIO.output(blue2_pin, blue)

	def set_all_to_null(self,connected):
		self.screenOutput = [[0 for y in range(32)] for x in range(16)]
		self.screenOutput[1][31] = connected + 1
		#print self.screenOutput
		self.refresh(connected)

	def refresh(self,connected):
		if(self.display.hasChanged()):
			self.screenOutput = self.display.readMatrix()
		#print self.screenOutput
		self.screenOutput[1][31] = connected + 1
		#print "updating"
		for row in range(8):
			time.sleep(delay)
			GPIO.output(oe_pin, 1)
			self.set_color_top(0)
			self.set_row(row)
			for col in range(32):
				self.set_color_top(int(self.screenOutput[row][col]))
				self.set_color_bottom(int(self.screenOutput[row+8][col]))
				self.clock()
			self.latch()
			GPIO.output(oe_pin, 0)
		time.sleep(delay)

