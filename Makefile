DC := ldc2
SED := sed
DCFLAGS := -O3


afuck: src/*
	$(DC) $(DCFLAGS) -of=$@ $?

clean:
	$(RM) afuck *.o

test: afuck
	./afuck examples/helloworld.af

.PHONY: clean

examples/a.aaf:
examples/helloworld.aaf:

%.aaf: %.af
	$(SED) -f tr.sed $? > $@
