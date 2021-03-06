FLAGS = -O3 -Wall -std=c++11

all: server client cereal

server: TCPServer.cpp Group.cpp ControlMessage.cpp ClientEntry.cpp
	g++ $(FLAGS) TCPServer.cpp Group.cpp ControlMessage.cpp ClientEntry.cpp -lboost_serialization -pthread -o server

client: client.cpp TCPClient.cpp Group.cpp  ControlMessage.cpp GroupMessage.cpp ClientEntry.cpp
	g++ $(FLAGS) client.cpp TCPClient.cpp Group.cpp ControlMessage.cpp GroupMessage.cpp ClientEntry.cpp -lboost_serialization -pthread -o client

clean:
	rm server client

cereal: main_test_cereal.cpp
	g++ $(FLAGS) main_test_cereal.cpp -o cereal
