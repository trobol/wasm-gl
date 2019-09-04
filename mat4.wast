(module
  (type (;0;) (func))
  (type (;1;) (func (param f32 f32 f32) (result i32)))
  (import "env" "memory" (memory (;0;) 2))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param f32 f32 f32) (result i32)
    (local i32 i32 i32 i32 f32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    global.get 0
    local.set 3
    i32.const 80
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.set 6
    f32.const 0x1p+0 (;=1;)
    local.set 7
    i32.const 0
    local.set 8
    local.get 8
    f32.convert_i32_s
    local.set 9
    f32.const -0x1p+0 (;=-1;)
    local.set 10
    f32.const 0x1p+1 (;=2;)
    local.set 11
    f32.const -0x1p+1 (;=-2;)
    local.set 12
    local.get 5
    local.get 0
    f32.store offset=76
    local.get 5
    local.get 1
    f32.store offset=72
    local.get 5
    local.get 2
    f32.store offset=68
    local.get 5
    f32.load offset=76
    local.set 13
    local.get 11
    local.get 13
    f32.div
    local.set 14
    local.get 5
    local.get 14
    f32.store
    local.get 5
    local.get 9
    f32.store offset=4
    local.get 5
    local.get 9
    f32.store offset=8
    local.get 5
    local.get 9
    f32.store offset=12
    local.get 5
    local.get 9
    f32.store offset=16
    local.get 5
    f32.load offset=72
    local.set 15
    local.get 12
    local.get 15
    f32.div
    local.set 16
    local.get 5
    local.get 16
    f32.store offset=20
    local.get 5
    local.get 9
    f32.store offset=24
    local.get 5
    local.get 9
    f32.store offset=28
    local.get 5
    local.get 9
    f32.store offset=32
    local.get 5
    local.get 9
    f32.store offset=36
    local.get 5
    f32.load offset=68
    local.set 17
    local.get 11
    local.get 17
    f32.div
    local.set 18
    local.get 5
    local.get 18
    f32.store offset=40
    local.get 5
    local.get 9
    f32.store offset=44
    local.get 5
    local.get 10
    f32.store offset=48
    local.get 5
    local.get 7
    f32.store offset=52
    local.get 5
    local.get 9
    f32.store offset=56
    local.get 5
    local.get 7
    f32.store offset=60
    local.get 6
    return)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66560))
  (global (;1;) i32 (i32.const 66560))
  (global (;2;) i32 (i32.const 1024))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "projection" (func 1)))
