import random
import redis
from os import environ
import socket
import socket, threading
from time import sleep

min = int(environ.get('MSGEN_RANDOM_MIN')) if environ.get('MSGEN_RANDOM_MIN') else 0
max = int(environ.get('MSGEN_RANDOM_MAX')) if environ.get('MSGEN_RANDOM_MAX') else 10
redis_host = environ.get('REDIS_HOST') if environ.get('REDIS_HOST') else 'redis'
redis_msg_topic = environ.get('REDIS_MSG_TOPIC') if environ.get('REDIS_MSG_TOPIC') else 'messages'
socket_host = environ.get('SOCKET_HOST') if environ.get('SOCKET_HOST') else ''
socket_port = environ.get('SOCKET_PORT') if environ.get('SOCKET_PORT') else 16980


host_ip = socket.gethostbyname("localhost")
port = socket_port
print("host is ", host_ip)
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
print("socket successfully created")
s.bind(('', port))
print("socket bind to %s" % (port))

s.listen(5)
print("socket is listening")


def server_func():
    while True:
        c, addr = s.accept()
        print("got connection from", addr)

def client_func():
    s2 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s2.connect(("localhost", port))
    print("\n")
    while True:
        num = random.randrange( min , max)
        s2.send(str(num).encode())
        #print(num)

if __name__ == '__main__':
    t1 = threading.Thread(target=server_func)
    t1.start()
    sleep(1)
    t2 = threading.Thread(target=client_func)
    t2.start()