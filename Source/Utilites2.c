#include <assert.h>
#include <stdlib.h>
#include "Utilites2.h"

void __cdecl CopyMemory16(void* pDest, void* pSource, int iCount)
{
	assert(pDest != NULL);
	assert(pSource != NULL);
	assert(iCount > 0);

	do
	{
		*((uint16_t*) pSource)++ = *((uint16_t*) pSource)++;
	}
	while (--iCount);
}

void __cdecl CopyMemory64(void* pDest, void* pSource, int iCount)
{
	assert(pDest != NULL);
	assert(pSource != NULL);
	assert(iCount > 0);

	do
	{
		*((uint64_t*) pSource)++ = *((uint64_t*) pSource)++;
	}
	while (--iCount);
}

bool __cdecl IsPowOf2(uint32_t dNumber)
{
	return dNumber && !(dNumber & (dNumber - 1));
}