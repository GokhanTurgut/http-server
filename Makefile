CC = clang
CFLAGS = -Wall -Wextra -I./include
LIBS = -L./lib -lunity

all: run

http_server: src/main.c
	$(CC) $(CFLAGS) -o build/$@ $^

run: http_server
	./build/http_server

test: tests/test_http_server.c
	$(CC) $(CFLAGS) -o build/test_http_server $^ $(LIBS)
	./build/test_http_server

clean:
	rm -f build/http_server build/test_http_server
