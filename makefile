.PHONY:clean
CC = g++
CFLAGS = -Wall -g
BIN = miniftpd
OBJS = main.o sysutil.o
LIBS=-lcrypt

$(BIN):$(OBJS)
	$(CC) $(CFLAGS) $^ -o $@


%.o:%.cpp
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f *.o $(BIN)