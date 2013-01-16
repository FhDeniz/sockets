#Makefile
#
# Instrucciones para compilar

NAME = main
OBJS = main.o
CC = g++
CFLAGS = -Wall -O2

all: $(OBJS) $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c 
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -rf $(OBJS) $(NAME)



