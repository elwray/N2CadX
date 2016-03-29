#ifndef UTILITES_H
#define UTILITES_H

#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#define WIN32_LEAN_AND_MEAN
#include <Windows.h>


void inline CopyMemory16(VOID* p_dest, void* p_src, UINT count)
{
	assert(p_dest);
	assert(p_src);
	assert(count > 0);

	do
	{
		*((WORD*) p_dest)++ = *((WORD*) p_src)++;
	} while (--count);
}

void inline CopyMemory32(VOID* p_dest, void* p_src, UINT count)
{
	assert(p_dest);
	assert(p_src);
	assert(count > 0);

	do
	{
		*((DWORD*) p_dest)++ = *((DWORD*) p_src)++;
	} while (--count);
}

void inline CopyMemory64(VOID* p_dest, void* p_src, UINT count)
{
	assert(p_dest);
	assert(p_src);
	assert(count > 0);

	do
	{
		*((UINT64*) p_dest)++ = *((UINT64*) p_src)++;
	} while (--count);
}

BOOL inline IsPow2(UINT number)
{
	return number && !(number & (number - 1));
}

#endif