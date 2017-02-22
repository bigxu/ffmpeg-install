# makefile for
LIBSPEEX = /home/soft/ffmpeg
CC = gcc
CFLAGS = -O2 -s -pipe -fomit-frame-pointer -I$(LIBSPEEX)/include
LDFLAGS = -L$(LIBSPEEX)/lib -lspeex -lm
OBJ = fifo.o  SpeexDecode.o  TRSpeex.o

.c.o:	;	$(CC) $(CFLAGS) -c $*.c

all: tspx2wav

tspx2wav: $(OBJ)	
	$(CC) -o $@ $? $(LDFLAGS)

clean:
	rm -rf $(OBJ) tspx2wav *.bak *~

