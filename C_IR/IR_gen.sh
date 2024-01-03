#!/bin/bash
./build/easycc ./test/IR_test_lab4.c -o show.s
clang -S -emit-llvm ./test/IR_test_lab4.c
echo OK
