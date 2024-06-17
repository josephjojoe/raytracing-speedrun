# Define the compiler and compiler flags
CXX = clang++
CXXFLAGS = -std=c++17 -Wall -Wextra -g

# Define the target executable and the source file(s)
TARGET = main
SRCS = main.cc

# Define the object file(s) (derived from the source file names)
OBJS = $(SRCS:.cc=.o)

# Default rule to build the target
all: $(TARGET)

# Rule to build the target executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Rule to build object files
%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Rule to clean the build files
clean:
	rm -f $(TARGET) $(OBJS)

# Phony targets to avoid conflicts with files named 'all' or 'clean'
.PHONY: all clean