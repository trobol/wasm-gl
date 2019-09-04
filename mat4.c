

extern char __heap_base;
extern float sinf(float);
extern float cosf(float);

unsigned int bump_pointer = &__heap_base;

float *allocate(int size)
{
	unsigned int r = bump_pointer;
	bump_pointer += size * 4;
	return (float *)r;
}

float *projection(float width, float height, float depth)
{
	float *values = allocate(16);
	values[0] = 2 / width,
	values[1] = 0;
	values[2] = 0;
	values[3] = 0;
	values[4] = 0;
	values[5] = -2 / height;
	values[6] = 0;
	values[7] = 0;
	values[8] = 0;
	values[9] = 0;
	values[10] = 2 / depth;
	values[11] = 0;
	values[12] = -1;
	values[13] = 1;
	values[14] = 0;
	values[15] = 1;
	return values;
}

void translate(float *a, float tx, float ty, float tz)
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

		  b00 = 1,
		  b01 = 0,
		  b02 = 0,
		  b03 = 0,
		  b10 = 0,
		  b11 = 1,
		  b12 = 0,
		  b13 = 0,
		  b20 = 0,
		  b21 = 0,
		  b22 = 1,
		  b23 = 0,
		  b30 = tx,
		  b31 = ty,
		  b32 = tz,
		  b33 = 1;

	a[0] = b00 * a00 + b01 * a10 + b02 * a20 + b03 * a30;
	a[1] = b00 * a01 + b01 * a11 + b02 * a21 + b03 * a31;
	a[2] = b00 * a02 + b01 * a12 + b02 * a22 + b03 * a32;
	a[3] = b00 * a03 + b01 * a13 + b02 * a23 + b03 * a33;
	a[4] = b10 * a00 + b11 * a10 + b12 * a20 + b13 * a30;
	a[5] = b10 * a01 + b11 * a11 + b12 * a21 + b13 * a31;
	a[6] = b10 * a02 + b11 * a12 + b12 * a22 + b13 * a32;
	a[7] = b10 * a03 + b11 * a13 + b12 * a23 + b13 * a33;
	a[8] = b20 * a00 + b21 * a10 + b22 * a20 + b23 * a30;
	a[9] = b20 * a01 + b21 * a11 + b22 * a21 + b23 * a31;
	a[10] = b20 * a02 + b21 * a12 + b22 * a22 + b23 * a32;
	a[11] = b20 * a03 + b21 * a13 + b22 * a23 + b23 * a33;
	a[12] = b30 * a00 + b31 * a10 + b32 * a20 + b33 * a30;
	a[13] = b30 * a01 + b31 * a11 + b32 * a21 + b33 * a31;
	a[14] = b30 * a02 + b31 * a12 + b32 * a22 + b33 * a32;
	a[15] = b30 * a03 + b31 * a13 + b32 * a23 + b33 * a33;
}

void xRotate(float *a, float angleInRadians)
{

	float c = cosf(angleInRadians);
	float s = sinf(angleInRadians);

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
		  b00 = 1,
		  b01 = 0,
		  b02 = 0,
		  b03 = 0,
		  b10 = 0,
		  b11 = c,
		  b12 = s,
		  b13 = 0,
		  b20 = 0,
		  b21 = -s,
		  b22 = c,
		  b23 = 0,
		  b30 = 0,
		  b31 = 0,
		  b32 = 0,
		  b33 = 1;

	a[0] = b00 * a00 + b01 * a10 + b02 * a20 + b03 * a30;
	a[1] = b00 * a01 + b01 * a11 + b02 * a21 + b03 * a31;
	a[2] = b00 * a02 + b01 * a12 + b02 * a22 + b03 * a32;
	a[3] = b00 * a03 + b01 * a13 + b02 * a23 + b03 * a33;
	a[4] = b10 * a00 + b11 * a10 + b12 * a20 + b13 * a30;
	a[5] = b10 * a01 + b11 * a11 + b12 * a21 + b13 * a31;
	a[6] = b10 * a02 + b11 * a12 + b12 * a22 + b13 * a32;
	a[7] = b10 * a03 + b11 * a13 + b12 * a23 + b13 * a33;
	a[8] = b20 * a00 + b21 * a10 + b22 * a20 + b23 * a30;
	a[9] = b20 * a01 + b21 * a11 + b22 * a21 + b23 * a31;
	a[10] = b20 * a02 + b21 * a12 + b22 * a22 + b23 * a32;
	a[11] = b20 * a03 + b21 * a13 + b22 * a23 + b23 * a33;
	a[12] = b30 * a00 + b31 * a10 + b32 * a20 + b33 * a30;
	a[13] = b30 * a01 + b31 * a11 + b32 * a21 + b33 * a31;
	a[14] = b30 * a02 + b31 * a12 + b32 * a22 + b33 * a32;
	a[15] = b30 * a03 + b31 * a13 + b32 * a23 + b33 * a33;
}

