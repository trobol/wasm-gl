	.text
	.file	"hello_world.cpp"
	.section	.text.main,"",@
	.hidden	main
	.globl	main
	.type	main,@function
main:
	.functype	main (i32, i32) -> (i32)
	i32.const	.L.str
	i32.const	11
	call	out
	i32.const	0
	end_function
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object
	.section	.rodata..L.str,"passive",@
.L.str:
	.asciz	"Hello World"
	.size	.L.str, 12


	.ident	"clang version 9.0.0 (trunk 354842)"
	.functype	out (i32, i32) -> ()
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	20
	.ascii	"9.0.0 (trunk 354842)"
	.section	.rodata..L.str,"passive",@
