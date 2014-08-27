#include <cassert>
#include "Utilites.h"

/*
	Функции.
*/
void copy_memory32(void* p_dest, void* p_src, uint32_t dcount)
{
	assert(p_dest);
	assert(p_src);
	assert(dcount > 0);

	do
	{
		*((int32_t*) p_dest)++ = *((int32_t*) p_src)++;
	} 
	while (--dcount);
}

void copy_memory64(void* p_dest, void* p_src, uint32_t dcount)
{
	assert(p_dest);
	assert(p_src);
	assert(dcount > 0);

	do
	{
		*((uint64_t*) p_dest)++ = *((uint64_t*) p_src)++;
	} 
	while (--dcount);
}

bool is_pow2(uint32_t dNumber)
{
	return dNumber && !(dNumber & (dNumber - 1));
}