CXX=g++
CXXFLAGS=
ODIR=obj
LIBS=-ltensorflow
SRCDIR=src
BDIR=bin

_OBJ = main.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: $(SRCDIR)/%.cpp $(DEPS)
	$(CXX) -c -o $@ $< $(CXXFLAGS)

music-source: $(OBJ)
	$(CXX) -o $(BDIR)/$@ $^ $(CXXFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o $(BDIR)/*
