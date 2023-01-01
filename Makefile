CFLAGS   = -Wall -Wextra -Werror
JULIA_FLAGS = $(shell $(JULIA_DIR)/share/julia/julia-config.jl --cflags --ldflags --ldlibs)

all: main.c
	cc -o debug main.c $(CFLAGS) $(JULIA_FLAGS)

clean:
	rm ./debug
