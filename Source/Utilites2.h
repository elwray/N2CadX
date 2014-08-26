#ifndef UTILITES_H
#define UTILITES_H

#include <stdbool.h>
#include <stdint.h>

/*
	Макросы.
*/
#define _B(x) strtoull(#x, 0, 2)
#define Mul2Fast(x) x << 1

/*
	Прототипы.
*/
void __cdecl CopyMemory16(void* pDest, void* pSource, int iCount);
void __cdecl CopyMemory64(void* pDest, void* pSource, int iCount);
bool __cdecl IsPowOf2(uint32_t dNumber);

#endif