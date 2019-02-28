
varying lowp vec4 vColor;

precision mediump float;
uniform vec2 u_resolution;
void main(){
	
	float r=0.,delta=0.,alpha=1.;
	vec2 cxy=2.*gl_PointCoord-1.;
	r=dot(cxy,cxy);
	vec3 v=vec3(gl_FragCoord.x/u_resolution.x*2.-1.,gl_FragCoord.y/u_resolution.y*2.-1.,gl_FragCoord.z);
	float a=length(v);
	delta=(1.-(a));
	alpha=1.-smoothstep(1.-delta,1.+delta,r*(a)*12.);
	vec4 color=vColor;
	
	color.a=max(1.-abs(length(cxy*.8)),alpha);
	color*=color.a;
	gl_FragColor=color;

	
}