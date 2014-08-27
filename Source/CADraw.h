#ifndef CADRAW_H
#define CADRAW_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include <ddraw.h>
#include <stdint.h>


/*
	Типы данных.
*/
struct _Rect
{
	int32_t dw0;
	int32_t dw4;
	int32_t x;
	int32_t y;
	int32_t iWidth;
	int32_t iHeight;
};
typedef struct _Rect SRect;

struct _SCADrawInitResult
{
	//	align 8
	RECT rcScreenRect;
	UINT uBufferOriginInWords;
	DWORD dwSurfaceHeight;
	INT iWidth;
	INT iHeight;
	INT iWidthInBytes;
	BYTE* pBufferPrimary;
	BYTE* pBufferSecondary;
	BYTE* pBufferThird;
	LPVOID pSurfaceData;
	DWORD dword_1000E44C;		//	?
	DWORD dword_1000E450;		//	?
	DWORD dword_1000E454;		//	?
	WORD m_wRBitFromLeftOffset;	//	?
	WORD m_wGBitFromLeftOffset;	//	?
	WORD m_wBBitFromLeftOffset;	//	?
	BYTE byte_1000E45E;			//	?
	BYTE byte_1000E45F;			//	?
	DWORD dword_1000E460;		//	?
	DWORD dword_1000E464;		//	?
	DWORD dword_1000E468;		//	?
	WORD word_1000E46C;			//	?
	WORD word_1000E46E;			//	?
	DWORD dword_1000E470;		//	?

	//	align 8
	DWORD dword_1000E478;		//	?

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
typedef struct _SCADrawInitResult SCADrawInitResult;


/*
	Прототипы.
*/
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
void DrawFilledRect(INT x, INT y, INT iWidth, INT iHeight, INT iColor);
//	sub_100016D0
void DrawPointPrimaryBuffer(INT x, INT y, WORD wColor);
void DrawPointSecondaryBuffer(INT x, INT y, WORD wColor);
void DrawImage(INT iSrcX, int iSrcY, int a3, int a4, int iDestX, int iDestY, int iDestWidth, BYTE* pDestImage);
//	j_nullsub_1
//	nullsub_1
SCADrawInitResult* __cdecl CADrawInit();
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
BOOL CopyFromPrimaryBufferToDirectDrawSurface();
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