(module
  (type (;0;) (func (param f32) (result f32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param f32 f32 f32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param f32) (result i32)))
  (type (;6;) (func (param i32 f32 f32 f32)))
  (type (;7;) (func (param i32 f32)))
  (import "env" "cosf" (func $cosf (type 0)))
  (import "env" "sinf" (func $sinf (type 0)))
  (func $__wasm_call_ctors (type 1))
  (func $allocate (type 2) (param i32) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=1024
    local.tee 1
    local.get 0
    i32.const 2
    i32.shl
    i32.add
    i32.store offset=1024
    local.get 1)
  (func $projection (type 3) (param f32 f32 f32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1024
    local.tee 3
    f32.const 0x1p+1 (;=2;)
    local.get 0
    f32.div
    f32.store
    local.get 3
    i64.const 0
    i64.store offset=4 align=4
    local.get 3
    f32.const -0x1p+1 (;=-2;)
    local.get 1
    f32.div
    f32.store offset=20
    local.get 3
    i64.const 0
    i64.store offset=24 align=4
    local.get 3
    i32.const 1065353216
    i32.store offset=60
    local.get 3
    i64.const 1065353216
    i64.store offset=52 align=4
    local.get 3
    i64.const -4647714815446351872
    i64.store offset=44 align=4
    local.get 3
    f32.const 0x1p+1 (;=2;)
    local.get 2
    f32.div
    f32.store offset=40
    i32.const 0
    local.get 3
    i32.const 64
    i32.add
    i32.store offset=1024
    local.get 3
    i32.const 12
    i32.add
    i64.const 0
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    i64.const 0
    i64.store align=4
    local.get 3)
  (func $translation (type 3) (param f32 f32 f32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1024
    local.tee 3
    i32.const 1065353216
    i32.store
    local.get 3
    i64.const 0
    i64.store offset=4 align=4
    local.get 3
    i32.const 1065353216
    i32.store offset=20
    local.get 3
    i64.const 0
    i64.store offset=24 align=4
    local.get 3
    i32.const 1065353216
    i32.store offset=60
    local.get 3
    local.get 2
    f32.store offset=56
    local.get 3
    local.get 1
    f32.store offset=52
    local.get 3
    local.get 0
    f32.store offset=48
    local.get 3
    i64.const 1065353216
    i64.store offset=40 align=4
    i32.const 0
    local.get 3
    i32.const 64
    i32.add
    i32.store offset=1024
    local.get 3
    i32.const 12
    i32.add
    i64.const 0
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    i64.const 0
    i64.store align=4
    local.get 3)
  (func $multiply (type 4) (param i32 i32)
    (local f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    local.get 1
    f32.load offset=12
    local.set 2
    local.get 1
    f32.load offset=8
    local.set 3
    local.get 1
    f32.load
    local.set 4
    local.get 1
    f32.load offset=4
    local.set 5
    local.get 1
    f32.load offset=28
    local.set 6
    local.get 1
    f32.load offset=24
    local.set 7
    local.get 1
    f32.load offset=16
    local.set 8
    local.get 1
    f32.load offset=20
    local.set 9
    local.get 1
    f32.load offset=44
    local.set 10
    local.get 1
    f32.load offset=40
    local.set 11
    local.get 1
    f32.load offset=32
    local.set 12
    local.get 1
    f32.load offset=36
    local.set 13
    local.get 0
    f32.load offset=48
    local.set 14
    local.get 0
    f32.load offset=32
    local.set 15
    local.get 0
    f32.load
    local.set 16
    local.get 0
    f32.load offset=16
    local.set 17
    local.get 0
    f32.load offset=52
    local.set 18
    local.get 0
    f32.load offset=36
    local.set 19
    local.get 0
    f32.load offset=4
    local.set 20
    local.get 0
    f32.load offset=20
    local.set 21
    local.get 0
    f32.load offset=56
    local.set 22
    local.get 0
    f32.load offset=40
    local.set 23
    local.get 0
    f32.load offset=8
    local.set 24
    local.get 0
    f32.load offset=24
    local.set 25
    local.get 0
    local.get 0
    f32.load offset=12
    local.tee 26
    local.get 1
    f32.load offset=48
    local.tee 27
    f32.mul
    local.get 0
    f32.load offset=28
    local.tee 28
    local.get 1
    f32.load offset=52
    local.tee 29
    f32.mul
    f32.add
    local.get 0
    f32.load offset=44
    local.tee 30
    local.get 1
    f32.load offset=56
    local.tee 31
    f32.mul
    f32.add
    local.get 0
    f32.load offset=60
    local.tee 32
    local.get 1
    f32.load offset=60
    local.tee 33
    f32.mul
    f32.add
    f32.store offset=60
    local.get 0
    local.get 24
    local.get 27
    f32.mul
    local.get 25
    local.get 29
    f32.mul
    f32.add
    local.get 23
    local.get 31
    f32.mul
    f32.add
    local.get 22
    local.get 33
    f32.mul
    f32.add
    f32.store offset=56
    local.get 0
    local.get 20
    local.get 27
    f32.mul
    local.get 21
    local.get 29
    f32.mul
    f32.add
    local.get 19
    local.get 31
    f32.mul
    f32.add
    local.get 18
    local.get 33
    f32.mul
    f32.add
    f32.store offset=52
    local.get 0
    local.get 16
    local.get 27
    f32.mul
    local.get 17
    local.get 29
    f32.mul
    f32.add
    local.get 15
    local.get 31
    f32.mul
    f32.add
    local.get 14
    local.get 33
    f32.mul
    f32.add
    f32.store offset=48
    local.get 0
    local.get 26
    local.get 12
    f32.mul
    local.get 28
    local.get 13
    f32.mul
    f32.add
    local.get 30
    local.get 11
    f32.mul
    f32.add
    local.get 32
    local.get 10
    f32.mul
    f32.add
    f32.store offset=44
    local.get 0
    local.get 24
    local.get 12
    f32.mul
    local.get 25
    local.get 13
    f32.mul
    f32.add
    local.get 23
    local.get 11
    f32.mul
    f32.add
    local.get 22
    local.get 10
    f32.mul
    f32.add
    f32.store offset=40
    local.get 0
    local.get 20
    local.get 12
    f32.mul
    local.get 21
    local.get 13
    f32.mul
    f32.add
    local.get 19
    local.get 11
    f32.mul
    f32.add
    local.get 18
    local.get 10
    f32.mul
    f32.add
    f32.store offset=36
    local.get 0
    local.get 16
    local.get 12
    f32.mul
    local.get 17
    local.get 13
    f32.mul
    f32.add
    local.get 15
    local.get 11
    f32.mul
    f32.add
    local.get 14
    local.get 10
    f32.mul
    f32.add
    f32.store offset=32
    local.get 0
    local.get 26
    local.get 8
    f32.mul
    local.get 28
    local.get 9
    f32.mul
    f32.add
    local.get 30
    local.get 7
    f32.mul
    f32.add
    local.get 32
    local.get 6
    f32.mul
    f32.add
    f32.store offset=28
    local.get 0
    local.get 24
    local.get 8
    f32.mul
    local.get 25
    local.get 9
    f32.mul
    f32.add
    local.get 23
    local.get 7
    f32.mul
    f32.add
    local.get 22
    local.get 6
    f32.mul
    f32.add
    f32.store offset=24
    local.get 0
    local.get 20
    local.get 8
    f32.mul
    local.get 21
    local.get 9
    f32.mul
    f32.add
    local.get 19
    local.get 7
    f32.mul
    f32.add
    local.get 18
    local.get 6
    f32.mul
    f32.add
    f32.store offset=20
    local.get 0
    local.get 16
    local.get 8
    f32.mul
    local.get 17
    local.get 9
    f32.mul
    f32.add
    local.get 15
    local.get 7
    f32.mul
    f32.add
    local.get 14
    local.get 6
    f32.mul
    f32.add
    f32.store offset=16
    local.get 0
    local.get 26
    local.get 4
    f32.mul
    local.get 28
    local.get 5
    f32.mul
    f32.add
    local.get 30
    local.get 3
    f32.mul
    f32.add
    local.get 32
    local.get 2
    f32.mul
    f32.add
    f32.store offset=12
    local.get 0
    local.get 24
    local.get 4
    f32.mul
    local.get 25
    local.get 5
    f32.mul
    f32.add
    local.get 23
    local.get 3
    f32.mul
    f32.add
    local.get 22
    local.get 2
    f32.mul
    f32.add
    f32.store offset=8
    local.get 0
    local.get 20
    local.get 4
    f32.mul
    local.get 21
    local.get 5
    f32.mul
    f32.add
    local.get 19
    local.get 3
    f32.mul
    f32.add
    local.get 18
    local.get 2
    f32.mul
    f32.add
    f32.store offset=4
    local.get 0
    local.get 16
    local.get 4
    f32.mul
    local.get 17
    local.get 5
    f32.mul
    f32.add
    local.get 15
    local.get 3
    f32.mul
    f32.add
    local.get 14
    local.get 2
    f32.mul
    f32.add
    f32.store)
  (func $xRotation (type 5) (param f32) (result i32)
    (local i32 f32)
    i32.const 0
    i32.load offset=1024
    local.tee 1
    i32.const 1065353216
    i32.store
    local.get 1
    i64.const 0
    i64.store offset=4 align=4
    local.get 1
    local.get 0
    call $cosf
    local.tee 2
    f32.store offset=40
    local.get 1
    i64.const 0
    i64.store offset=28 align=4
    local.get 1
    local.get 0
    call $sinf
    local.tee 0
    f32.store offset=24
    local.get 1
    local.get 2
    f32.store offset=20
    local.get 1
    i64.const 0
    i64.store offset=44 align=4
    local.get 1
    i32.const 1065353216
    i32.store offset=60
    i32.const 0
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=1024
    local.get 1
    i32.const 12
    i32.add
    i64.const 0
    i64.store align=4
    local.get 1
    local.get 0
    f32.neg
    f32.store offset=36
    local.get 1
    i32.const 52
    i32.add
    i64.const 0
    i64.store align=4
    local.get 1)
  (func $yRotation (type 5) (param f32) (result i32)
    (local f32 i32)
    local.get 0
    call $cosf
    local.set 1
    i32.const 0
    i32.load offset=1024
    local.tee 2
    local.get 1
    f32.store offset=40
    local.get 2
    i32.const 0
    i32.store offset=36
    local.get 2
    local.get 0
    call $sinf
    local.tee 0
    f32.store offset=32
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i64.const 1065353216
    i64.store offset=20 align=4
    local.get 2
    i64.const 0
    i64.store offset=12 align=4
    local.get 2
    i32.const 0
    i32.store offset=4
    local.get 2
    local.get 1
    f32.store
    local.get 2
    i64.const 0
    i64.store offset=44 align=4
    local.get 2
    i32.const 1065353216
    i32.store offset=60
    local.get 2
    local.get 0
    f32.neg
    f32.store offset=8
    i32.const 0
    local.get 2
    i32.const 64
    i32.add
    i32.store offset=1024
    local.get 2
    i32.const 52
    i32.add
    i64.const 0
    i64.store align=4
    local.get 2)
  (func $zRotation (type 5) (param f32) (result i32)
    (local f32 i32)
    local.get 0
    call $cosf
    local.set 1
    i32.const 0
    i32.load offset=1024
    local.tee 2
    local.get 1
    f32.store offset=20
    local.get 2
    i64.const 0
    i64.store offset=8 align=4
    local.get 2
    local.get 0
    call $sinf
    local.tee 0
    f32.store offset=4
    local.get 2
    local.get 1
    f32.store
    local.get 2
    i64.const 0
    i64.store offset=24 align=4
    local.get 2
    i32.const 1065353216
    i32.store offset=40
    local.get 2
    i64.const 0
    i64.store offset=44 align=4
    local.get 2
    i32.const 1065353216
    i32.store offset=60
    local.get 2
    local.get 0
    f32.neg
    f32.store offset=16
    i32.const 0
    local.get 2
    i32.const 64
    i32.add
    i32.store offset=1024
    local.get 2
    i32.const 32
    i32.add
    i64.const 0
    i64.store align=4
    local.get 2
    i32.const 52
    i32.add
    i64.const 0
    i64.store align=4
    local.get 2)
  (func $scaling (type 3) (param f32 f32 f32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1024
    local.tee 3
    local.get 0
    f32.store
    local.get 3
    i64.const 0
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    f32.store offset=20
    local.get 3
    i64.const 0
    i64.store offset=24 align=4
    local.get 3
    local.get 2
    f32.store offset=40
    local.get 3
    i64.const 0
    i64.store offset=44 align=4
    local.get 3
    i32.const 1065353216
    i32.store offset=60
    i32.const 0
    local.get 3
    i32.const 64
    i32.add
    i32.store offset=1024
    local.get 3
    i32.const 12
    i32.add
    i64.const 0
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    i64.const 0
    i64.store align=4
    local.get 3
    i32.const 52
    i32.add
    i64.const 0
    i64.store align=4
    local.get 3)
  (func $translate (type 6) (param i32 f32 f32 f32)
    (local f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    local.get 0
    local.get 0
    f32.load offset=12
    local.tee 4
    local.get 1
    f32.mul
    local.get 0
    f32.load offset=28
    local.tee 5
    local.get 2
    f32.mul
    f32.add
    local.get 0
    f32.load offset=44
    local.tee 6
    local.get 3
    f32.mul
    f32.add
    local.get 0
    f32.load offset=60
    local.tee 7
    f32.add
    f32.store offset=60
    local.get 0
    local.get 0
    f32.load offset=8
    local.tee 8
    local.get 1
    f32.mul
    local.get 0
    f32.load offset=24
    local.tee 9
    local.get 2
    f32.mul
    f32.add
    local.get 0
    f32.load offset=40
    local.tee 10
    local.get 3
    f32.mul
    f32.add
    local.get 0
    f32.load offset=56
    local.tee 11
    f32.add
    f32.store offset=56
    local.get 0
    local.get 0
    f32.load offset=4
    local.tee 12
    local.get 1
    f32.mul
    local.get 0
    f32.load offset=20
    local.tee 13
    local.get 2
    f32.mul
    f32.add
    local.get 0
    f32.load offset=36
    local.tee 14
    local.get 3
    f32.mul
    f32.add
    local.get 0
    f32.load offset=52
    local.tee 15
    f32.add
    f32.store offset=52
    local.get 0
    local.get 0
    f32.load
    local.tee 16
    local.get 1
    f32.mul
    local.get 0
    f32.load offset=16
    local.tee 1
    local.get 2
    f32.mul
    f32.add
    local.get 0
    f32.load offset=32
    local.tee 2
    local.get 3
    f32.mul
    f32.add
    local.get 0
    f32.load offset=48
    local.tee 17
    f32.add
    f32.store offset=48
    local.get 0
    local.get 6
    local.get 4
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 18
    local.get 5
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 19
    f32.add
    f32.add
    local.get 7
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 3
    f32.add
    f32.store offset=44
    local.get 0
    local.get 10
    local.get 8
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 20
    local.get 9
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 21
    f32.add
    f32.add
    local.get 11
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 7
    f32.add
    f32.store offset=40
    local.get 0
    local.get 14
    local.get 12
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 22
    local.get 13
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 23
    f32.add
    f32.add
    local.get 15
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 11
    f32.add
    f32.store offset=36
    local.get 0
    local.get 2
    local.get 16
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 24
    local.get 1
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 25
    f32.add
    f32.add
    local.get 17
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 15
    f32.add
    f32.store offset=32
    local.get 0
    local.get 18
    local.get 5
    f32.add
    local.get 6
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 5
    f32.add
    local.get 3
    f32.add
    f32.store offset=28
    local.get 0
    local.get 20
    local.get 9
    f32.add
    local.get 10
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 6
    f32.add
    local.get 7
    f32.add
    f32.store offset=24
    local.get 0
    local.get 22
    local.get 13
    f32.add
    local.get 14
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 9
    f32.add
    local.get 11
    f32.add
    f32.store offset=20
    local.get 0
    local.get 24
    local.get 1
    f32.add
    local.get 2
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 1
    f32.add
    local.get 15
    f32.add
    f32.store offset=16
    local.get 0
    local.get 4
    local.get 19
    f32.add
    local.get 5
    f32.add
    local.get 3
    f32.add
    f32.store offset=12
    local.get 0
    local.get 8
    local.get 21
    f32.add
    local.get 6
    f32.add
    local.get 7
    f32.add
    f32.store offset=8
    local.get 0
    local.get 12
    local.get 23
    f32.add
    local.get 9
    f32.add
    local.get 11
    f32.add
    f32.store offset=4
    local.get 0
    local.get 16
    local.get 25
    f32.add
    local.get 1
    f32.add
    local.get 15
    f32.add
    f32.store)
  (func $xRotate (type 7) (param i32 f32)
    (local f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    local.get 0
    local.get 0
    f32.load offset=12
    local.tee 2
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 3
    local.get 0
    f32.load offset=28
    local.tee 4
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 5
    f32.add
    local.get 0
    f32.load offset=44
    local.tee 6
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 7
    f32.add
    local.get 0
    f32.load offset=60
    local.tee 8
    f32.add
    f32.store offset=60
    local.get 0
    local.get 0
    f32.load offset=8
    local.tee 9
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 10
    local.get 0
    f32.load offset=24
    local.tee 11
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 12
    f32.add
    local.get 0
    f32.load offset=40
    local.tee 13
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 14
    f32.add
    local.get 0
    f32.load offset=56
    local.tee 15
    f32.add
    f32.store offset=56
    local.get 0
    local.get 0
    f32.load offset=4
    local.tee 16
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 17
    local.get 0
    f32.load offset=20
    local.tee 18
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 19
    f32.add
    local.get 0
    f32.load offset=36
    local.tee 20
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 21
    f32.add
    local.get 0
    f32.load offset=52
    local.tee 22
    f32.add
    f32.store offset=52
    local.get 0
    local.get 0
    f32.load
    local.tee 23
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 24
    local.get 0
    f32.load offset=16
    local.tee 25
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 26
    f32.add
    local.get 0
    f32.load offset=32
    local.tee 27
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 28
    f32.add
    local.get 0
    f32.load offset=48
    local.tee 29
    f32.add
    f32.store offset=48
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    call $sinf
    local.tee 30
    f32.mul
    f32.sub
    local.get 6
    local.get 1
    call $cosf
    local.tee 1
    f32.mul
    f32.add
    local.get 8
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 8
    f32.add
    f32.store offset=44
    local.get 0
    local.get 10
    local.get 11
    local.get 30
    f32.mul
    f32.sub
    local.get 1
    local.get 13
    f32.mul
    f32.add
    local.get 15
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 15
    f32.add
    f32.store offset=40
    local.get 0
    local.get 17
    local.get 18
    local.get 30
    f32.mul
    f32.sub
    local.get 1
    local.get 20
    f32.mul
    f32.add
    local.get 22
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 22
    f32.add
    f32.store offset=36
    local.get 0
    local.get 24
    local.get 25
    local.get 30
    f32.mul
    f32.sub
    local.get 1
    local.get 27
    f32.mul
    f32.add
    local.get 29
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 29
    f32.add
    f32.store offset=32
    local.get 0
    local.get 3
    local.get 1
    local.get 4
    f32.mul
    f32.add
    local.get 30
    local.get 6
    f32.mul
    f32.add
    local.get 8
    f32.add
    f32.store offset=28
    local.get 0
    local.get 10
    local.get 1
    local.get 11
    f32.mul
    f32.add
    local.get 30
    local.get 13
    f32.mul
    f32.add
    local.get 15
    f32.add
    f32.store offset=24
    local.get 0
    local.get 17
    local.get 1
    local.get 18
    f32.mul
    f32.add
    local.get 30
    local.get 20
    f32.mul
    f32.add
    local.get 22
    f32.add
    f32.store offset=20
    local.get 0
    local.get 24
    local.get 1
    local.get 25
    f32.mul
    f32.add
    local.get 30
    local.get 27
    f32.mul
    f32.add
    local.get 29
    f32.add
    f32.store offset=16
    local.get 0
    local.get 2
    local.get 5
    f32.add
    local.get 7
    f32.add
    local.get 8
    f32.add
    f32.store offset=12
    local.get 0
    local.get 9
    local.get 12
    f32.add
    local.get 14
    f32.add
    local.get 15
    f32.add
    f32.store offset=8
    local.get 0
    local.get 16
    local.get 19
    f32.add
    local.get 21
    f32.add
    local.get 22
    f32.add
    f32.store offset=4
    local.get 0
    local.get 23
    local.get 26
    f32.add
    local.get 28
    f32.add
    local.get 29
    f32.add
    f32.store)
  (func $yRotate (type 7) (param i32 f32)
    (local f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    local.get 0
    local.get 0
    f32.load offset=12
    local.tee 2
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 3
    local.get 0
    f32.load offset=28
    local.tee 4
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 5
    f32.add
    local.get 0
    f32.load offset=44
    local.tee 6
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 7
    f32.add
    local.get 0
    f32.load offset=60
    local.tee 8
    f32.add
    f32.store offset=60
    local.get 0
    local.get 0
    f32.load offset=8
    local.tee 9
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 10
    local.get 0
    f32.load offset=24
    local.tee 11
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 12
    f32.add
    local.get 0
    f32.load offset=40
    local.tee 13
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 14
    f32.add
    local.get 0
    f32.load offset=56
    local.tee 15
    f32.add
    f32.store offset=56
    local.get 0
    local.get 0
    f32.load offset=4
    local.tee 16
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 17
    local.get 0
    f32.load offset=20
    local.tee 18
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 19
    f32.add
    local.get 0
    f32.load offset=36
    local.tee 20
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 21
    f32.add
    local.get 0
    f32.load offset=52
    local.tee 22
    f32.add
    f32.store offset=52
    local.get 0
    local.get 0
    f32.load
    local.tee 23
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 24
    local.get 0
    f32.load offset=16
    local.tee 25
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 26
    f32.add
    local.get 0
    f32.load offset=32
    local.tee 27
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 28
    f32.add
    local.get 0
    f32.load offset=48
    local.tee 29
    f32.add
    f32.store offset=48
    local.get 0
    local.get 5
    local.get 2
    local.get 1
    call $sinf
    local.tee 30
    f32.mul
    f32.sub
    local.get 6
    local.get 1
    call $cosf
    local.tee 1
    f32.mul
    f32.add
    local.get 8
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 8
    f32.add
    f32.store offset=44
    local.get 0
    local.get 12
    local.get 9
    local.get 30
    f32.mul
    f32.sub
    local.get 1
    local.get 13
    f32.mul
    f32.add
    local.get 15
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 15
    f32.add
    f32.store offset=40
    local.get 0
    local.get 19
    local.get 16
    local.get 30
    f32.mul
    f32.sub
    local.get 1
    local.get 20
    f32.mul
    f32.add
    local.get 22
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 22
    f32.add
    f32.store offset=36
    local.get 0
    local.get 26
    local.get 23
    local.get 30
    f32.mul
    f32.sub
    local.get 1
    local.get 27
    f32.mul
    f32.add
    local.get 29
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 29
    f32.add
    f32.store offset=32
    local.get 0
    local.get 3
    local.get 4
    f32.add
    local.get 7
    f32.add
    local.get 8
    f32.add
    f32.store offset=28
    local.get 0
    local.get 10
    local.get 11
    f32.add
    local.get 14
    f32.add
    local.get 15
    f32.add
    f32.store offset=24
    local.get 0
    local.get 17
    local.get 18
    f32.add
    local.get 21
    f32.add
    local.get 22
    f32.add
    f32.store offset=20
    local.get 0
    local.get 24
    local.get 25
    f32.add
    local.get 28
    f32.add
    local.get 29
    f32.add
    f32.store offset=16
    local.get 0
    local.get 1
    local.get 2
    f32.mul
    local.get 5
    f32.add
    local.get 6
    local.get 30
    f32.mul
    f32.sub
    local.get 8
    f32.add
    f32.store offset=12
    local.get 0
    local.get 1
    local.get 9
    f32.mul
    local.get 12
    f32.add
    local.get 13
    local.get 30
    f32.mul
    f32.sub
    local.get 15
    f32.add
    f32.store offset=8
    local.get 0
    local.get 1
    local.get 16
    f32.mul
    local.get 19
    f32.add
    local.get 20
    local.get 30
    f32.mul
    f32.sub
    local.get 22
    f32.add
    f32.store offset=4
    local.get 0
    local.get 1
    local.get 23
    f32.mul
    local.get 26
    f32.add
    local.get 27
    local.get 30
    f32.mul
    f32.sub
    local.get 29
    f32.add
    f32.store)
  (func $zRotate (type 7) (param i32 f32)
    (local f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    local.get 0
    local.get 0
    f32.load offset=12
    local.tee 2
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=28
    local.tee 3
    f32.const 0x0p+0 (;=0;)
    f32.mul
    f32.add
    local.tee 4
    local.get 0
    f32.load offset=44
    local.tee 5
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 6
    f32.add
    local.get 0
    f32.load offset=60
    local.tee 7
    f32.add
    f32.store offset=60
    local.get 0
    local.get 0
    f32.load offset=8
    local.tee 8
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=24
    local.tee 9
    f32.const 0x0p+0 (;=0;)
    f32.mul
    f32.add
    local.tee 10
    local.get 0
    f32.load offset=40
    local.tee 11
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 12
    f32.add
    local.get 0
    f32.load offset=56
    local.tee 13
    f32.add
    f32.store offset=56
    local.get 0
    local.get 0
    f32.load offset=4
    local.tee 14
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=20
    local.tee 15
    f32.const 0x0p+0 (;=0;)
    f32.mul
    f32.add
    local.tee 16
    local.get 0
    f32.load offset=36
    local.tee 17
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 18
    f32.add
    local.get 0
    f32.load offset=52
    local.tee 19
    f32.add
    f32.store offset=52
    local.get 0
    local.get 0
    f32.load
    local.tee 20
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=16
    local.tee 21
    f32.const 0x0p+0 (;=0;)
    f32.mul
    f32.add
    local.tee 22
    local.get 0
    f32.load offset=32
    local.tee 23
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 24
    f32.add
    local.get 0
    f32.load offset=48
    local.tee 25
    f32.add
    f32.store offset=48
    local.get 0
    local.get 4
    local.get 5
    f32.add
    local.get 7
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 5
    f32.add
    f32.store offset=44
    local.get 0
    local.get 10
    local.get 11
    f32.add
    local.get 13
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 7
    f32.add
    f32.store offset=40
    local.get 0
    local.get 16
    local.get 17
    f32.add
    local.get 19
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 10
    f32.add
    f32.store offset=36
    local.get 0
    local.get 22
    local.get 23
    f32.add
    local.get 25
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 11
    f32.add
    f32.store offset=32
    local.get 1
    call $sinf
    local.set 4
    local.get 0
    local.get 3
    local.get 1
    call $cosf
    local.tee 1
    f32.mul
    local.get 2
    local.get 4
    f32.mul
    f32.sub
    local.get 6
    f32.add
    local.get 5
    f32.add
    f32.store offset=28
    local.get 0
    local.get 1
    local.get 9
    f32.mul
    local.get 8
    local.get 4
    f32.mul
    f32.sub
    local.get 12
    f32.add
    local.get 7
    f32.add
    f32.store offset=24
    local.get 0
    local.get 1
    local.get 15
    f32.mul
    local.get 14
    local.get 4
    f32.mul
    f32.sub
    local.get 18
    f32.add
    local.get 10
    f32.add
    f32.store offset=20
    local.get 0
    local.get 1
    local.get 21
    f32.mul
    local.get 20
    local.get 4
    f32.mul
    f32.sub
    local.get 24
    f32.add
    local.get 11
    f32.add
    f32.store offset=16
    local.get 0
    local.get 1
    local.get 2
    f32.mul
    local.get 4
    local.get 3
    f32.mul
    f32.add
    local.get 6
    f32.add
    local.get 5
    f32.add
    f32.store offset=12
    local.get 0
    local.get 1
    local.get 8
    f32.mul
    local.get 4
    local.get 9
    f32.mul
    f32.add
    local.get 12
    f32.add
    local.get 7
    f32.add
    f32.store offset=8
    local.get 0
    local.get 1
    local.get 14
    f32.mul
    local.get 4
    local.get 15
    f32.mul
    f32.add
    local.get 18
    f32.add
    local.get 10
    f32.add
    f32.store offset=4
    local.get 0
    local.get 1
    local.get 20
    f32.mul
    local.get 4
    local.get 21
    f32.mul
    f32.add
    local.get 24
    f32.add
    local.get 11
    f32.add
    f32.store)
  (func $scale (type 6) (param i32 f32 f32 f32)
    (local f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    local.get 0
    local.get 0
    f32.load offset=12
    local.tee 4
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=28
    local.tee 5
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 6
    f32.add
    local.tee 7
    local.get 0
    f32.load offset=44
    local.tee 8
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 9
    f32.add
    local.get 0
    f32.load offset=60
    local.tee 10
    f32.add
    f32.store offset=60
    local.get 0
    local.get 0
    f32.load offset=8
    local.tee 11
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=24
    local.tee 12
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 13
    f32.add
    local.tee 14
    local.get 0
    f32.load offset=40
    local.tee 15
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 16
    f32.add
    local.get 0
    f32.load offset=56
    local.tee 17
    f32.add
    f32.store offset=56
    local.get 0
    local.get 0
    f32.load offset=4
    local.tee 18
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=20
    local.tee 19
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 20
    f32.add
    local.tee 21
    local.get 0
    f32.load offset=36
    local.tee 22
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 23
    f32.add
    local.get 0
    f32.load offset=52
    local.tee 24
    f32.add
    f32.store offset=52
    local.get 0
    local.get 0
    f32.load
    local.tee 25
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.get 0
    f32.load offset=16
    local.tee 26
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 27
    f32.add
    local.tee 28
    local.get 0
    f32.load offset=32
    local.tee 29
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 30
    f32.add
    local.get 0
    f32.load offset=48
    local.tee 31
    f32.add
    f32.store offset=48
    local.get 0
    local.get 7
    local.get 8
    local.get 3
    f32.mul
    f32.add
    local.get 10
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 7
    f32.add
    f32.store offset=44
    local.get 0
    local.get 14
    local.get 15
    local.get 3
    f32.mul
    f32.add
    local.get 17
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 8
    f32.add
    f32.store offset=40
    local.get 0
    local.get 21
    local.get 22
    local.get 3
    f32.mul
    f32.add
    local.get 24
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 10
    f32.add
    f32.store offset=36
    local.get 0
    local.get 28
    local.get 29
    local.get 3
    f32.mul
    f32.add
    local.get 31
    f32.const 0x0p+0 (;=0;)
    f32.mul
    local.tee 3
    f32.add
    f32.store offset=32
    local.get 0
    local.get 5
    local.get 4
    local.get 2
    f32.mul
    f32.add
    local.get 9
    f32.add
    local.get 7
    f32.add
    f32.store offset=28
    local.get 0
    local.get 12
    local.get 11
    local.get 2
    f32.mul
    f32.add
    local.get 16
    f32.add
    local.get 8
    f32.add
    f32.store offset=24
    local.get 0
    local.get 19
    local.get 18
    local.get 2
    f32.mul
    f32.add
    local.get 23
    f32.add
    local.get 10
    f32.add
    f32.store offset=20
    local.get 0
    local.get 26
    local.get 25
    local.get 2
    f32.mul
    f32.add
    local.get 30
    f32.add
    local.get 3
    f32.add
    f32.store offset=16
    local.get 0
    local.get 4
    local.get 1
    f32.mul
    local.get 6
    f32.add
    local.get 9
    f32.add
    local.get 7
    f32.add
    f32.store offset=12
    local.get 0
    local.get 11
    local.get 1
    f32.mul
    local.get 13
    f32.add
    local.get 16
    f32.add
    local.get 8
    f32.add
    f32.store offset=8
    local.get 0
    local.get 18
    local.get 1
    f32.mul
    local.get 20
    f32.add
    local.get 23
    f32.add
    local.get 10
    f32.add
    f32.store offset=4
    local.get 0
    local.get 25
    local.get 1
    f32.mul
    local.get 27
    f32.add
    local.get 30
    f32.add
    local.get 3
    f32.add
    f32.store)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 129)
  (global (;0;) (mut i32) (i32.const 8389648))
  (global (;1;) i32 (i32.const 8389648))
  (global (;2;) i32 (i32.const 1028))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1024))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "__dso_handle" (global 3))
  (export "allocate" (func $allocate))
  (export "projection" (func $projection))
  (export "translation" (func $translation))
  (export "multiply" (func $multiply))
  (export "xRotation" (func $xRotation))
  (export "yRotation" (func $yRotation))
  (export "zRotation" (func $zRotation))
  (export "scaling" (func $scaling))
  (export "translate" (func $translate))
  (export "xRotate" (func $xRotate))
  (export "yRotate" (func $yRotate))
  (export "zRotate" (func $zRotate))
  (export "scale" (func $scale))
  (export "bump_pointer" (global 4))
  (data (;0;) (i32.const 1024) "\10\04\80\00"))
