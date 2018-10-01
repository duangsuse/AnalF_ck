DC := ldc2
DCFLAGS := -O3


afuck: src/*
	$(DC) $(DCFLAGS) -of=$@ $?

clean:
	$(RM) afuck *.o

test: afuck
	./afuck examples/helloworld.af

.PHONY: clean
