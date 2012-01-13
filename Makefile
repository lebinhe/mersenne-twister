TARGETS = mersenne-twister.o test-mt test-bench test-run
CXXFLAGS = -W -Wall -O3 -fomit-frame-pointer

all: $(TARGETS)

check: all
	./test-mt
	./test-bench

test-mt: mersenne-twister.o
test-bench: mersenne-twister.o
test-run: mersenne-twister.o

clean:
	rm -f $(TARGETS)
