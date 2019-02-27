
varying lowp vec4 vColor;
varying mediump float radius;
precision mediump float;
void main(){
	float r=0.,delta=0.,alpha=1.;
	vec2 cxy=2.*gl_PointCoord-1.;
	r=dot(cxy,cxy);
	delta=.01;
	alpha=1.-smoothstep(1.-delta,1.+delta,r*6.);
	vec4 color=vColor;
	color.a=max(1.-abs(length(cxy*.8)),alpha);
	color*=color.a;
	gl_FragColor=color;
}