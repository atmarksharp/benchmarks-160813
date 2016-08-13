.PHONY: build run clean versions
build:
	mkdir -p bin
	rm -rf bin/*
	gcc -O3 -o bin/fib-c src/fib.c

	ocamlopt src/fib.ml -o bin/fib-ocaml
	rm -rf src/fib.cmi src/fib.cmx src/fib.o

	nim -d:release c src/fib_nim
	rm -rf src/nimcache
	mv src/fib_nim bin/fib_nim 
	go build -o bin/fib-go src/fib.go

run:
	time bin/fib-c
	time bin/fib-ocaml
	time bin/fib-go
	time bin/fib_nim

clean:
	rm -rf bin
	rm -rf src/fib.cmi src/fib.cmx src/fib.o
	rm -rf src/nimcache

versions:
	gcc -v
	@echo ""
	ocamlopt -v
	@echo ""
	nim -v
	@echo ""
	go version
