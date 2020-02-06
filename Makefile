#space separated object files we wanna use
OBJS = main.o
CXX = g++
CXXFLAGS = -Wall -Wextra -pedantic-errors -std=c++11

#required for SFML programs 
LDLIBS = -lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system

#'learning' is the executable file name here, can be whatev
learning: $(OBJS)
	$(CXX) -o learning $(OBJS) $(LDLIBS) $(LDFLAGS)

$(OBJS): *.cpp

#dependencies go here
#ie...
#main.o: player.h
#player.o: player.h
#etc...


clean:
	$(RM) learning $(OBJS)

# $(OBJS): main.h

