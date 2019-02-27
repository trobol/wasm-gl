@echo off

clang++ --std=c++11 --target=wasm32-unknown-unknown-wasm "%1" -c -o "%~n1.wasm" -fno-exceptions
set _tail=%*
call set _tail=%%_tail:*%1=%%
lld  -flavor wasm  "%~n1.wasm" -o "%~n1.wasm"  --strip-all -allow-undefined-file="%~n1.syms" --demangle --no-entry --import-memory %_tail%
wasm2wat "%~n1.wasm" -o "%~n1.wast"