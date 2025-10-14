
CFLAGS = -Wall -Wextra
TARGET = diary
OBJECT = memo.o calendar.o main.o


all: ${TARGET}

${TARGET}: ${OBJECT}
	${CC} -o $@ $^
clean:
	${RM} -rf *.o ${TARGET}
