import time
import serial
import math
from open_source_rover.rover.roboclaw import Roboclaw
import unittest



rc = Roboclaw("/dev/ttyS0",115200)
rc.Open()
address = [0x80,0x81,0x82,0x83,0x84]

rc.ResetEncoders(address[0])
rc.ResetEncoders(address[1])
rc.ResetEncoders(address[2])

def ResetEncs():
	rc.ResetEncoders(address[0])
	rc.ResetEncoders(address[1])
	rc.ResetEncoders(address[2])


#Wrapper function to spin the Motors with easier interface
def spinMotor(motorID, speed):
		#serial address of roboclaw
		addr = {0: address[3],
				1: address[3],
				2: address[4],
				3: address[4],
				4: address[0],
				5: address[0],
				6: address[1],
				7: address[1],
				8: address[2],
				9: address[2]}

		#drive forward
		if (speed >= 0):
			command = {0: rc.ForwardM1,
					   1: rc.ForwardM2,
					   2: rc.ForwardM1,
					   3: rc.ForwardM2,
					   4: rc.ForwardM1,
					   5: rc.BackwardM2, #backward based on wheel geometry
					   6: rc.ForwardM1,
					   7: rc.ForwardM2,
					   8: rc.BackwardM1,
					   9: rc.ForwardM2}
		else:
			command = {0: rc.BackwardM1,
					   1: rc.BackwardM2,
					   2: rc.BackwardM1,
					   3: rc.BackwardM2,
					   4: rc.BackwardM1,
					   5: rc.ForwardM2,
					   6: rc.BackwardM1,
					   7: rc.BackwardM2,
					   8: rc.ForwardM1,
					   9: rc.BackwardM2}

		speed = abs(speed)
		return command[motorID](addr[motorID],speed)

#Wrapper function to get Encoder values with easier interface
def getEnc(motorID):
	addr = {0: address[3],
			1: address[3],
			2: address[4],
			3: address[4],
			4: address[0],
			5: address[0],
			6: address[1],
			7: address[1],
			8: address[2],
			9: address[2]}
	if (motorID % 2 == 0):
		command = rc.ReadEncM1
	elif (motorID % 2 == 1):
		command = rc.ReadEncM2
	else:
		print "MotorID error"
		return
	cmd = command(addr[motorID])[1]
	if motorID == 5:
		cmd = cmd * -1
	return cmd

def test_motor(motorID,d):
		speed = 20
		ResetEncs()
		spinMotor(motorID,speed * d)
		time.sleep(1)
		spinMotor(motorID,0)
		return getEnc(motorID)

class MotorTestMethods(unittest.TestCase):


	#Testing if Absolute encoders are reading in the correct value range,
	#and quadrature encoders are reading at all
	def test_enc_sigs(self):
		for i in range(10):
			enc = getEnc(i)
			if i < 4:
				self.assertTrue(0 <= enc <= 2000)
			else:
				self.assertTrue(type(enc) is int or type(enc) is long)
	#Test each RoboClaw and make sure it's Logic and Main battery voltage
	#are within acceptable parameters
	def test_Logic_battery0(self):
		self.assertTrue(4.5 <= (rc.ReadLogicBatteryVoltage(address[0])[1])/10.0 <= 5.5)
	def test_Logic_battery1(self):
		self.assertTrue(4.5 <= (rc.ReadLogicBatteryVoltage(address[1])[1])/10.0 <= 5.5)
	def test_Logic_battery2(self):
		self.assertTrue(4.5 <= (rc.ReadLogicBatteryVoltage(address[2])[1])/10.0 <= 5.5)
	def test_Logic_battery3(self):
		self.assertTrue(4.5 <= (rc.ReadLogicBatteryVoltage(address[3])[1])/10.0 <= 5.5)	
	def test_Logic_battery4(self):
		self.assertTrue(4.5 <= (rc.ReadLogicBatteryVoltage(address[4])[1])/10.0 <= 5.5)

	def test_Main_battery0(self):
		self.assertTrue(11.5 <= (rc.ReadMainBatteryVoltage(address[0])[1])/10.0 <= 12.5)
	def test_Main_battery1(self):
		self.assertTrue(11.5 <= (rc.ReadMainBatteryVoltage(address[1])[1])/10.0 <= 12.5)
	def test_Main_battery2(self):
		self.assertTrue(11.5 <= (rc.ReadMainBatteryVoltage(address[2])[1])/10.0 <= 12.5)
	def test_Main_battery3(self):
		self.assertTrue(11.5 <= (rc.ReadMainBatteryVoltage(address[3])[1])/10.0 <= 12.5)
	def test_Main_battery4(self):
		self.assertTrue(11.5 <= (rc.ReadMainBatteryVoltage(address[4])[1])/10.0 <= 12.5)

	#Test that the encoders increase when the motors are moved forward,
	#and they decrease when motors are moved backwards
	def test_motor4_F(self):
		self.assertTrue(test_motor(4,1) > 0, msg = "Encoder Value error, should have read ABOVE 0, instead was :" + str(getEnc(4)))

	def test_motor4_B(self):
		self.assertTrue(test_motor(4,-1) < 0, msg = "Encoder Value error, should have read BELOW 0, instead was : " + str(getEnc(4))) 	

	def test_motor5_F(self):
		self.assertTrue(test_motor(5,1) > 0, msg = "Encoder Value error, should have read ABOVE 0, instead was : " + str(getEnc(5)))

	def test_motor5_B(self):
		self.assertTrue(test_motor(5,-1) < 0, msg = "Encoder Value error, should have read BELOW 0, instead was : " + str(getEnc(5)))

	def test_motor6_F(self):
		self.assertTrue(test_motor(6,1) > 0, msg = "Encoder Value error, should have read ABOVE 0, instead was : " + str(getEnc(6)))

	def test_motor6_B(self):
		self.assertTrue(test_motor(6,-1) < 0, msg = "Encoder Value error, should have read BELOW 0, instead was : " + str(getEnc(6)))

	def test_motor7_F(self):
		self.assertTrue(test_motor(7,1) > 0, msg = "Encoder Value error, should have read ABOVE 0, instead was : " + str(getEnc(7)))

	def test_motor7_B(self):
		self.assertTrue(test_motor(7,-1) < 0, msg = "Encoder Value error, should have read BELOW 0, instead was : " + str(getEnc(7)))

	def test_motor8_F(self):
		self.assertTrue(test_motor(8,1) > 0, msg = "Encoder Value error, should have read ABOVE 0, instead was : " + str(getEnc(8)))

	def test_motor8_B(self):
		self.assertTrue(test_motor(8,-1) < 0, msg = "Encoder Value error, should have read BELOW 0, instead was : " + str(getEnc(8)))

	def test_motor9_F(self):
		self.assertTrue(test_motor(9,1) > 0, msg = "Encoder Value error, should have read ABOVE 0, instead was : " + str(getEnc(9)))

	def test_motor9_B(self):
		self.assertTrue(test_motor(9,-1) < 0, msg = "Encoder Value error, should have read BELOW 0, instead was : " + str(getEnc(9)))


if __name__ == '__main__':
	unittest.main()

