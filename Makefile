FLAGS = -O3 -Wall -std=c++11

all: server client

server: TCPServer.cpp Group.cpp TCPClient.cpp 
	g++ $(FLAGS) TCPServer.cpp Group.cpp TCPClient.cpp -o server

client: TCPClient.cpp client.cpp
	g++ $(FLAGS) client.cpp TCPClient.cpp -o client

