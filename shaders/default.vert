attribute vec4 a_position;

uniform mat4 u_matrix;
uniform highp float u_time;
varying lowp vec4 vColor;

void main(){
	
	vec4 p=a_position;
	float b=sin(u_time);
	float c=cos(u_time);
	float dist=abs(b-a_position.y);
	p.xyz*=1.-(dist*.1);
	float distx=abs(c-a_position.x);
	p.xyz*=1.-(distx*.1);
	vec4 v=u_matrix*p;
	
	gl_Position=v;
	float a=min((v.z+1.)/2.,1.);
	
	gl_PointSize=60.-(30.*(a*a));
	
	vColor=(vec4(1,1,1,1)-normalize(a_position))*(.5+a/2.);
	
}
