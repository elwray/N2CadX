#include "Utilites.h"

void CopyMemoryQuad(void* pDest, void* pSrc, int iQuadsCount)
{
	double* pDestination = reinterpret_cast<double*>(pDest);
	double* pSource = reinterpret_cast<double*>(pSrc);
	while (iQuadsCount)
	{
		*pDestination++ = *pSource++;
		--iQuadsCount;
	}
}