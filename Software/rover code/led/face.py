#Sample Rover calls to test DisplayData and DisplayUpdaterData

import time
from Display import display
from Updater import updater
import Feature
from open_source_rover.rover import rover
import os
import threading

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
global var
global thread_kill

face_data ={
            'face_on':0,
            'thread_kill': False,
            'need_draw': True
            }


var = 0
thread_kill = False
### Rover Functions Using Objects Initilized below ##
	
def lookLeft():
	leftEye.setDirection(-1)
	#rightEye.setDirection(-1)

def lookStraight():
	leftEye.setDirection(0)
	#rightEye.setDirection(0)
	
def lookRight():
	leftEye.setDirection(1)
	#rightEye.setDirection(1)
	

### Primary Program Code ###
my_display = display()
my_updater = updater(my_display)

#Define 2 eye objects 
leftEye = Feature.Eye(my_display,"8bit", 6,11,[4,2])

rightEye = Feature.Eye(my_display,"8bit", 6,19,[4,2])
mouth = Feature.Mouth(my_display,"happy", 13,15,[4,2])
brow1 = Feature.Eyebrow(my_display,"arc", 3,11,[3])
brow2 = Feature.Eyebrow(my_display,"arc", 3,19,[3])
cheek1 = Feature.Cheek(my_display,"circle", 10,6,[1])
cheek2 = Feature.Cheek(my_display,"circle", 10,24,[1])

connect_status = Feature.Connected(my_display,"single", 2,31,1)

c = 0
'''
leftEye.draw()
rightEye.draw()

mouth.draw()
brow1.draw()
brow2.draw()
cheek1.draw()
cheek2.draw()
connect_status.draw()
'''
draw_flag = 0
counter = 0
prev = [-1]*2
while True:
    try:
	if counter % 200 == 0:
		myfile = open("/home/pi/Desktop/open_source_rover/led/face.txt",'r')
		data = myfile.readline().split(",")
		face,connected = int(data[0]),int(data[1])
		myfile.close()
	if face != 0:
		if face == 1:
			rightEye.setStyle("8bit")
			leftEye.setStyle('8bit')
		elif face == 2:
			rightEye.setStyle('wink')
			#print "trying to wink"
		elif face == 3:
			rightEye.setStyle('wink')
			leftEye.setStyle('wink')
		if prev != face:
			leftEye.draw()
			rightEye.draw()
			mouth.draw()
			brow1.draw()
			brow2.draw()
			cheek1.draw()
			cheek2.draw()
			draw_flag = 0
		
	else:			
		#print "am i here?!"
		my_updater.set_all_to_null(connected)		
	my_updater.refresh(connected)
	time.sleep(0.001)
	counter +=1
	prev = [face,connected]
	#break
    except Exception as e:
        print "here"
        logfile = open("/home/pi/Desktop/rover_code/led_face/log.txt",'w')
        logfile.write(str(e))
        my_updater.set_all_to_null(0)
my_updater.set_all_to_null(connected)
	



def turnOnFace():	
	#Define display and displayUpdater objects and connect them
	my_display = display()
	my_updater = updater(my_display)

	#Define 2 eye objects 
	leftEye = Feature.Eye(my_display,"8bit", 6,11,[4,2])

	rightEye = Feature.Eye(my_display,"8bit", 6,19,[4,2])
	mouth = Feature.Mouth(my_display,"happy", 13,15,[4,2])
	brow1 = Feature.Eyebrow(my_display,"arc", 3,11,[3])
	brow2 = Feature.Eyebrow(my_display,"arc", 3,19,[3])
	cheek1 = Feature.Cheek(my_display,"circle", 10,6,[1])
	cheek2 = Feature.Cheek(my_display,"circle", 10,24,[1])

	c = 0
	leftEye.draw()
	rightEye.draw()

	mouth.draw()
	brow1.draw()
	brow2.draw()
	cheek1.draw()
	cheek2.draw()

	while rover.rover_data['rover_face'] != 0:
		#Draw each object on the matrix and then refresh the screen	
		#my_display.draw(leftEye)

		'''
		if(c==100):
				lookLeft()
				#print my_display.readMatrix()
		elif(c==200):
				lookStraight()
		elif(c==300):
				lookRight()
		elif(c==400):
				lookStraight()
		#elif(c%1000==0 and c > 0):
				#rightEye.wink()
		'''		
		c += 1
		time.sleep(0.005)
		my_updater.refresh()
	my_updater.set_all_to_null()


def draw_Face():
	leftEye.draw()
	rightEye.draw()

	mouth.draw()
	brow1.draw()
	brow2.draw()
	cheek1.draw()
	cheek2.draw()
	face_data['need_draw'] = False
	



def checker():
	while True:
		myfile = open("face.txt",'r')
		face_data['face_on'] = int(myfile.readline())
		myfile.close()
		time.sleep(1)
		

def refresher():
	while face_data['thread_kill'] != True:
		while face_data['face_on'] != 0:
			if face_data['need_draw'] == True:
				draw_Face()
			my_updater.refresh()
			time.sleep(0.005)
		my_updater.set_all_to_null()
		face_data['need_draw'] = True
		time.sleep(1)
		
'''
refresh_thread = threading.Thread(target=refresher)
refresh_thread.start()
try:
	checker()
except:
	print "stopping thread"
	face_data['thread_kill'] = True
	face_data['face_on'] = 0
	my_updater.set_all_to_null()

'''	
