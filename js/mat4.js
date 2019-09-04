if (!('WebAssembly' in window)) {
	var msg = 'WebAssembly not supported';
	alert(msg);
	console.error(msg);
}
function loadWebAssembly(filename, imports) {
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

	return WebAssembly.instantiateStreaming(fetch(filename), imports);
}
let i = {
	env: {
		sinf: Math.sin,
		cosf: Math.cos
	}
};

window.mat4 = function (mat) {
	this.mat = mat || allocate(16);
}

// Call our load function.
loadWebAssembly('mat4.wasm', i).then(({ instance }) => {
	// Grab our exports and call our main function

	var exports = instance.exports;

	window.mat4.projection = function (width, height, depth) {
		var offset = exports.projection(width, height, depth);

		return new mat4(new Float32Array(exports.memory.buffer, offset, 16));

	}

	mat4.prototype = {
		multiply(b) {
			exports.multiply(this.mat.byteOffset, b.byteOffset);
		},
		translate(x, y, z) {
			exports.translate(this.mat.byteOffset, x, y, z);
		},
		scale(x, y, z) {
			exports.scale(this.mat.byteOffset, x, y, z);
		},
		xRotate(angle) {
			exports.xRotate(this.mat.byteOffset, angle);
		},
		yRotate(angle) {
			exports.yRotate(this.mat.byteOffset, angle);
		},
		zRotate(angle) {
			exports.zRotate(this.mat.byteOffset, angle);
		}
	}

})
	.catch(e => {
		console.log(e);
	});
/*
let myArrayPtr = instance.exports.allocateF32Array(length);
let myArray = new Float32Array(instance.exports.memory.buffer, myArrayPtr, length);

// Use myArray as a normal Float32Array in JavaScript, fill in data, etc.


// Process the data in the array.
instance.exports.processF32Array(myArrayPtr, length);

// No need to copy data back to JavaScript, just use myArray directly.
*/