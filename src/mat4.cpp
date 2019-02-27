#include "Header.h"

import void out(const void *, int length);

export const void *projection(float width, float height, float depth)
{
	float a[16] = {
		2 / width, 0, 0, 0,
		0, -2 / height, 0, 0,
		0, 0, 2 / depth, 0,
		-1, 1, 0, 1};
	return a;
}

/*
void multiply(float[] a, float[] b)
{
	float a00 = a[0 * 4 + 0],
		  a01 = a[0 * 4 + 1],
		  a02 = a[0 * 4 + 2],
		  a03 = a[0 * 4 + 3],
		  a10 = a[1 * 4 + 0],
		  a11 = a[1 * 4 + 1],
		  a12 = a[1 * 4 + 2],
		  a13 = a[1 * 4 + 3],
		  a20 = a[2 * 4 + 0],
		  a21 = a[2 * 4 + 1],
		  a22 = a[2 * 4 + 2],
		  a23 = a[2 * 4 + 3],
		  a30 = a[3 * 4 + 0],
		  a31 = a[3 * 4 + 1],
		  a32 = a[3 * 4 + 2],
		  a33 = a[3 * 4 + 3],
		  b00 = b[0 * 4 + 0],
		  b01 = b[0 * 4 + 1],
		  b02 = b[0 * 4 + 2],
		  b03 = b[0 * 4 + 3],
		  b10 = b[1 * 4 + 0],
		  b11 = b[1 * 4 + 1],
		  b12 = b[1 * 4 + 2],
		  b13 = b[1 * 4 + 3],
		  b20 = b[2 * 4 + 0],
		  b21 = b[2 * 4 + 1],
		  b22 = b[2 * 4 + 2],
		  b23 = b[2 * 4 + 3],
		  b30 = b[3 * 4 + 0],
		  b31 = b[3 * 4 + 1],
		  b32 = b[3 * 4 + 2],
		  b33 = b[3 * 4 + 3];
	float array[] = {
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
	};
}
*/
/*
void projection(float width, float height, float depth)
{
	return [2 / width,
		0,
		0,
		0,
		0,
		-2 / height,
		0,
		0,
		0,
		0,
		2 / depth,
		0,
		-1,
		1,
		0,
		1,
	];
}
*/