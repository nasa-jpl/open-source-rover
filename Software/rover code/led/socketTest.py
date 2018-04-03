import os
import socket

# Example client for connecting to Unix socket
if os.path.exists("/tmp/screen_socket"):
    os.remove("/tmp/screen_socket")

print("Opening socket...")
server = socket.socket(socket.AF_UNIX, socket.SOCK_DGRAM)
server.bind("/tmp/screen_socket")

print("Listening...")
while True:
    datagram = server.recv(1024)
    print datagram
    if not datagram:
        break
    else:
        if "DONE" == datagram.decode('utf-8'):
            break
print("-" * 20)
print("Shutting down...")
server.close()
os.remove("/tmp/screen_socket")
print("Done")
