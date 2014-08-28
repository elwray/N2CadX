#include <cassert>
#include "Utilites.h"

/*
	Функции.
*/
void CopyMemory16(void* pDest, void* pSrc, uint32_t dCount)
{
	assert(pDest);
	assert(pSrc);
	assert(dCount > 0);

	do
	{
		*((int16_t*) pDest)++ = *((int16_t*) pSrc)++;
	} 
	while (--dCount);
}

void CopyMemory32(void* pDest, void* pSrc, uint32_t dCount)
{
	assert(pDest);
	assert(pSrc);
	assert(dCount > 0);

	do
	{
		*((int32_t*) pDest)++ = *((int32_t*) pSrc)++;
	} 
	while (--dCount);
}

void CopyMemory64(void* pDest, void* pSrc, uint32_t dCount)
{
	assert(pDest);
	assert(pSrc);
	assert(dCount > 0);

	do
	{
		*((uint64_t*) pDest)++ = *((uint64_t*) pSrc)++;
	} 
	while (--dCount);
}

bool IsPow2(uint32_t dNumber)
{
	return dNumber && !(dNumber & (dNumber - 1));
}