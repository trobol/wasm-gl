(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32) (result i32)))
  (import "env" "memory" (memory (;0;) 2))
  (import "env" "out" (func (;0;) (type 0)))
  (func (;1;) (type 1))
  (func (;2;) (type 2) (param i32 i32) (result i32)
    i32.const 1024
    i32.const 19
    call 0
    i32.const 0)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66592))
  (global (;1;) i32 (i32.const 66592))
  (global (;2;) i32 (i32.const 1043))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func 2))
  (data (;0;) (i32.const 1024) "Hello to the World\00"))
