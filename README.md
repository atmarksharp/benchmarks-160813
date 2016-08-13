# Benchmark: C vs OCaml vs Go vs Nim

## Usage

```bash
make
make run
```

## Results

```bash
$ make run

time bin/fib-c
267914296
       11.66 real        10.99 user         0.06 sys
time bin/fib-ocaml
267914296
        8.66 real         7.86 user         0.04 sys
time bin/fib-go
267914296
       12.00 real        11.53 user         0.08 sys
time bin/fib_nim
267914296
       11.48 real        11.11 user         0.06 sys

$ make versions

gcc -v
Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
Apple LLVM version 7.3.0 (clang-703.0.31)
Target: x86_64-apple-darwin15.6.0
Thread model: posix
InstalledDir: /Library/Developer/CommandLineTools/usr/bin

ocamlopt -v
The OCaml native-code compiler, version 4.02.3
Standard library directory: /usr/local/lib/ocaml

nim -v
Nim Compiler Version 0.14.3 (2016-08-12) [MacOSX: amd64]
Copyright (c) 2006-2016 by Andreas Rumpf

git hash: b0d9c11e5395b4cb3c1f1294b6dfbaf3f5c1f678
active boot switches: -d:release

go version
go version go1.6.3 darwin/amd64
```
