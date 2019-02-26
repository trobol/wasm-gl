.PHONY: all

all:
	clang++ \
		-g \
		-O3 \
		-o hello_world.wasm \
		-nostartfiles \
		-Wl,--allow-undefined-file=main.syms,--import-memory,--import-table,--demangle,--no-entry,--no-threads \
		-Wl,--export=do_something \
		-fvisibility=hidden \
		hello_world.cpp