#Framework for FeatureData
#Defines and controls Feature objects that can be placed on the Display

#from Updater import Updater

'''
Feature List
	Eye(style,x,y,[c1,c2])
		8bit
		wink
'''

class Feature():
	def __init__(self,Display,style,x,y,c):
		self.display = Display
		self.style = style
		self.x = x
		self.y = y
		self.colors = c

	def setStyle(self,style):
		self.style = style

	def setCenter(self,x,y):
		self.x = x
		self.y = y

	def setX(self,x):
		self.x = x

	def setY(self,y):
		self.y = y

	def setColors(self,colors):
		self.colors = colors

	def getStyle(self):
		return self.style

	def getLoc(self):
		return self.x,self.y

	def getColors(self):
		return self.colors

class Eye(Feature):

	def __init__(self,display,style,x,y,colors):
		self.direction = 0
		self.prev_style = None
		Feature.__init__(self,display,style,x,y,colors)

	def setDirection(self,direction):
		self.direction = direction

	def getPrevStyle(self):
		return self.prev_style

	def wink(self):
		self.prev_style = self.style
		self.style = "wink"
		self.draw()
	#Determines Eye type and draws corresponding image in RGBmatrix
	def draw(self):
		display,style = self.display, self.style
		x,y = self.x, self.y
		colors,direction = self.colors, self.direction
		#clears 5x5 pixel block for eye object
		##IS THIS NECCESSARY?!
		display.fillColor(x-2,y-2,x+2,y+2,0)
		if(style == "8bit"):
			display.fillColor(x-1,y-2,x+1,y-2,colors[0])
			display.fillColor(x-1,y+2,x+1,y+2,colors[0])
			display.fillColor(x-2,y-1,x-2,y+1,colors[0])
			display.fillColor(x+2,y-1,x+2,y+1,colors[0])
			display.fillColor(x-1,y-1,x+1,y+1,colors[1])

			if(direction == 0):
				display.fillColor(x+1,y-1,x+1,y+1,7)
				display.setPixelColor(x,y,7)

			elif(direction < 0):
				display.fillColor(x,y,x+1,y+1,7)
				display.setPixelColor(x,y,colors[1])

			elif(direction > 0):
				display.fillColor(x,y-1,x+1,y,7)
				display.setPixelColor(x,y,colors[1])

		elif(style == "wink"):
			display.setPixelColor(x-2,y, colors[0])
			display.setPixelColor(x-1,y+1,colors[0])
			display.setPixelColor(x-1,y-1,colors[0])
			display.setPixelColor(x,y-2,colors[0])
			display.setPixelColor(x,y+2,colors[0])

		else:
			display.fillColor(x-2,y-2,x+2,y+2,0)
class Mouth(Feature):

	#initilize object variables
	def __init__(self,display,style,x,y,colors):
		Feature.__init__(self,display,style,x,y,colors)

	#Determines Mouth type and draws corresponding image in RGBmatrix
	def draw(self):
		display,style = self.display, self.style
		x,y = self.x, self.y
		colors= self.colors

		if(style == "happy"):
			display.fillColor(x+1,y-2,x+1,y+2,colors[0])
			display.setPixelColor(x,y-3,colors[0])
			display.setPixelColor(x,y+3,colors[0])
		else:
			display.fillColor(x+1,y-2,x+1,y+2,0)
			display.setPixelColor(x,y-3,0)
			display.setPixelColor(x,y+3,0)
class Eyebrow(Feature):
	#initilize object variables
	def __init__(self,display,style,x,y,colors):
		Feature.__init__(self,display,style,x,y,colors)

	#Determines Eyebrow type and draws corresponding image in RGBmatrix
	def draw(self):
		display,style = self.display, self.style
		x,y = self.x, self.y
		colors= self.colors

		#clears 3x10 pixel block for mouth object
		display.fillColor(x-1,y-5,x,y+5,0)

		if(style == "arc"):
			display.fillColor(x-1,y-1,x-1,y+1,colors[0])
			display.setPixelColor(x,y-2,colors[0])
			display.setPixelColor(x,y+2,colors[0])
		else:
			display.fillColor(x-1,y-1,x-1,y+1,0)
			display.setPixelColor(x,y-2,0)
			display.setPixelColor(x,y+2,0)

class Cheek(Feature):
	#initilize object variables
	def __init__(self,display,style,x,y,colors):
		Feature.__init__(self,display,style,x,y,colors)

	#Determines Cheek type and draws corresponding image in RGBmatrix
	def draw(self):
		display,style = self.display, self.style
		x,y = self.x, self.y
		colors= self.colors

		if(style == "circle"):
			display.setPixelColor(x-2,y-1,colors[0])
			display.setPixelColor(x,y-2,colors[0])
			display.setPixelColor(x+2,y-1,colors[0])
			display.setPixelColor(x+2,y+1,colors[0])
			display.setPixelColor(x,y+2,colors[0])
			display.setPixelColor(x-2,y+1,colors[0])

		else:
			display.setPixelColor(x-2,y-1,0)
			display.setPixelColor(x,y-2,0)
			display.setPixelColor(x+2,y-1,0)
			display.setPixelColor(x+2,y+1,0)
			display.setPixelColor(x,y+2,0)
			display.setPixelColor(x-2,y+1,0)
class Connected(Feature):

	def __init__(self,display,style,x,y,colors):
		Feature.__init__(self,display,style,x,y,colors)
		self.connected = 0
	def draw(self):
		display,style = self.display, self.style
		x,y = self.x, self.y
		colors = self.colors
		if self.connected == 1:
			display.setPixelColor(x,y,2)
		else:
			display.setPixelColor(x,y,1)
	def set_connect_status(self,status):
		self.connected = status

