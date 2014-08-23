#ifndef CADRAW_H
#define CADRAW_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include <ddraw.h>

struct SCADrawInitResult
{
	RECT rcScreenRect;
	PDWORD pdwBuffer;
	//
	INT iWidth;
	INT iHeight;
	INT iWidthInBytes;
	BYTE* pBufferPrimary;
	BYTE* pBufferSecondary;
	//
	LPVOID pSurfaceData;

	//	...

	LPDIRECTDRAW lpDirectDraw;
	LPDIRECTDRAWSURFACE lpDirectDrawSurface;
	INT (*pFnSetScreenVariables)();
	BOOL(*pFnCreateDirectDrawAndSetCooperativeLevel)(HWND, BOOL);
	LPDIRECTDRAW (*pFnShutdownDirectDraw)();
	BOOL (*pFnSetDisplayMode)(DWORD, DWORD);
	void (*pFnSetPixelFormatMasks)(WORD, DWORD, DWORD);
	LPDIRECTDRAWSURFACE (*pFnReleaseSurface)();
	BOOL (*pFnLockSurface)();
	BOOL (*pFnUnlockSurface)();
};

INT SetScreenVariables();
BOOL CreateDirectDrawAndSetCooperativeLevel(HWND hWnd, BOOL bFullscreen);
LPDIRECTDRAWSURFACE ReleaseSurface();
LPDIRECTDRAW ShutdownDirectDraw();
LPDIRECTDRAW ReleaseDirectDraw();
void SetPixelFormatMasks(WORD wRedMask, DWORD dwGreenMask, DWORD dwBlueMask);
BOOL SetDisplayMode(DWORD dwWidth, DWORD dwHeight);
void DrawHorizontalLine(INT x, INT y, INT iLength, WORD wColor);
void DrawVerticalLine(INT x, INT y, INT iLength, WORD wColor);
void DrawRect(INT x, INT y, INT iWidth, INT iHeight, WORD wColor);
void DrawFilledRect(RECT rcRect, INT iColor);
//	sub_100016D0
void DrawPointPrimaryBuffer(INT x, INT y, WORD wColor);
void DrawPointSecondaryBuffer(INT x, INT y, WORD wColor);
//	sub_100018B0
//	j_nullsub_1
//	nullsub_1
SCADrawInitResult* CADrawInit();
//	x_sub_10001BF0
//	x_sub_10001C80
//	x_sub_10001D00
//	x_sub_10001EA0_call
//	x_sub_10001EE0_call
//	x_sub_10001F20_call
//	x_sub_10001F50_call
//	sub_10001F90
//	sub_10002030
//	sub_100024C0
//	sub_100027C0
//	sub_10002860
//	sub_100028F0
BOOL LockSurface();
BOOL UnlockSurface();
BOOL CopyDataToDirectDrawSurface();
//	sub_10002B10
//	sub_10002B70
//	sub_10002C70
//	sub_10003090
//	x_sub_10003400
//	x_sub_10003430
//	x_sub_10003490
//	h_________________sub_100034F0
//	sub_100038EE
//	sub_10003D18
//	sub_100040E6
//	sub_10004460
//	sub_10004786
//	sub_10004AB6
//	sub_10004E80
//	sub_100051AF
//	sub_10005493
//	sub_1000586C
//	sub_10005B96
//	sub_10005F01
//	sub_1000625D
//	sub_10006586
//	sub_1000687D
//	sub_10006C48
//	sub_10006FE2
//	sub_100073B2
//	sub_10007678
//	sub_10007938
//	sub_10007D0C
//	x_sub_100087A1
//	sub_100088E9
//	sub_100095A8
//	sub_100098D3
//	sub_10009F13

#endif