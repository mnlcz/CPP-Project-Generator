CC = g++
CFLAGS = -Wall -Wextra

BIN = build/main
SRC = $(wildcard *.cpp *.hpp *.h)

.PHONY: all run clean
all: $(BIN)

run: $(BIN)
	$<

clean:
	@- rm build/*

$(BIN): $(SRC)
	$(CC) $(CFLAGS) $(filter %.cpp, $^) -o $@
