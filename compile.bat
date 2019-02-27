@echo off

clang++ -Ofast --target=wasm32-unknown-unknown-wasm "%1" -c -o "%~n1.wasm" -g -fvisibility=hidden -nostdlib -fno-exceptions
lld -flavor wasm "%~n1.wasm" -o "%~n1.wasm"  --strip-all -allow-undefined-file="%~n1.syms" --demangle --no-entry --import-memory --export=main 
wasm2wat "%~n1.wasm" -o "%~n1.wast"