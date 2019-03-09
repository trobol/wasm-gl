(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param f64) (result f64)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param f32 f32 f32) (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (param f32) (result i32)))
  (type (;8;) (func))
  (type (;9;) (func (param f64 f64 f64) (result i32)))
  (type (;10;) (func (param f64) (result i32)))
  (import "env" "abortStackOverflow" (func (;0;) (type 0)))
  (import "env" "___cxa_guard_acquire" (func (;1;) (type 1)))
  (import "env" "___cxa_guard_release" (func (;2;) (type 0)))
  (import "env" "_llvm_cos_f32" (func (;3;) (type 2)))
  (import "env" "_llvm_sin_f32" (func (;4;) (type 2)))
  (import "env" "__memory_base" (global (;0;) i32))
  (import "env" "__table_base" (global (;1;) i32))
  (import "env" "tempDoublePtr" (global (;2;) i32))
  (import "env" "DYNAMICTOP_PTR" (global (;3;) i32))
  (import "global" "NaN" (global (;4;) f64))
  (import "global" "Infinity" (global (;5;) f64))
  (import "env" "memory" (memory (;0;) 256))
  (import "env" "table" (table (;0;) 0 funcref))
  (func (;5;) (type 1) (param i32) (result i32)
    (local i32)
    global.get 8
    local.set 1
    global.get 8
    local.get 0
    i32.add
    global.set 8
    global.get 8
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      local.get 0
      call 0
    end
    local.get 1
    return)
  (func (;6;) (type 3) (result i32)
    global.get 8
    return)
  (func (;7;) (type 0) (param i32)
    local.get 0
    global.set 8)
  (func (;8;) (type 4) (param i32 i32)
    local.get 0
    global.set 8
    local.get 1
    global.set 9)
  (func (;9;) (type 5) (param f32 f32 f32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    global.get 8
    local.set 9
    global.get 8
    i32.const 16
    i32.add
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      i32.const 16
      call 0
    end
    local.get 0
    local.set 16
    local.get 1
    local.set 17
    local.get 2
    local.set 18
    i32.const 1
    local.set 4
    global.get 0
    i32.const 5243328
    i32.add
    i32.load8_s
    local.set 5
    local.get 5
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 0
    i32.eq
    local.set 6
    local.get 6
    i32.eqz
    if  ;; label = @1
      local.get 9
      global.set 8
      global.get 0
      i32.const 0
      i32.add
      return
    end
    global.get 0
    i32.const 5243328
    i32.add
    call 1
    local.set 7
    local.get 7
    i32.const 0
    i32.ne
    local.set 3
    local.get 3
    i32.eqz
    if  ;; label = @1
      local.get 9
      global.set 8
      global.get 0
      i32.const 0
      i32.add
      return
    end
    local.get 16
    local.set 10
    f32.const 0x1p+1 (;=2;)
    local.get 10
    f32.div
    local.set 11
    global.get 0
    i32.const 0
    i32.add
    local.get 11
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 4
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 8
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 12
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 16
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 17
    local.set 12
    f32.const -0x1p+1 (;=-2;)
    local.get 12
    f32.div
    local.set 13
    global.get 0
    i32.const 0
    i32.add
    i32.const 20
    i32.add
    local.get 13
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 24
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 28
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 32
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 36
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 18
    local.set 14
    f32.const 0x1p+1 (;=2;)
    local.get 14
    f32.div
    local.set 15
    global.get 0
    i32.const 0
    i32.add
    i32.const 40
    i32.add
    local.get 15
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 44
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 48
    i32.add
    f32.const -0x1p+0 (;=-1;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 52
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 56
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 0
    i32.add
    i32.const 60
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 5243328
    i32.add
    call 2
    local.get 9
    global.set 8
    global.get 0
    i32.const 0
    i32.add
    return)
  (func (;10;) (type 5) (param f32 f32 f32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32)
    global.get 8
    local.set 8
    global.get 8
    i32.const 16
    i32.add
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      i32.const 16
      call 0
    end
    local.get 0
    local.set 12
    local.get 1
    local.set 13
    local.get 2
    local.set 14
    global.get 0
    i32.const 5243336
    i32.add
    i32.load8_s
    local.set 3
    local.get 3
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 0
    i32.eq
    local.set 4
    local.get 4
    i32.eqz
    if  ;; label = @1
      local.get 8
      global.set 8
      global.get 0
      i32.const 64
      i32.add
      return
    end
    global.get 0
    i32.const 5243336
    i32.add
    call 1
    local.set 5
    local.get 5
    i32.const 0
    i32.ne
    local.set 6
    local.get 6
    i32.eqz
    if  ;; label = @1
      local.get 8
      global.set 8
      global.get 0
      i32.const 64
      i32.add
      return
    end
    global.get 0
    i32.const 64
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 4
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 12
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 16
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 20
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 24
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 28
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 32
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 36
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 40
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 44
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 12
    local.set 9
    global.get 0
    i32.const 64
    i32.add
    i32.const 48
    i32.add
    local.get 9
    f32.store
    local.get 13
    local.set 10
    global.get 0
    i32.const 64
    i32.add
    i32.const 52
    i32.add
    local.get 10
    f32.store
    local.get 14
    local.set 11
    global.get 0
    i32.const 64
    i32.add
    i32.const 56
    i32.add
    local.get 11
    f32.store
    global.get 0
    i32.const 64
    i32.add
    i32.const 60
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 5243336
    i32.add
    call 2
    local.get 8
    global.set 8
    global.get 0
    i32.const 64
    i32.add
    return)
  (func (;11;) (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    global.get 8
    local.set 71
    global.get 8
    i32.const 144
    i32.add
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      i32.const 144
      call 0
    end
    local.get 0
    local.set 26
    local.get 1
    local.set 27
    local.get 26
    local.set 28
    local.get 28
    f32.load
    local.set 344
    local.get 344
    local.set 349
    local.get 26
    local.set 29
    local.get 29
    i32.const 4
    i32.add
    local.set 30
    local.get 30
    f32.load
    local.set 350
    local.get 350
    local.set 354
    local.get 26
    local.set 31
    local.get 31
    i32.const 8
    i32.add
    local.set 32
    local.get 32
    f32.load
    local.set 351
    local.get 351
    local.set 358
    local.get 26
    local.set 33
    local.get 33
    i32.const 12
    i32.add
    local.set 34
    local.get 34
    f32.load
    local.set 352
    local.get 352
    local.set 362
    local.get 26
    local.set 35
    local.get 35
    i32.const 16
    i32.add
    local.set 36
    local.get 36
    f32.load
    local.set 353
    local.get 353
    local.set 367
    local.get 26
    local.set 37
    local.get 37
    i32.const 20
    i32.add
    local.set 38
    local.get 38
    f32.load
    local.set 355
    local.get 355
    local.set 371
    local.get 26
    local.set 39
    local.get 39
    i32.const 24
    i32.add
    local.set 40
    local.get 40
    f32.load
    local.set 356
    local.get 356
    local.set 72
    local.get 26
    local.set 41
    local.get 41
    i32.const 28
    i32.add
    local.set 42
    local.get 42
    f32.load
    local.set 357
    local.get 357
    local.set 76
    local.get 26
    local.set 43
    local.get 43
    i32.const 32
    i32.add
    local.set 44
    local.get 44
    f32.load
    local.set 359
    local.get 359
    local.set 80
    local.get 26
    local.set 45
    local.get 45
    i32.const 36
    i32.add
    local.set 46
    local.get 46
    f32.load
    local.set 360
    local.get 360
    local.set 85
    local.get 26
    local.set 47
    local.get 47
    i32.const 40
    i32.add
    local.set 48
    local.get 48
    f32.load
    local.set 361
    local.get 361
    local.set 92
    local.get 26
    local.set 49
    local.get 49
    i32.const 44
    i32.add
    local.set 50
    local.get 50
    f32.load
    local.set 363
    local.get 363
    local.set 103
    local.get 26
    local.set 51
    local.get 51
    i32.const 48
    i32.add
    local.set 52
    local.get 52
    f32.load
    local.set 364
    local.get 364
    local.set 114
    local.get 26
    local.set 53
    local.get 53
    i32.const 52
    i32.add
    local.set 54
    local.get 54
    f32.load
    local.set 365
    local.get 365
    local.set 125
    local.get 26
    local.set 55
    local.get 55
    i32.const 56
    i32.add
    local.set 56
    local.get 56
    f32.load
    local.set 366
    local.get 366
    local.set 136
    local.get 26
    local.set 57
    local.get 57
    i32.const 60
    i32.add
    local.set 58
    local.get 58
    f32.load
    local.set 368
    local.get 368
    local.set 147
    local.get 27
    local.set 59
    local.get 59
    f32.load
    local.set 369
    local.get 369
    local.set 158
    local.get 27
    local.set 60
    local.get 60
    i32.const 4
    i32.add
    local.set 61
    local.get 61
    f32.load
    local.set 370
    local.get 370
    local.set 169
    local.get 27
    local.set 62
    local.get 62
    i32.const 8
    i32.add
    local.set 63
    local.get 63
    f32.load
    local.set 372
    local.get 372
    local.set 180
    local.get 27
    local.set 64
    local.get 64
    i32.const 12
    i32.add
    local.set 65
    local.get 65
    f32.load
    local.set 373
    local.get 373
    local.set 191
    local.get 27
    local.set 66
    local.get 66
    i32.const 16
    i32.add
    local.set 67
    local.get 67
    f32.load
    local.set 374
    local.get 374
    local.set 202
    local.get 27
    local.set 68
    local.get 68
    i32.const 20
    i32.add
    local.set 69
    local.get 69
    f32.load
    local.set 375
    local.get 375
    local.set 213
    local.get 27
    local.set 2
    local.get 2
    i32.const 24
    i32.add
    local.set 3
    local.get 3
    f32.load
    local.set 73
    local.get 73
    local.set 224
    local.get 27
    local.set 4
    local.get 4
    i32.const 28
    i32.add
    local.set 5
    local.get 5
    f32.load
    local.set 74
    local.get 74
    local.set 235
    local.get 27
    local.set 6
    local.get 6
    i32.const 32
    i32.add
    local.set 7
    local.get 7
    f32.load
    local.set 75
    local.get 75
    local.set 246
    local.get 27
    local.set 8
    local.get 8
    i32.const 36
    i32.add
    local.set 9
    local.get 9
    f32.load
    local.set 77
    local.get 77
    local.set 257
    local.get 27
    local.set 10
    local.get 10
    i32.const 40
    i32.add
    local.set 11
    local.get 11
    f32.load
    local.set 78
    local.get 78
    local.set 268
    local.get 27
    local.set 12
    local.get 12
    i32.const 44
    i32.add
    local.set 13
    local.get 13
    f32.load
    local.set 79
    local.get 79
    local.set 279
    local.get 27
    local.set 14
    local.get 14
    i32.const 48
    i32.add
    local.set 15
    local.get 15
    f32.load
    local.set 81
    local.get 81
    local.set 290
    local.get 27
    local.set 16
    local.get 16
    i32.const 52
    i32.add
    local.set 17
    local.get 17
    f32.load
    local.set 82
    local.get 82
    local.set 301
    local.get 27
    local.set 18
    local.get 18
    i32.const 56
    i32.add
    local.set 19
    local.get 19
    f32.load
    local.set 83
    local.get 83
    local.set 312
    local.get 27
    local.set 20
    local.get 20
    i32.const 60
    i32.add
    local.set 21
    local.get 21
    f32.load
    local.set 84
    local.get 84
    local.set 323
    global.get 0
    i32.const 5243344
    i32.add
    i32.load8_s
    local.set 22
    local.get 22
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 0
    i32.eq
    local.set 23
    local.get 23
    i32.eqz
    if  ;; label = @1
      local.get 71
      global.set 8
      global.get 0
      i32.const 128
      i32.add
      return
    end
    global.get 0
    i32.const 5243344
    i32.add
    call 1
    local.set 24
    local.get 24
    i32.const 0
    i32.ne
    local.set 25
    local.get 25
    i32.eqz
    if  ;; label = @1
      local.get 71
      global.set 8
      global.get 0
      i32.const 128
      i32.add
      return
    end
    local.get 158
    local.set 86
    local.get 349
    local.set 87
    local.get 86
    local.get 87
    f32.mul
    local.set 88
    local.get 169
    local.set 89
    local.get 367
    local.set 90
    local.get 89
    local.get 90
    f32.mul
    local.set 91
    local.get 88
    local.get 91
    f32.add
    local.set 93
    local.get 180
    local.set 94
    local.get 80
    local.set 95
    local.get 94
    local.get 95
    f32.mul
    local.set 96
    local.get 93
    local.get 96
    f32.add
    local.set 97
    local.get 191
    local.set 98
    local.get 114
    local.set 99
    local.get 98
    local.get 99
    f32.mul
    local.set 100
    local.get 97
    local.get 100
    f32.add
    local.set 101
    global.get 0
    i32.const 128
    i32.add
    local.get 101
    f32.store
    local.get 158
    local.set 102
    local.get 354
    local.set 104
    local.get 102
    local.get 104
    f32.mul
    local.set 105
    local.get 169
    local.set 106
    local.get 371
    local.set 107
    local.get 106
    local.get 107
    f32.mul
    local.set 108
    local.get 105
    local.get 108
    f32.add
    local.set 109
    local.get 180
    local.set 110
    local.get 85
    local.set 111
    local.get 110
    local.get 111
    f32.mul
    local.set 112
    local.get 109
    local.get 112
    f32.add
    local.set 113
    local.get 191
    local.set 115
    local.get 125
    local.set 116
    local.get 115
    local.get 116
    f32.mul
    local.set 117
    local.get 113
    local.get 117
    f32.add
    local.set 118
    global.get 0
    i32.const 128
    i32.add
    i32.const 4
    i32.add
    local.get 118
    f32.store
    local.get 158
    local.set 119
    local.get 358
    local.set 120
    local.get 119
    local.get 120
    f32.mul
    local.set 121
    local.get 169
    local.set 122
    local.get 72
    local.set 123
    local.get 122
    local.get 123
    f32.mul
    local.set 124
    local.get 121
    local.get 124
    f32.add
    local.set 126
    local.get 180
    local.set 127
    local.get 92
    local.set 128
    local.get 127
    local.get 128
    f32.mul
    local.set 129
    local.get 126
    local.get 129
    f32.add
    local.set 130
    local.get 191
    local.set 131
    local.get 136
    local.set 132
    local.get 131
    local.get 132
    f32.mul
    local.set 133
    local.get 130
    local.get 133
    f32.add
    local.set 134
    global.get 0
    i32.const 128
    i32.add
    i32.const 8
    i32.add
    local.get 134
    f32.store
    local.get 158
    local.set 135
    local.get 362
    local.set 137
    local.get 135
    local.get 137
    f32.mul
    local.set 138
    local.get 169
    local.set 139
    local.get 76
    local.set 140
    local.get 139
    local.get 140
    f32.mul
    local.set 141
    local.get 138
    local.get 141
    f32.add
    local.set 142
    local.get 180
    local.set 143
    local.get 103
    local.set 144
    local.get 143
    local.get 144
    f32.mul
    local.set 145
    local.get 142
    local.get 145
    f32.add
    local.set 146
    local.get 191
    local.set 148
    local.get 147
    local.set 149
    local.get 148
    local.get 149
    f32.mul
    local.set 150
    local.get 146
    local.get 150
    f32.add
    local.set 151
    global.get 0
    i32.const 128
    i32.add
    i32.const 12
    i32.add
    local.get 151
    f32.store
    local.get 202
    local.set 152
    local.get 349
    local.set 153
    local.get 152
    local.get 153
    f32.mul
    local.set 154
    local.get 213
    local.set 155
    local.get 367
    local.set 156
    local.get 155
    local.get 156
    f32.mul
    local.set 157
    local.get 154
    local.get 157
    f32.add
    local.set 159
    local.get 224
    local.set 160
    local.get 80
    local.set 161
    local.get 160
    local.get 161
    f32.mul
    local.set 162
    local.get 159
    local.get 162
    f32.add
    local.set 163
    local.get 235
    local.set 164
    local.get 114
    local.set 165
    local.get 164
    local.get 165
    f32.mul
    local.set 166
    local.get 163
    local.get 166
    f32.add
    local.set 167
    global.get 0
    i32.const 128
    i32.add
    i32.const 16
    i32.add
    local.get 167
    f32.store
    local.get 202
    local.set 168
    local.get 354
    local.set 170
    local.get 168
    local.get 170
    f32.mul
    local.set 171
    local.get 213
    local.set 172
    local.get 371
    local.set 173
    local.get 172
    local.get 173
    f32.mul
    local.set 174
    local.get 171
    local.get 174
    f32.add
    local.set 175
    local.get 224
    local.set 176
    local.get 85
    local.set 177
    local.get 176
    local.get 177
    f32.mul
    local.set 178
    local.get 175
    local.get 178
    f32.add
    local.set 179
    local.get 235
    local.set 181
    local.get 125
    local.set 182
    local.get 181
    local.get 182
    f32.mul
    local.set 183
    local.get 179
    local.get 183
    f32.add
    local.set 184
    global.get 0
    i32.const 128
    i32.add
    i32.const 20
    i32.add
    local.get 184
    f32.store
    local.get 202
    local.set 185
    local.get 358
    local.set 186
    local.get 185
    local.get 186
    f32.mul
    local.set 187
    local.get 213
    local.set 188
    local.get 72
    local.set 189
    local.get 188
    local.get 189
    f32.mul
    local.set 190
    local.get 187
    local.get 190
    f32.add
    local.set 192
    local.get 224
    local.set 193
    local.get 92
    local.set 194
    local.get 193
    local.get 194
    f32.mul
    local.set 195
    local.get 192
    local.get 195
    f32.add
    local.set 196
    local.get 235
    local.set 197
    local.get 136
    local.set 198
    local.get 197
    local.get 198
    f32.mul
    local.set 199
    local.get 196
    local.get 199
    f32.add
    local.set 200
    global.get 0
    i32.const 128
    i32.add
    i32.const 24
    i32.add
    local.get 200
    f32.store
    local.get 202
    local.set 201
    local.get 362
    local.set 203
    local.get 201
    local.get 203
    f32.mul
    local.set 204
    local.get 213
    local.set 205
    local.get 76
    local.set 206
    local.get 205
    local.get 206
    f32.mul
    local.set 207
    local.get 204
    local.get 207
    f32.add
    local.set 208
    local.get 224
    local.set 209
    local.get 103
    local.set 210
    local.get 209
    local.get 210
    f32.mul
    local.set 211
    local.get 208
    local.get 211
    f32.add
    local.set 212
    local.get 235
    local.set 214
    local.get 147
    local.set 215
    local.get 214
    local.get 215
    f32.mul
    local.set 216
    local.get 212
    local.get 216
    f32.add
    local.set 217
    global.get 0
    i32.const 128
    i32.add
    i32.const 28
    i32.add
    local.get 217
    f32.store
    local.get 246
    local.set 218
    local.get 349
    local.set 219
    local.get 218
    local.get 219
    f32.mul
    local.set 220
    local.get 257
    local.set 221
    local.get 367
    local.set 222
    local.get 221
    local.get 222
    f32.mul
    local.set 223
    local.get 220
    local.get 223
    f32.add
    local.set 225
    local.get 268
    local.set 226
    local.get 80
    local.set 227
    local.get 226
    local.get 227
    f32.mul
    local.set 228
    local.get 225
    local.get 228
    f32.add
    local.set 229
    local.get 279
    local.set 230
    local.get 114
    local.set 231
    local.get 230
    local.get 231
    f32.mul
    local.set 232
    local.get 229
    local.get 232
    f32.add
    local.set 233
    global.get 0
    i32.const 128
    i32.add
    i32.const 32
    i32.add
    local.get 233
    f32.store
    local.get 246
    local.set 234
    local.get 354
    local.set 236
    local.get 234
    local.get 236
    f32.mul
    local.set 237
    local.get 257
    local.set 238
    local.get 371
    local.set 239
    local.get 238
    local.get 239
    f32.mul
    local.set 240
    local.get 237
    local.get 240
    f32.add
    local.set 241
    local.get 268
    local.set 242
    local.get 85
    local.set 243
    local.get 242
    local.get 243
    f32.mul
    local.set 244
    local.get 241
    local.get 244
    f32.add
    local.set 245
    local.get 279
    local.set 247
    local.get 125
    local.set 248
    local.get 247
    local.get 248
    f32.mul
    local.set 249
    local.get 245
    local.get 249
    f32.add
    local.set 250
    global.get 0
    i32.const 128
    i32.add
    i32.const 36
    i32.add
    local.get 250
    f32.store
    local.get 246
    local.set 251
    local.get 358
    local.set 252
    local.get 251
    local.get 252
    f32.mul
    local.set 253
    local.get 257
    local.set 254
    local.get 72
    local.set 255
    local.get 254
    local.get 255
    f32.mul
    local.set 256
    local.get 253
    local.get 256
    f32.add
    local.set 258
    local.get 268
    local.set 259
    local.get 92
    local.set 260
    local.get 259
    local.get 260
    f32.mul
    local.set 261
    local.get 258
    local.get 261
    f32.add
    local.set 262
    local.get 279
    local.set 263
    local.get 136
    local.set 264
    local.get 263
    local.get 264
    f32.mul
    local.set 265
    local.get 262
    local.get 265
    f32.add
    local.set 266
    global.get 0
    i32.const 128
    i32.add
    i32.const 40
    i32.add
    local.get 266
    f32.store
    local.get 246
    local.set 267
    local.get 362
    local.set 269
    local.get 267
    local.get 269
    f32.mul
    local.set 270
    local.get 257
    local.set 271
    local.get 76
    local.set 272
    local.get 271
    local.get 272
    f32.mul
    local.set 273
    local.get 270
    local.get 273
    f32.add
    local.set 274
    local.get 268
    local.set 275
    local.get 103
    local.set 276
    local.get 275
    local.get 276
    f32.mul
    local.set 277
    local.get 274
    local.get 277
    f32.add
    local.set 278
    local.get 279
    local.set 280
    local.get 147
    local.set 281
    local.get 280
    local.get 281
    f32.mul
    local.set 282
    local.get 278
    local.get 282
    f32.add
    local.set 283
    global.get 0
    i32.const 128
    i32.add
    i32.const 44
    i32.add
    local.get 283
    f32.store
    local.get 290
    local.set 284
    local.get 349
    local.set 285
    local.get 284
    local.get 285
    f32.mul
    local.set 286
    local.get 301
    local.set 287
    local.get 367
    local.set 288
    local.get 287
    local.get 288
    f32.mul
    local.set 289
    local.get 286
    local.get 289
    f32.add
    local.set 291
    local.get 312
    local.set 292
    local.get 80
    local.set 293
    local.get 292
    local.get 293
    f32.mul
    local.set 294
    local.get 291
    local.get 294
    f32.add
    local.set 295
    local.get 323
    local.set 296
    local.get 114
    local.set 297
    local.get 296
    local.get 297
    f32.mul
    local.set 298
    local.get 295
    local.get 298
    f32.add
    local.set 299
    global.get 0
    i32.const 128
    i32.add
    i32.const 48
    i32.add
    local.get 299
    f32.store
    local.get 290
    local.set 300
    local.get 354
    local.set 302
    local.get 300
    local.get 302
    f32.mul
    local.set 303
    local.get 301
    local.set 304
    local.get 371
    local.set 305
    local.get 304
    local.get 305
    f32.mul
    local.set 306
    local.get 303
    local.get 306
    f32.add
    local.set 307
    local.get 312
    local.set 308
    local.get 85
    local.set 309
    local.get 308
    local.get 309
    f32.mul
    local.set 310
    local.get 307
    local.get 310
    f32.add
    local.set 311
    local.get 323
    local.set 313
    local.get 125
    local.set 314
    local.get 313
    local.get 314
    f32.mul
    local.set 315
    local.get 311
    local.get 315
    f32.add
    local.set 316
    global.get 0
    i32.const 128
    i32.add
    i32.const 52
    i32.add
    local.get 316
    f32.store
    local.get 290
    local.set 317
    local.get 358
    local.set 318
    local.get 317
    local.get 318
    f32.mul
    local.set 319
    local.get 301
    local.set 320
    local.get 72
    local.set 321
    local.get 320
    local.get 321
    f32.mul
    local.set 322
    local.get 319
    local.get 322
    f32.add
    local.set 324
    local.get 312
    local.set 325
    local.get 92
    local.set 326
    local.get 325
    local.get 326
    f32.mul
    local.set 327
    local.get 324
    local.get 327
    f32.add
    local.set 328
    local.get 323
    local.set 329
    local.get 136
    local.set 330
    local.get 329
    local.get 330
    f32.mul
    local.set 331
    local.get 328
    local.get 331
    f32.add
    local.set 332
    global.get 0
    i32.const 128
    i32.add
    i32.const 56
    i32.add
    local.get 332
    f32.store
    local.get 290
    local.set 333
    local.get 362
    local.set 334
    local.get 333
    local.get 334
    f32.mul
    local.set 335
    local.get 301
    local.set 336
    local.get 76
    local.set 337
    local.get 336
    local.get 337
    f32.mul
    local.set 338
    local.get 335
    local.get 338
    f32.add
    local.set 339
    local.get 312
    local.set 340
    local.get 103
    local.set 341
    local.get 340
    local.get 341
    f32.mul
    local.set 342
    local.get 339
    local.get 342
    f32.add
    local.set 343
    local.get 323
    local.set 345
    local.get 147
    local.set 346
    local.get 345
    local.get 346
    f32.mul
    local.set 347
    local.get 343
    local.get 347
    f32.add
    local.set 348
    global.get 0
    i32.const 128
    i32.add
    i32.const 60
    i32.add
    local.get 348
    f32.store
    global.get 0
    i32.const 5243344
    i32.add
    call 2
    local.get 71
    global.set 8
    global.get 0
    i32.const 128
    i32.add
    return)
  (func (;12;) (type 7) (param f32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    global.get 8
    local.set 6
    global.get 8
    i32.const 32
    i32.add
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      i32.const 32
      call 0
    end
    local.get 0
    local.set 16
    local.get 16
    local.set 19
    local.get 19
    local.set 14
    local.get 14
    local.set 20
    local.get 20
    f64.promote_f32
    call 3
    f32.demote_f64
    local.set 21
    local.get 21
    local.set 17
    local.get 16
    local.set 22
    local.get 22
    local.set 7
    local.get 7
    local.set 8
    local.get 8
    f64.promote_f32
    call 4
    f32.demote_f64
    local.set 9
    local.get 9
    local.set 18
    global.get 0
    i32.const 5243352
    i32.add
    i32.load8_s
    local.set 1
    local.get 1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 0
    i32.eq
    local.set 2
    local.get 2
    i32.eqz
    if  ;; label = @1
      local.get 6
      global.set 8
      global.get 0
      i32.const 192
      i32.add
      return
    end
    global.get 0
    i32.const 5243352
    i32.add
    call 1
    local.set 3
    local.get 3
    i32.const 0
    i32.ne
    local.set 4
    local.get 4
    i32.eqz
    if  ;; label = @1
      local.get 6
      global.set 8
      global.get 0
      i32.const 192
      i32.add
      return
    end
    global.get 0
    i32.const 192
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 4
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 8
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 12
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 16
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 17
    local.set 10
    global.get 0
    i32.const 192
    i32.add
    i32.const 20
    i32.add
    local.get 10
    f32.store
    local.get 18
    local.set 11
    global.get 0
    i32.const 192
    i32.add
    i32.const 24
    i32.add
    local.get 11
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 28
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 32
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 18
    local.set 12
    local.get 12
    f32.neg
    local.set 13
    global.get 0
    i32.const 192
    i32.add
    i32.const 36
    i32.add
    local.get 13
    f32.store
    local.get 17
    local.set 15
    global.get 0
    i32.const 192
    i32.add
    i32.const 40
    i32.add
    local.get 15
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 44
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 48
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 52
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 56
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 192
    i32.add
    i32.const 60
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 5243352
    i32.add
    call 2
    local.get 6
    global.set 8
    global.get 0
    i32.const 192
    i32.add
    return)
  (func (;13;) (type 7) (param f32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    global.get 8
    local.set 6
    global.get 8
    i32.const 32
    i32.add
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      i32.const 32
      call 0
    end
    local.get 0
    local.set 16
    local.get 16
    local.set 19
    local.get 19
    local.set 14
    local.get 14
    local.set 20
    local.get 20
    f64.promote_f32
    call 3
    f32.demote_f64
    local.set 21
    local.get 21
    local.set 17
    local.get 16
    local.set 22
    local.get 22
    local.set 7
    local.get 7
    local.set 8
    local.get 8
    f64.promote_f32
    call 4
    f32.demote_f64
    local.set 9
    local.get 9
    local.set 18
    global.get 0
    i32.const 5243360
    i32.add
    i32.load8_s
    local.set 1
    local.get 1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 0
    i32.eq
    local.set 2
    local.get 2
    i32.eqz
    if  ;; label = @1
      local.get 6
      global.set 8
      global.get 0
      i32.const 256
      i32.add
      return
    end
    global.get 0
    i32.const 5243360
    i32.add
    call 1
    local.set 3
    local.get 3
    i32.const 0
    i32.ne
    local.set 4
    local.get 4
    i32.eqz
    if  ;; label = @1
      local.get 6
      global.set 8
      global.get 0
      i32.const 256
      i32.add
      return
    end
    local.get 17
    local.set 10
    global.get 0
    i32.const 256
    i32.add
    local.get 10
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 4
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 18
    local.set 11
    local.get 11
    f32.neg
    local.set 12
    global.get 0
    i32.const 256
    i32.add
    i32.const 8
    i32.add
    local.get 12
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 12
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 16
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 20
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 24
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 28
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 18
    local.set 13
    global.get 0
    i32.const 256
    i32.add
    i32.const 32
    i32.add
    local.get 13
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 36
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 17
    local.set 15
    global.get 0
    i32.const 256
    i32.add
    i32.const 40
    i32.add
    local.get 15
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 44
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 48
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 52
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 56
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 256
    i32.add
    i32.const 60
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 5243360
    i32.add
    call 2
    local.get 6
    global.set 8
    global.get 0
    i32.const 256
    i32.add
    return)
  (func (;14;) (type 7) (param f32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    global.get 8
    local.set 6
    global.get 8
    i32.const 32
    i32.add
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      i32.const 32
      call 0
    end
    local.get 0
    local.set 16
    local.get 16
    local.set 19
    local.get 19
    local.set 14
    local.get 14
    local.set 20
    local.get 20
    f64.promote_f32
    call 3
    f32.demote_f64
    local.set 21
    local.get 21
    local.set 17
    local.get 16
    local.set 22
    local.get 22
    local.set 7
    local.get 7
    local.set 8
    local.get 8
    f64.promote_f32
    call 4
    f32.demote_f64
    local.set 9
    local.get 9
    local.set 18
    global.get 0
    i32.const 5243368
    i32.add
    i32.load8_s
    local.set 1
    local.get 1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 0
    i32.eq
    local.set 2
    local.get 2
    i32.eqz
    if  ;; label = @1
      local.get 6
      global.set 8
      global.get 0
      i32.const 320
      i32.add
      return
    end
    global.get 0
    i32.const 5243368
    i32.add
    call 1
    local.set 3
    local.get 3
    i32.const 0
    i32.ne
    local.set 4
    local.get 4
    i32.eqz
    if  ;; label = @1
      local.get 6
      global.set 8
      global.get 0
      i32.const 320
      i32.add
      return
    end
    local.get 17
    local.set 10
    global.get 0
    i32.const 320
    i32.add
    local.get 10
    f32.store
    local.get 18
    local.set 11
    global.get 0
    i32.const 320
    i32.add
    i32.const 4
    i32.add
    local.get 11
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 8
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 12
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 18
    local.set 12
    local.get 12
    f32.neg
    local.set 13
    global.get 0
    i32.const 320
    i32.add
    i32.const 16
    i32.add
    local.get 13
    f32.store
    local.get 17
    local.set 15
    global.get 0
    i32.const 320
    i32.add
    i32.const 20
    i32.add
    local.get 15
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 24
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 28
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 32
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 36
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 40
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 44
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 48
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 52
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 56
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 320
    i32.add
    i32.const 60
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 5243368
    i32.add
    call 2
    local.get 6
    global.set 8
    global.get 0
    i32.const 320
    i32.add
    return)
  (func (;15;) (type 5) (param f32 f32 f32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32)
    global.get 8
    local.set 8
    global.get 8
    i32.const 16
    i32.add
    global.set 8
    global.get 8
    global.get 9
    i32.ge_s
    if  ;; label = @1
      i32.const 16
      call 0
    end
    local.get 0
    local.set 12
    local.get 1
    local.set 13
    local.get 2
    local.set 14
    global.get 0
    i32.const 5243376
    i32.add
    i32.load8_s
    local.set 3
    local.get 3
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 0
    i32.eq
    local.set 4
    local.get 4
    i32.eqz
    if  ;; label = @1
      local.get 8
      global.set 8
      global.get 0
      i32.const 384
      i32.add
      return
    end
    global.get 0
    i32.const 5243376
    i32.add
    call 1
    local.set 5
    local.get 5
    i32.const 0
    i32.ne
    local.set 6
    local.get 6
    i32.eqz
    if  ;; label = @1
      local.get 8
      global.set 8
      global.get 0
      i32.const 384
      i32.add
      return
    end
    local.get 12
    local.set 9
    global.get 0
    i32.const 384
    i32.add
    local.get 9
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 4
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 8
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 12
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 16
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 13
    local.set 10
    global.get 0
    i32.const 384
    i32.add
    i32.const 20
    i32.add
    local.get 10
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 24
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 28
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 32
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 36
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    local.get 14
    local.set 11
    global.get 0
    i32.const 384
    i32.add
    i32.const 40
    i32.add
    local.get 11
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 44
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 48
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 52
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 56
    i32.add
    f32.const 0x0p+0 (;=0;)
    f32.store
    global.get 0
    i32.const 384
    i32.add
    i32.const 60
    i32.add
    f32.const 0x1p+0 (;=1;)
    f32.store
    global.get 0
    i32.const 5243376
    i32.add
    call 2
    local.get 8
    global.set 8
    global.get 0
    i32.const 384
    i32.add
    return)
  (func (;16;) (type 8)
    global.get 0
    i32.const 448
    i32.add
    global.set 8
    global.get 8
    i32.const 5242880
    i32.add
    global.set 9)
  (func (;17;) (type 9) (param f64 f64 f64) (result i32)
    local.get 0
    f32.demote_f64
    local.get 1
    f32.demote_f64
    local.get 2
    f32.demote_f64
    call 9)
  (func (;18;) (type 9) (param f64 f64 f64) (result i32)
    local.get 0
    f32.demote_f64
    local.get 1
    f32.demote_f64
    local.get 2
    f32.demote_f64
    call 15)
  (func (;19;) (type 9) (param f64 f64 f64) (result i32)
    local.get 0
    f32.demote_f64
    local.get 1
    f32.demote_f64
    local.get 2
    f32.demote_f64
    call 10)
  (func (;20;) (type 10) (param f64) (result i32)
    local.get 0
    f32.demote_f64
    call 12)
  (func (;21;) (type 10) (param f64) (result i32)
    local.get 0
    f32.demote_f64
    call 13)
  (func (;22;) (type 10) (param f64) (result i32)
    local.get 0
    f32.demote_f64
    call 14)
  (global (;6;) (mut i32) (global.get 2))
  (global (;7;) (mut i32) (global.get 3))
  (global (;8;) (mut i32) (i32.const 0))
  (global (;9;) (mut i32) (i32.const 0))
  (global (;10;) (mut i32) (i32.const 0))
  (global (;11;) (mut i32) (i32.const 0))
  (global (;12;) (mut i32) (i32.const 0))
  (global (;13;) (mut i32) (i32.const 0))
  (global (;14;) (mut i32) (i32.const 0))
  (global (;15;) (mut i32) (i32.const 0))
  (global (;16;) (mut i32) (i32.const 0))
  (global (;17;) (mut f64) (f64.const 0x0p+0 (;=0;)))
  (global (;18;) (mut f64) (global.get 4))
  (global (;19;) (mut f64) (global.get 5))
  (global (;20;) (mut f32) (f32.const 0x0p+0 (;=0;)))
  (global (;21;) (mut f32) (f32.const 0x0p+0 (;=0;)))
  (export "__post_instantiate" (func 16))
  (export "_multiply" (func 11))
  (export "_projection" (func 17))
  (export "_scaling" (func 18))
  (export "_translation" (func 19))
  (export "_xRotation" (func 20))
  (export "_yRotation" (func 21))
  (export "_zRotation" (func 22)))
