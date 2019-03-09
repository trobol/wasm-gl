#include "math.h"

float sin(float x)
{
	return x - ((x * x * x) / 6.) + ((x * x * x * x * x) / 120.);
}

float cos(float x)
{
	return 1 - ((x * x) / 2.) + ((x * x * x * x) / 24.);
}