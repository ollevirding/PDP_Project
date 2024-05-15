###############################################################################
# Makefile for CGM (Conjugate Gradient Method) project
###############################################################################

CC = mpicc
CFLAGS = -std=c99 -g -O3
LIBS = -lm
BIN = CGM

all: $(BIN)

$(BIN): CGM.o CGM_utils.o
	$(CC) $(CFLAGS) -o $@ CGM.o CGM_utils.o $(LIBS)

CGM.o: CGM.c CGM_utils.h
	$(CC) $(CFLAGS) -c CGM.c

CGM_utils.o: CGM_utils.c CGM_utils.h
	$(CC) $(CFLAGS) -c CGM_utils.c

clean:
	$(RM) $(BIN) *.o
