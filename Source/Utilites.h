#ifndef UTILITES_H
#define UTILITES_H

#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#define WIN32_LEAN_AND_MEAN
#include <windows.h>

/*
	Макросы.
*/
#define _B(x) strtoull(#x, 0, 2)

/*
	Прототипы.
*/
void CopyMemory16(void* pDest, void* pSrc, uint32_t dCount);
void CopyMemory32(void* pDest, void* pSrc, uint32_t dCount);
void CopyMemory64(void* pDest, void* pSrc, uint32_t dCount);
bool IsPow2(uint32_t dNumber);

#endif