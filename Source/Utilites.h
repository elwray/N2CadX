#ifndef UTILITES_H
#define UTILITES_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include <stdlib.h>

/*
	Макросы.
*/
#define _B(x) strtoull(#x, 0, 2)

/*
	Прототипы.
*/
void CopyMemoryQuad(LPVOID pDest, LPVOID pSrc, INT iQuadsCount);
void CopyMemoryDWord(PDWORD pDest, PDWORD pSrc, INT iDWordsCount);
BOOL IsPowOf2(INT iNumber);

#endif