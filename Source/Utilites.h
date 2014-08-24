#ifndef UTILITES_H
#define UTILITES_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

void CopyMemoryQuad(LPVOID pDest, LPVOID pSrc, INT iQuadsCount);
void CopyMemoryDWord(PDWORD pDest, PDWORD pSrc, INT iDWordsCount);

#endif