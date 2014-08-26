#ifndef RECT_H
#define RECT_H

#include <stdint.h>
#include <memory.h>

/*
	Типы данных.
*/
typedef struct _s_rect_t
{
	int32_t left;
	int32_t top;
	int32_t right;
	int32_t bottom;
} rect_t;

/*
	Макросы.
*/
#define InitRect(rc) memset(&rc, 0, sizeof(rc))

#endif