void yRotate(float *a, float angleInRadians)
{

	float c = cosf(angleInRadians);
	float s = sinf(angleInRadians);

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

		  b00 = c,
		  b01 = 0,
		  b02 = -s,
		  b03 = 0,
		  b10 = 0,
		  b11 = 1,
		  b12 = 0,
		  b13 = 0,
		  b20 = -s,
		  b21 = 0,
		  b22 = c,
		  b23 = 0,
		  b30 = 0,
		  b31 = 0,
		  b32 = 0,
		  b33 = 1;

	a[0] = b00 * a00 + b01 * a10 + b02 * a20 + b03 * a30;
	a[1] = b00 * a01 + b01 * a11 + b02 * a21 + b03 * a31;
	a[2] = b00 * a02 + b01 * a12 + b02 * a22 + b03 * a32;
	a[3] = b00 * a03 + b01 * a13 + b02 * a23 + b03 * a33;
	a[4] = b10 * a00 + b11 * a10 + b12 * a20 + b13 * a30;
	a[5] = b10 * a01 + b11 * a11 + b12 * a21 + b13 * a31;
	a[6] = b10 * a02 + b11 * a12 + b12 * a22 + b13 * a32;
	a[7] = b10 * a03 + b11 * a13 + b12 * a23 + b13 * a33;
	a[8] = b20 * a00 + b21 * a10 + b22 * a20 + b23 * a30;
	a[9] = b20 * a01 + b21 * a11 + b22 * a21 + b23 * a31;
	a[10] = b20 * a02 + b21 * a12 + b22 * a22 + b23 * a32;
	a[11] = b20 * a03 + b21 * a13 + b22 * a23 + b23 * a33;
	a[12] = b30 * a00 + b31 * a10 + b32 * a20 + b33 * a30;
	a[13] = b30 * a01 + b31 * a11 + b32 * a21 + b33 * a31;
	a[14] = b30 * a02 + b31 * a12 + b32 * a22 + b33 * a32;
	a[15] = b30 * a03 + b31 * a13 + b32 * a23 + b33 * a33;
}

void zRotate(float *a, float angleInRadians)
{

	float c = cosf(angleInRadians);
	float s = sinf(angleInRadians);

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

		  b00 = c,
		  b01 = s,
		  b02 = 0,
		  b03 = 0,
		  b10 = -s,
		  b11 = c,
		  b12 = 0,
		  b13 = 0,
		  b20 = 0,
		  b21 = 0,
		  b22 = 1,
		  b23 = 0,
		  b30 = 0,
		  b31 = 0,
		  b32 = 0,
		  b33 = 1;

	a[0] = b00 * a00 + b01 * a10 + b02 * a20 + b03 * a30;
	a[1] = b00 * a01 + b01 * a11 + b02 * a21 + b03 * a31;
	a[2] = b00 * a02 + b01 * a12 + b02 * a22 + b03 * a32;
	a[3] = b00 * a03 + b01 * a13 + b02 * a23 + b03 * a33;
	a[4] = b10 * a00 + b11 * a10 + b12 * a20 + b13 * a30;
	a[5] = b10 * a01 + b11 * a11 + b12 * a21 + b13 * a31;
	a[6] = b10 * a02 + b11 * a12 + b12 * a22 + b13 * a32;
	a[7] = b10 * a03 + b11 * a13 + b12 * a23 + b13 * a33;
	a[8] = b20 * a00 + b21 * a10 + b22 * a20 + b23 * a30;
	a[9] = b20 * a01 + b21 * a11 + b22 * a21 + b23 * a31;
	a[10] = b20 * a02 + b21 * a12 + b22 * a22 + b23 * a32;
	a[11] = b20 * a03 + b21 * a13 + b22 * a23 + b23 * a33;
	a[12] = b30 * a00 + b31 * a10 + b32 * a20 + b33 * a30;
	a[13] = b30 * a01 + b31 * a11 + b32 * a21 + b33 * a31;
	a[14] = b30 * a02 + b31 * a12 + b32 * a22 + b33 * a32;
	a[15] = b30 * a03 + b31 * a13 + b32 * a23 + b33 * a33;
}

void scale(float *a, float sx, float sy, float sz)
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

		  b00 = sx,
		  b01 = 0,
		  b02 = 0,
		  b03 = 0,
		  b10 = sy,
		  b11 = 1,
		  b12 = 0,
		  b13 = 0,
		  b20 = 0,
		  b21 = 0,
		  b22 = sz,
		  b23 = 0,
		  b30 = 0,
		  b31 = 0,
		  b32 = 0,
		  b33 = 1;

	a[0] = b00 * a00 + b01 * a10 + b02 * a20 + b03 * a30;
	a[1] = b00 * a01 + b01 * a11 + b02 * a21 + b03 * a31;
	a[2] = b00 * a02 + b01 * a12 + b02 * a22 + b03 * a32;
	a[3] = b00 * a03 + b01 * a13 + b02 * a23 + b03 * a33;
	a[4] = b10 * a00 + b11 * a10 + b12 * a20 + b13 * a30;
	a[5] = b10 * a01 + b11 * a11 + b12 * a21 + b13 * a31;
	a[6] = b10 * a02 + b11 * a12 + b12 * a22 + b13 * a32;
	a[7] = b10 * a03 + b11 * a13 + b12 * a23 + b13 * a33;
	a[8] = b20 * a00 + b21 * a10 + b22 * a20 + b23 * a30;
	a[9] = b20 * a01 + b21 * a11 + b22 * a21 + b23 * a31;
	a[10] = b20 * a02 + b21 * a12 + b22 * a22 + b23 * a32;
	a[11] = b20 * a03 + b21 * a13 + b22 * a23 + b23 * a33;
	a[12] = b30 * a00 + b31 * a10 + b32 * a20 + b33 * a30;
	a[13] = b30 * a01 + b31 * a11 + b32 * a21 + b33 * a31;
	a[14] = b30 * a02 + b31 * a12 + b32 * a22 + b33 * a32;
	a[15] = b30 * a03 + b31 * a13 + b32 * a23 + b33 * a33;
}