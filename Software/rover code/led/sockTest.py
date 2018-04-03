import os
import socket
import time



def unixSockConnect():
	print "in unixSockConnect"
	if os.path.exists("/tmp/screen_socket"):
		client = socket.socket(socket.AF_UNIX,socket.SOCK_DGRAM)
		client.connect("/tmp/screen_socket")
		print "connected to socket"
		
	else:
		print "Couldn't connect"
	return client

def main():
	sockConnected = False
	while 1:
		try:
			if sockConnected == True:
				print "sending over screenSocket"
				print screenSocket
				screenSocket.send(str("banana").encode('utf-8'))
			else:
				screenSocket = unixSockConnect()
				sockConnected = True
		except Exception as e:
			print e
		time.sleep(1)
			

if __name__ == "__main__":
	main()
