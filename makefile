CC=g++
CPPFLAGS=-std=c++11
minesweeper:minesweeper.o
	${CC} ${CPPFLAGS} -o $@ $^
minesweeper.o:minesweeper.cpp
	${CC} ${CPPFLAGS} -c -o $@ $<
run:minesweeper
	./minesweeper
install:minesweeper
	mv minesweeper /usr/bin
uninstall:
	rm /usr/share/bash-completion/completions/minesweeper
	rm /usr/bin/minesweeper
clean:
	rm *.o
completion:
	cp completion.sh /usr/share/bash-completion/completions/minesweeper
