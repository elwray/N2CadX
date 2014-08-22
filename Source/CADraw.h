#ifndef CADRAW_H
#define CADRAW_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include <ddraw.h>

struct SCADrawInitResult
{
	RECT rcScreenRect;
};

void SetScreenVariables();
BOOL CreateDirectDrawAndSetCooperativeLevel(HWND hWnd, BOOL bFullscreen);
void ReleaseSurface();
void ShutdownDirectDraw();
void ReleaseDirectDraw();
void SetPixelFormatMasks(WORD wRedMask, DWORD dwGreenMask, DWORD dwBlueMask);
BOOL SetDisplayMode(DWORD dwWidth, DWORD dwHeight);
//	x_sub_10001430
//	x_sub_100014C0
//	x_sub_10001580_call4
//	sub_100015E0
//	sub_100016D0
//	x_sub_100017F0
//	x_sub_10001850
//	sub_100018B0
//	j_nullsub_1
//	nullsub_1
SCADrawInitResult* CADrawInit();

#endif
