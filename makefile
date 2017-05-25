minesweeper:minesweeper.o getch.o
	g++ -o $@ $^
minesweeper.o:minesweeper.cpp
	g++ -c -o $@ $<
getch.o:getch.cpp getch.h
	g++ -c -o $@ $<
run:minesweeper
	./minesweeper
install:minesweeper
	mv minesweeper /usr/bin
clean:
	rm *.o