CC = clang
CFLAGS = -Wall -Wextra -I./include -g
LIBS = -L./lib -lunity

all: run

http_server: src/main.c
	$(CC) $(CFLAGS) -o build/$@ $^

run: http_server
	./build/http_server

test: tests/test_http_server.c src/greet.c
	$(CC) $(CFLAGS) -o build/test_http_server $^ $(LIBS)
	./build/test_http_server

debug: http_server
	lldb ./build/http_server

debug_test: test
	lldb ./build/test_http_server

clean:
	rm -f build/http_server build/test_http_server
