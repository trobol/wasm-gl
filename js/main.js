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

	var timeLocation = gl.getUniformLocation(program, 'u_time');
	// Create a buffer to put positions in
	var positionBuffer = gl.createBuffer();

	gl.enable(gl.BLEND);

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



	randomizeVelocities();





	drawScene(0);



	// Draw the scene.
	function drawScene(timeStamp) {
		gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);

		gl.resize();

		gl.uniform1f(timeLocation, timeStamp / 1000);
		setGeometry(gl);
		gl.drawArrays(gl.Point, 0, 200);

		requestAnimationFrame(drawScene);
	}
}


const buffer = new Float32Array(400);
const velocities = new Float32Array(400);


function randomizeVelocities() {


	for(let i = 0; i < 400; i+=2) {
		let v = Math.random();
		let x = (Math.random()-0.5);
		let y = Math.random();

		let mag = Math.sqrt(x*x+y*y);
		x /= mag;
		y /= mag;
		velocities[i] = x/50*v;
		velocities[i+1] = y/50*v;
	}
}
// Fill the buffer 
function setGeometry(gl) {
	for(let i = 0; i < 400; i+=2) {
		buffer[i] += velocities[i];
		buffer[i+1] += velocities[i+1];
		velocities[i+1] -= 0.0003;
	}

	gl.bufferData(
		gl.ARRAY_BUFFER,
		buffer,
		gl.STATIC_DRAW);
}
