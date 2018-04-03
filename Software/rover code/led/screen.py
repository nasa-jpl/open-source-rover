import time
from Display import display
from Updater import updater
import Feature
import os
import threading
import socket


'''
#Pixel data stored in a 32x16 matrix
(0,0)....(0,31)
  .         .
(15,0)...(15,31)

#Color Codes
1 - Red
2 - Green
3 - Yellow
4 - Blue
5 - Purple
6 - Light Blue
7 - White
'''
class screenUpdater():
	def __init__(self):
		self.display = display()
		self.updater = updater(self.display)
		self.connected = 0
		self.prev = -2
		self.connect_status = Feature.Connected(self.display,"single", 2,31,1)
		self.leftEye = Feature.Eye(self.display,"null", 6,11,[4,2])
		self.rightEye = Feature.Eye(self.display,"null", 6,19,[4,2])
		self.mouth = Feature.Mouth(self.display,"null", 13,15,[4,2])
		self.brow1 = Feature.Eyebrow(self.display,"null", 3,11,[3])
		self.brow2 = Feature.Eyebrow(self.display,"null", 3,19,[3])
		self.cheek1 = Feature.Cheek(self.display,"null", 10,6,[1])
		self.cheek2 = Feature.Cheek(self.display,"null", 10,24,[1])

	def createServer(self):
		if os.path.exists("/tmp/screen_socket"):
			os.remove("/tmp/screen_socket")

		print("Opening socket...")
		server = socket.socket(socket.AF_UNIX, socket.SOCK_DGRAM)
		server.bind("/tmp/screen_socket")
		self.server = server

	def drawFace(self):
		self.leftEye.draw()
		self.rightEye.draw()
		self.mouth.draw()
		self.brow1.draw()
		self.brow2.draw()
		self.cheek1.draw()
		self.cheek2.draw()

	def setFaceType(self,faceType):
		if faceType != 0:
			if faceType == 1:
				#print "face type is 8bit"
				self.rightEye.setStyle("8bit")
				self.leftEye.setStyle('8bit')
			elif faceType == 2:
				#print "face type is wink"
				self.rightEye.setStyle('wink')
			elif faceType == 3:
				#print "face type is happy"
				self.rightEye.setStyle('wink')
				self.leftEye.setStyle('wink')
			if faceType >0:
				self.mouth.setStyle('happy')
				self.brow1.setStyle('arc')
				self.brow2.setStyle('arc')
				self.cheek1.setStyle('circle')
				self.cheek2.setStyle('circle')
			self.drawFace()
		else:
			#self.rightEye.setStyle("null")
			#self.leftEye.setStyle("null")
			#self.mouth.setStyle("null")
			#self.brow1.setStyle("null")
			#self.brow2.setStyle("null")
			#self.cheek1.setStyle("null")
			#self.cheek2.setStyle("null")
			#print "face type is null", self.connected
			self.updater.set_all_to_null(self.connected)


def main():
	myScreenUpdater = screenUpdater()
	myScreenUpdater.createServer()
	screenSock = myScreenUpdater.server
	dataListThread = threading.Thread
	screenSock.setblocking(0)
	lastdata = -1
	while True:
		try:
			datagram = int(screenSock.recv(1024))
			#print datagram
			lastdata = datagram
		except socket.error as err:
			if err.errno == 11:
				#print "here"
				datagram = lastdata
		except:
			myScreenUpdater.updater.set_all_to_null(0)
			print "breaking loop"
			break
		#if not datagram: break
		if datagram == -1: myScreenUpdater.connected = 0
		else: myScreenUpdater.connected = 1

		if (myScreenUpdater.prev != datagram):
			#print "changing face type"
			myScreenUpdater.setFaceType(datagram)
			#myScreenUpdater.drawFace()

		myScreenUpdater.updater.refresh(myScreenUpdater.connected)
		#time.sleep(0.0001)
		#time.sleep(1)
		myScreenUpdater.prev = datagram

	myScreenUpdater.updater.set_all_to_null(myScreenUpdater.connected)
	screenSock.close()
	os.remove("/tmp/screen_socket")


if __name__ == '__main__':
	main()
