attribute vec4 a_position;

uniform mat4 u_matrix;
varying lowp vec4 vColor;
void main(){
	// Multiply the position by the matrix.
	gl_Position=u_matrix*a_position;
	gl_PointSize=10.*length(u_matrix*a_position);
	vColor=a_position;
	
}
