#ifndef CADRAW2_H
#define CADRAW2_H

#include "Rect.h"

typedef struct _s_cadrawresult_t
{
	rect_t rcScreen;
} cadrawresult_t;

__declspec(dllexport) cadrawresult_t* __cdecl CADrawInit();

#endif