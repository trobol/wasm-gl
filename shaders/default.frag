
varying lowp vec4 vColor;

precision mediump float;
uniform highp float u_time;

void main(){
	
	float r=0.,delta=0.,alpha=1.;
	vec2 cxy=2.*gl_PointCoord-1.;
	
	r=dot(cxy,cxy);
	
	delta=1.-gl_FragCoord.z;
	alpha=1.-smoothstep(1.-delta,1.+delta,r*(gl_FragCoord.z)*12.);
	vec4 color=vColor;
	
	color.a=max(1.-abs(length(cxy)),alpha);
	color*=color.a;
	gl_FragColor=color;
	
}