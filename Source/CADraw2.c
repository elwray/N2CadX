#include <assert.h>
#include "CADraw2.h"

cadrawresult_t g_sResult;

cadrawresult_t* __cdecl CADrawInit()
{
	return &g_sResult;
}