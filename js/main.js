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
	var rotation = [1, 0, 0];
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


	drawScene(0);



	// Draw the scene.
	function drawScene(timeStamp) {
		gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);

		matrix.xRotate(0.002);
		matrix.yRotate(0.001);

		gl.uniformMatrix4fv(matrixLocation, false, matrix.mat);

		gl.resize();

		gl.uniform1f(timeLocation, timeStamp / 1000);

		gl.drawArrays(gl.Point, 0, 1000);

		requestAnimationFrame(drawScene);
	}
}
// Fill the buffer 
function setGeometry(gl) {
	let a = new Float32Array(3 * size * size * size);
	let b = size / 2;
	for (let x = 0; x < size; x++) {
		for (let y = 0; y < size; y++) {
			for (let z = 0; z < size; z++) {

				let d = (x * size * size * 3) + (y * size * 3) + z * 3;

				a[d] = (x - b) / b;
				a[d + 1] = (y - b) / b;
				a[d + 2] = (z - b) / b;

			}
		}
	}

	gl.bufferData(
		gl.ARRAY_BUFFER,
		a,
		gl.STATIC_DRAW);
}
