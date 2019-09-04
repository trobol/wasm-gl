var cubeRotation = 0.0;
var size = 10;
var canvas;
window.onload = () => {

	canvas = document.getElementById('canvas');
	gl.init(canvas).then(() => {
		main();
	});
}

function main() {

	if (!gl) {
		return;
	}


	var program = gl.default;
	// look up where the vertex data needs to go.
	var positionLocation = gl.getAttribLocation(program, "a_position");

	// lookup uniforms
	var matrixLocation = gl.getUniformLocation(program, "u_matrix");
	var timeLocation = gl.getUniformLocation(program, 'u_time');

	// Create a buffer to put positions in
	var positionBuffer = gl.createBuffer();

	gl.enable(gl.BLEND);
	gl.blendFuncSeparate(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA, gl.ZERO, gl.ONE);

	gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);

	// Put geometry data into buffer
	setGeometry(gl);

	function radToDeg(r) {
		return r * 180 / Math.PI;
	}

	function degToRad(d) {
		return d * Math.PI / 180;
	}
	// Tell it to use our program (pair of shaders)
	gl.useProgram(program);

	// Turn on the attribute
	gl.enableVertexAttribArray(positionLocation);

	// Bind the position buffer.
	gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);

	// Tell the attribute how to get data out of positionBuffer (ARRAY_BUFFER)
	var size = 3;          // 3 components per iteration
	var type = gl.FLOAT;   // the data is 32bit floats
	var normalize = false; // don't normalize the data
	var stride = 0;        // 0 = move forward size * sizeof(type) each iteration to get the next position
	var offset = 0;        // start at the beginning of the buffer
	gl.vertexAttribPointer(
		positionLocation, size, type, normalize, stride, offset);






	setGeometry(gl);


	var translation = [100, 70, 0];
	var rotation = [degToRad(45), 0, 0];
	var scale = [200, 200, 200];


	let r = rotation[1] * 20;
	let t = (rotation[1] % 2) - rotation[1] % 1;

	// Compute the matrices
	var matrix = mat4.projection(gl.canvas.clientWidth, gl.canvas.clientHeight, 1000);
	var box = [translation[0] - scale[0], translation[1] - scale[1] * 2];
	translation[0] = gl.canvas.clientWidth / 2 + (t) * (box[0] / 2);
	translation[1] = gl.canvas.clientHeight / 2;

	matrix.translate(translation[0], translation[1], translation[2]);
	matrix.xRotate(rotation[0]);
	matrix.yRotate(rotation[1]);
	matrix.zRotate(rotation[2]);
	matrix.scale(scale[0], scale[1], scale[2]);

	console.log(matrix);



	drawScene(0);



	// Draw the scene.
	function drawScene(timeStamp) {
		gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);

		matrix.xRotate(0.002);
		matrix.yRotate(0.001);
		// Set the matrix.
		gl.uniformMatrix4fv(matrixLocation, false, matrix.mat);


		gl.resize();

		gl.uniform1f(timeLocation, timeStamp / 1000);


		gl.drawArrays(gl.Point, 0, 1000);
		requestAnimationFrame(drawScene);
	}
}

