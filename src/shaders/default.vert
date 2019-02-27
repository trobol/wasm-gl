attribute vec4 a_position;

uniform mat4 u_matrix;
varying lowp vec4 vColor;
void main(){
	// Multiply the position by the matrix.
	gl_Position=u_matrix*a_position;
	gl_PointSize=(60.-(30.*(length(u_matrix*a_position)*length(u_matrix*a_position))));
	vColor=vec4(1,1,1,2)-normalize(a_position);
	
}
