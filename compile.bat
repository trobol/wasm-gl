@echo off

clang++ --target=wasm32-unknown-unknown-wasm hello_world.cpp -c -O3 -o hello_world.wasm -nostdlib -g
lld -flavor wasm hello_world.wasm -o hello_world.final.wasm --no-entry --export=main --demangle --allow-undefined-file=main.syms
clang++ "%1"  -ObjC++ --target=wasm32-unknown-unknown-wasm --optimize=2 --output  "%~n1.wasm" -v

