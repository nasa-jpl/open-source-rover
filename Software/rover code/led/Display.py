#Framework for DisplayData
#Manages RGBmatrix where the data is saved

import numpy as np
import Feature

class display():
	def __init__(self):
		self.RGBmatrix = [[0 for y in range(32)] for x in range(16)]
		self.saveMatrix = [[0 for y in range(32)] for x in range(16)]
		self.changeFlag = True
	def writeMatrix(self):
		self.changeFlag = True
		self.saveMatrix = self.RGBmatrix
		#print self.saveMatrix

	def readMatrix(self):
		self.changeFlag = False
		return self.saveMatrix

	def readRGB(self):
		return self.RGBmatrix
	def hasChanged(self):
		return self.changeFlag

	def setPixelColor(self,x,y,c):
		self.RGBmatrix[x][y] = c
		self.writeMatrix()

	def fillColor(self,x1,y1,x2,y2,c):
		for x in range(x1, x2+1):
			for y in range(y1,y2+1):
				self.RGBmatrix[x][y] = c
		#print self.RGBmatrix
		self.writeMatrix()

	def draw(self,feature):
		if(type(feature).__name__ == 'Eye'):
			Feature.Eye.draw(feature)
		elif(type(feature).__name__ == 'Mouth'):
			Feature.Mouth.draw(feature)
		elif(type(feature).__name__ == 'Eyebrow'):
			Feature.Eyebrow.draw(feature)
		elif(type(feature).__name__ == 'Cheek'):
			Feature.Cheek.draw(feature)
		self.writeMatrix()
