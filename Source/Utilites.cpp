#include <cassert>
#include "Utilites.h"

void CopyMemoryQuad(void* pDest, void* pSrc, int iQuadsCount)
{
	assert(pDest);
	assert(pSrc);
	assert(iQuadsCount > 0);

	double* pDestination = reinterpret_cast<double*>(pDest);
	double* pSource = reinterpret_cast<double*>(pSrc);
	while (iQuadsCount)
	{
		*pDestination++ = *pSource++;
		--iQuadsCount;
	}
}

void CopyMemoryDWord(PDWORD pDest, PDWORD pSrc, INT iDWordsCount)
{
	assert(pDest);
	assert(pSrc);
	assert(iDWordsCount > 0);

	while (iDWordsCount)
	{
		*pDest++ = *pSrc++;
		--iDWordsCount;
	}
}

BOOL IsPowOf2(INT iNumber)
{
	return !(iNumber & (iNumber - 1));
}