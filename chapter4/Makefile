AS := java -jar /home/timmy/downloads/jasmin-2.4/jasmin.jar

SRC := $(wildcard *.j)
OBJS := $(patsubst %.j, %.class, $(SRC))

all: $(OBJS)

%.class: %.j
	$(AS) $<

.PHONY: clean
clean:
	rm -f $(OBJS)