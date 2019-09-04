#ifndef WASM_H
#define WASM_H

typedef signed char i8;
typedef unsigned char u8;
typedef signed short i16;
typedef unsigned short u16;
typedef signed int i32;
typedef unsigned int u32;
typedef signed long long i64;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;

extern u8 __heap_base;

#define var __auto_type
#define let __auto_type const

#define care __attribute__((warn_unused_result))
#define unused __attribute__((unused))
#define unreachable __builtin_unreachable()

#define export
#define import extern
#ifdef DEBUG
#define assume(x) assert(x)
#else
#define assume(x) __builtin_assume(x)
#endif

#endif