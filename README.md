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
```