var m4 = {

	projection: function (width, height, depth) {
		// Note: This matrix flips the Y axis so 0 is at the top.
		return [
			2 / width, 0, 0, 0,
			0, -2 / height, 0, 0,
			0, 0, 2 / depth, 0,
			-1, 1, 0, 1,
		];
	},

	multiply: function (a, b) {
		var a00 = a[0 * 4 + 0];
		var a01 = a[0 * 4 + 1];
		var a02 = a[0 * 4 + 2];
		var a03 = a[0 * 4 + 3];
		var a10 = a[1 * 4 + 0];
		var a11 = a[1 * 4 + 1];
		var a12 = a[1 * 4 + 2];
		var a13 = a[1 * 4 + 3];
		var a20 = a[2 * 4 + 0];
		var a21 = a[2 * 4 + 1];
		var a22 = a[2 * 4 + 2];
		var a23 = a[2 * 4 + 3];
		var a30 = a[3 * 4 + 0];
		var a31 = a[3 * 4 + 1];
		var a32 = a[3 * 4 + 2];
		var a33 = a[3 * 4 + 3];
		var b00 = b[0 * 4 + 0];
		var b01 = b[0 * 4 + 1];
		var b02 = b[0 * 4 + 2];
		var b03 = b[0 * 4 + 3];
		var b10 = b[1 * 4 + 0];
		var b11 = b[1 * 4 + 1];
		var b12 = b[1 * 4 + 2];
		var b13 = b[1 * 4 + 3];
		var b20 = b[2 * 4 + 0];
		var b21 = b[2 * 4 + 1];
		var b22 = b[2 * 4 + 2];
		var b23 = b[2 * 4 + 3];
		var b30 = b[3 * 4 + 0];
		var b31 = b[3 * 4 + 1];
		var b32 = b[3 * 4 + 2];
		var b33 = b[3 * 4 + 3];
		return [
			b00 * a00 + b01 * a10 + b02 * a20 + b03 * a30,
			b00 * a01 + b01 * a11 + b02 * a21 + b03 * a31,
			b00 * a02 + b01 * a12 + b02 * a22 + b03 * a32,
			b00 * a03 + b01 * a13 + b02 * a23 + b03 * a33,
			b10 * a00 + b11 * a10 + b12 * a20 + b13 * a30,
			b10 * a01 + b11 * a11 + b12 * a21 + b13 * a31,
			b10 * a02 + b11 * a12 + b12 * a22 + b13 * a32,
			b10 * a03 + b11 * a13 + b12 * a23 + b13 * a33,
			b20 * a00 + b21 * a10 + b22 * a20 + b23 * a30,
			b20 * a01 + b21 * a11 + b22 * a21 + b23 * a31,
			b20 * a02 + b21 * a12 + b22 * a22 + b23 * a32,
			b20 * a03 + b21 * a13 + b22 * a23 + b23 * a33,
			b30 * a00 + b31 * a10 + b32 * a20 + b33 * a30,
			b30 * a01 + b31 * a11 + b32 * a21 + b33 * a31,
			b30 * a02 + b31 * a12 + b32 * a22 + b33 * a32,
			b30 * a03 + b31 * a13 + b32 * a23 + b33 * a33,
		];
	},

	translation: function (tx, ty, tz) {
		return [
			1, 0, 0, 0,
			0, 1, 0, 0,
			0, 0, 1, 0,
			tx, ty, tz, 1,
		];
	},

	xRotation: function (angleInRadians) {
		var c = Math.cos(angleInRadians);
		var s = Math.sin(angleInRadians);

		return [
			1, 0, 0, 0,
			0, c, s, 0,
			0, -s, c, 0,
			0, 0, 0, 1,
		];
	},

	yRotation: function (angleInRadians) {
		var c = Math.cos(angleInRadians);
		var s = Math.sin(angleInRadians);

		return [
			c, 0, -s, 0,
			0, 1, 0, 0,
			s, 0, c, 0,
			0, 0, 0, 1,
		];
	},

	zRotation: function (angleInRadians) {
		var c = Math.cos(angleInRadians);
		var s = Math.sin(angleInRadians);

		return [
			c, s, 0, 0,
			-s, c, 0, 0,
			0, 0, 1, 0,
			0, 0, 0, 1,
		];
	},

	scaling: function (sx, sy, sz) {
		return [
			sx, 0, 0, 0,
			0, sy, 0, 0,
			0, 0, sz, 0,
			0, 0, 0, 1,
		];
	},

	translate: function (m, tx, ty, tz) {
		return m4.multiply(m, m4.translation(tx, ty, tz));
	},

	xRotate: function (m, angleInRadians) {
		return m4.multiply(m, m4.xRotation(angleInRadians));
	},

	yRotate: function (m, angleInRadians) {
		return m4.multiply(m, m4.yRotation(angleInRadians));
	},

	zRotate: function (m, angleInRadians) {
		return m4.multiply(m, m4.zRotation(angleInRadians));
	},

	scale: function (m, sx, sy, sz) {
		return m4.multiply(m, m4.scaling(sx, sy, sz));
	},

};


var pointCount;
let a;
let anim = 0;
let face = 3;
// Fill the buffer 
function setGeometry(gl) {
	a = new Float32Array(3 * size * size * size);
	let b = size / 2;
	c = Math.abs(Math.sin(anim));
	c *= c;
	if (c < 0.005) {
		//face = Math.floor(Math.random() * 5);
		face = (face + 1) % 6;
	};
	anim += 0.005;
	for (let x = 0; x < size; x++) {
		for (let y = 0; y < size; y++) {
			for (let z = 0; z < size; z++) {

				let d = (x * size * size * 3) + (y * size * 3) + z * 3,
					x0 = (x - b) / b;
				y0 = (y - b) / b;
				z0 = (z - b) / b;

				a[d] = x0 * (1 - (1 - (y / size)) * c);
				a[d + 1] = y0;
				a[d + 2] = z0 * (1 - (1 - (y / size)) * c);

			}
		}
	}

	gl.bufferData(
		gl.ARRAY_BUFFER,
		a,
		gl.DYNAMIC_DRAW);
}
