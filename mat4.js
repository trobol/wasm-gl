if (!('WebAssembly' in window)) {
	var msg = 'WebAssembly not supported';
	alert(msg);
	console.error(msg);
}
function loadWebAssembly(filename, imports) {
	return fetch(filename)
		.then(response => response.arrayBuffer())
		.then(buffer => WebAssembly.compile(buffer))
		.then(module => {
			imports = imports || {};
			imports.env = imports.env || {};
			if (!imports.env.memory) {
				// Setup our Memory import, initializing it
				// to use 256 pages of memory.
				imports.env.memory = new WebAssembly.Memory({ initial: 256 });
			}
			if (!imports.env.__indirect_function_table) {
				// Setup our Table with an inital size of 0,
				// 'anyfunc' is currently the option here
				imports.env.__indirect_function_table = new WebAssembly.Table({ initial: 0, element: 'anyfunc' });
			}


			imports.env.out = function consoleLogString(offset, length) {

				let a = new Float32Array(imports.env.memory.buffer, offset, length);
				console.log(a, offset, length);
			}
			// Create a WebAssembly instance with our compiled
			// module and pass in our import object
			return new WebAssembly.Instance(module, imports);
		});
}
let i = {};
// Call our load function.
loadWebAssembly('/src/mat4.wasm', i).then(instance => {
	// Grab our exports and call our main function

	var exports = instance.exports;
	window.mat4 = {};
	console.log(exports);
	window.mat4.projection = function (width, height, depth) {
		var offset = exports.projection(width, height, depth);

		return new Float32Array(i.env.memory.buffer, offset, 16);

	}
	window.mat4.translation = function (tx, ty, tz) {
		var offset = exports.translation(tx, ty, tz);

		return new Float32Array(i.env.memory.buffer, offset, 16);

	}
	window.mat4.multiply = function (a, b) {
		var offset = exports.multiply(a.byteOffset, b.byteOffset);
		return new Float32Array(i.env.memory.buffer, offset, 16);

	}
	console.log(exports.__heap_base.value);
});
/*
let myArrayPtr = instance.exports.allocateF32Array(length);
let myArray = new Float32Array(instance.exports.memory.buffer, myArrayPtr, length);

// Use myArray as a normal Float32Array in JavaScript, fill in data, etc.


// Process the data in the array.
instance.exports.processF32Array(myArrayPtr, length);

// No need to copy data back to JavaScript, just use myArray directly.
*/