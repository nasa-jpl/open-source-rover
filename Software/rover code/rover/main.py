import os
import socket
import glob
import time
import RPi.GPIO as GPIO
from bluetooth import *
import controls as rover
import threading
import math
import select
import sys
import os

class Threads():
	def __init__(self):
		self.drive_speed = 0
		self.turn_radius = 0
		self.screen = -1

	def btConnect(self):
		server_sock = BluetoothSocket(RFCOMM)
		server_sock.bind(("",PORT_ANY))
		server_sock.listen(1)

		port = server_sock.getsockname()[1]
		uuid = "94f39d29-7d6d-437d-973b-fba39e49d4ee"

		advertise_service( server_sock, "raspberrypi",
						   service_id = uuid,
						   service_classes = [uuid, SERIAL_PORT_CLASS],
						   profiles = [SERIAL_PORT_PROFILE],
						   )
		print "waiting for connection on RFCOMM channel %d" % port
		client_socket, client_info = server_sock.accept()
		client_socket.setblocking(0)
		print "Accepted connection from ", client_info
		self.bt_sock = client_socket

	def dataListener(self,myRover):
		time_since_last = 0
		check = 0
		while myRover.thread_kill != True:
			try:
				self.bt_sock.settimeout(1)
				sockData = self.bt_sock.recv(1024)
				#v,s,c = ord(sockData[3]),ord(sockData[7]),ord(sockData[11])
				v,s,c = ord(sockData[3]),ord(sockData[7]),ord(sockData[-1])

				#print v,s,c
				if (v ^ s is c):
					self.drive_speed = v-100
					self.turn_radius = s-100
					self.screen = ord(sockData[11])
				else:
					print "Checksum failed!"
					check +=1
					if check > 3:
						self.bt_sock.close()
				self.bt_sock.send("1")
				time.sleep(0.05)
			except:
				print "here"
				myRover.thread_kill = True
				self.bt_sock.close()
				return
		try:
			self.bt_sock.send("0")
			time.sleep(0.25)
			self.bt_sock.close()
		except:
			pass

	def testMode(self,myRover):
		print "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		print "             Entering Motor Test Mode                   "
		print "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
		print "             ** Type 'quit' to exit**                     "
		while True:
			sigs = raw_input("Input Drive speed and Steering amount: ")
			if (sigs == "quit"):
				print "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
				print "             Exiting Motor Test Mode                    "
				print "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
				self.turn_radius = 0
				time.sleep(1)
				self.drive_speed = 0
				print "Stopping Motors"
				time.sleep(1)
				myRover.killMotors()
				myRover.thread_kill = True
				return
			if len(sigs.split(" ")) == 2:
				v,s = sigs.split(" ")
				v,s = int(v),int(s)
				if (-100 <= v <= 100 and -100 <= s <=100):
					self.drive_speed = v
					self.turn_radius = s
					self.driveController(myRover)
				else:
					print "Please enter numbers between -100 and 100"
			else:
				print "Please enter two numbers between -100 and 100 each, seperated with a space"

	def driveController(self,myRover):
		speed = int(self.drive_speed)*(127/100)
		tmp_radius = self.turn_radius
		#print speed,tmp_radius
		if (-100 <= speed <= 100):
			myRover.calculateDriveSpeed(speed)
		else:
			print "not a valid speed"

		if tmp_radius > 0:
			radius = 220 - tmp_radius*(250/100)
		elif tmp_radius < 0:
			radius = -220 - tmp_radius * (250/100)
		else:
			radius = 250
		if(-250 <= radius <= 250):
			myRover.calculateCornerAngles(radius)
		myRover.turnCornerMotor()

	def unixSockConnect(self,myRover):
		if os.path.exists("/tmp/screen_socket") :
			client = socket.socket(socket.AF_UNIX,socket.SOCK_DGRAM)
			client.connect("/tmp/screen_socket")
			self.screen_sock = client
			print "connected to socket"
		else:
			print "Couldn't connect"

	def threadCleanup(self,thread1,thread2,myRover):
		myRover.thread_kill = True
		myRover.killMotors()
		self.screen = -1

	def sockCleanup(self,socket,myRover):
		socket.close()
		self.client_sock.close()
		self.screen = -1
		myRover.thread_kill = True

def main():
	myRover = rover.Rover()
	myThreads = Threads()
	screenSocketConnected = False
	if (len(sys.argv) == 2):
		if sys.argv[1] == "-t":
			myRover.thread_kill = False
			read_write_thread = threading.Thread(target = myRover.roboClawReadWrite, args = ())	
			read_write_thread.start()
			myThreads.testMode(myRover)
	else:
		while True:
			try:
				myThreads.btConnect()
				myRover.thread_kill = False
				bt_sock = myThreads.bt_sock
				data_listener_thread = threading.Thread(target = myThreads.dataListener, args =(myRover,))
				data_listener_thread.start()

				read_write_thread = threading.Thread(target = myRover.roboClawReadWrite, args = ())	
				read_write_thread.start()

			except Exception as e:
				print e
				#myThreads.threadCleanup(data_listener_thread,read_write_thread,myRover)
				#myThreads.threadCleanup(test_data_thread,read_write_thread,myRover)
				break
			while myRover.thread_kill != True:
				try:
					myThreads.driveController(myRover)
					if screenSocketConnected == True:
						#print myThreads.screen
						screenSocket.send(str(myThreads.screen).encode('utf-8'))
					else:
						try:
							myThreads.unixSockConnect(myRover)
							screenSocket = myThreads.screen_sock
							screenSocketConnected = True
						except:
							print "cannot open socket to screen"
					time.sleep(0.05)
				except:
					myRover.thread_kill = True
					break
			screenSocket.send("-1")

if __name__ == "__main__":
	main()
