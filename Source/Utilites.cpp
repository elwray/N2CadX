#include "Utilites.h"

void CopyMemoryFast(void* pDest, void* pSrc, int iCount)
{
	double* pDestination = reinterpret_cast<double*>(pDest);
	double* pSource = reinterpret_cast<double*>(pSrc);
	while (iCount)
	{
		*pDestination++ = *pSource++;
		--iCount;
	}
}