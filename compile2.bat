@echo off

clang -emit-llvm --target=wasm32 -Oz "%1" -c -o "%~n1.bc" >nul 2>&1

if %ERRORLEVEL% GEQ 1 (
  echo ERR: "clang" failed to generate LLVM Bitcode
  exit /B 1
)

llc -asm-verbose=false -o "%~n1.s" "%~n1.bc"

llc "%~n1.mc" --asm-verbose=false -mtriple=wasm32-unknown-unknown-elf -filetype=asm -o  "%~n1.wast"
if %ERRORLEVEL% GEQ 1 (
  echo ERR: "llc" failed to generate assembly for WASM32
  exit /B 1
)

wat2wasm "%~n1.wast" -o "%~n1.wasm"

if %ERRORLEVEL% GEQ 1 (
  echo ERR: "wast2wasm" failed to generate WebAssembly.
  exit /B 1
)