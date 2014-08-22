#include "CADraw.h"
#include "Constants.h"
#include "Utilites.h"

SCADrawInitResult	g_sCADRaw = { 0, };

LPDIRECTDRAW		g_lpDirectDraw = NULL;
LPDIRECTDRAWSURFACE	g_lpSurface = NULL;
LPVOID				g_pSurfaceData = NULL;
LONG				g_lPitch = 0L;

HWND				g_hWnd = NULL;
BOOL				g_bFullscreen = FALSE;

INT SetScreenVariables()
{
	//g_dwWidth = 640;
	//g_dwHeight = 480;
	//g_dwWidth2 = 1280;
	//g_pdwBuffer = 0;
	//g_dwHeightSecond = 480;

	LPRECT lpRect = &g_sCADRaw.rcScreenRect;
	SetRect(lpRect, 0, 0, Screen_Width_1, Screen_Height_1);

	return 0;
}

BOOL CreateDirectDrawAndSetCooperativeLevel(HWND hWnd, BOOL bFullscreen)
{
	ShutdownDirectDraw();

	HRESULT hDirectDrawCreateResult = DirectDrawCreate(NULL, &g_lpDirectDraw, NULL);
	if (FAILED(hDirectDrawCreateResult))
		return FALSE;

	const DWORD dwFlags = bFullscreen ? DDSCL_FULLSCREEN | DDSCL_EXCLUSIVE : DDSCL_NORMAL;
	HRESULT hSetCooperativeLevelResult = g_lpDirectDraw->SetCooperativeLevel(hWnd, dwFlags);
	if (FAILED(hSetCooperativeLevelResult))
	{
		ReleaseDirectDraw();
		return FALSE;
	}

	g_bFullscreen = bFullscreen;
	g_hWnd = hWnd;

	return TRUE;
}

LPDIRECTDRAWSURFACE ReleaseSurface()
{
	if (g_lpSurface != NULL)
	{
		g_lpSurface->Release();
		g_lpSurface = NULL;
	}

	return g_lpSurface;
}

LPDIRECTDRAW ShutdownDirectDraw()
{
	ReleaseSurface();

	if (g_lpDirectDraw != NULL)
	{
		g_lpDirectDraw->RestoreDisplayMode();
		ReleaseDirectDraw();
	}

	return g_lpDirectDraw;
}

LPDIRECTDRAW ReleaseDirectDraw()
{
	if (g_lpDirectDraw != NULL)
	{
		g_lpDirectDraw->Release();
		g_lpDirectDraw = NULL;
	}

	return g_lpDirectDraw;
}

void SetPixelFormatMasks(WORD wRedMask, DWORD dwGreenMask, DWORD dwBlueMask)
{
}

BOOL SetDisplayMode(DWORD dwWidth, DWORD dwHeight)
{
	ReleaseSurface();

	if (g_bFullscreen)
	{
		HRESULT hResult = g_lpDirectDraw->SetDisplayMode(dwWidth, dwHeight, Screen_BPP);
		if (FAILED(hResult))
			return FALSE;
	}
	else
	{
		DDSURFACEDESC ddSurfaceDesc;
		ZeroMemory(&ddSurfaceDesc, sizeof(ddSurfaceDesc));
		ddSurfaceDesc.dwSize = sizeof(DDSURFACEDESC);
		ddSurfaceDesc.dwFlags = DDSD_CAPS;
		ddSurfaceDesc.ddsCaps.dwCaps = DDSCAPS_PRIMARYSURFACE;

		HRESULT hCreateSurfaceResult = g_lpDirectDraw->CreateSurface(&ddSurfaceDesc, &g_lpSurface, NULL);
		if (FAILED(hCreateSurfaceResult))
			return FALSE;

		ZeroMemory(&ddSurfaceDesc, sizeof(ddSurfaceDesc));
		HRESULT hGetSurfaceDescResult = g_lpSurface->GetSurfaceDesc(&ddSurfaceDesc);
		if (FAILED(hGetSurfaceDescResult))
		{
			ReleaseSurface();
			return FALSE;
		}

		//SetGamePixelFormat(
		//	SLOWORD(ddSurfaceDescription.ddpfPixelFormat.dwRBitMask),
		//	ddSurfaceDescription.ddpfPixelFormat.dwGBitMask,
		//	ddSurfaceDescription.ddpfPixelFormat.dwBBitMask);

		SetScreenVariables();
	}

	return 1;
}

void DrawHorizontalLine(INT x, INT y, INT iLength, WORD wColor)
{
	//__int32 result; // eax@1
	//int v5; // edx@1
	//LONG iLength; // ecx@1
	//void *pBuffer1; // edi@8
	//int iCount; // ecx@10
	//int iValue; // edx@10
	//unsigned __int8 v10; // cf@10
	//DWORD *v11; // edi@10
	//int i; // ecx@10

	//result = x;
	//HIWORD(v5) = HIWORD(y);
	//iLength = iSize + x - 1;
	//if (y >= g_rcScreenRect.top && y <= g_rcScreenRect.bottom)
	//{
	//	if (x < g_rcScreenRect.left)
	//		result = g_rcScreenRect.left;
	//	if (iLength > g_rcScreenRect.right)
	//		iLength = g_rcScreenRect.right;
	//	if (result <= iLength)
	//	{
	//		pBuffer1 = &g_aBuffer2[640 * y + result + (g_pdwBuffer >> 1)];
	//		if (y >= g_dwHeightSecond)
	//			pBuffer1 = (char *)pBuffer1 - 614400;   // 640 * 480 * sizeof(WORD)
	//		LOWORD(v5) = wColor;
	//		iCount = iLength - result + 1;
	//		iValue = v5 << 16;
	//		LOWORD(iValue) = wColor;
	//		result = iValue;
	//		v10 = iCount & 1;
	//		iCount = (unsigned int)iCount >> 1;
	//		memset32(pBuffer1, iValue, iCount);
	//		v11 = (DWORD *)((char *)pBuffer1 + 4 * iCount);
	//		for (i = v10; i; --i)
	//		{
	//			*(_WORD *)v11 = wColor;
	//			v11 = (DWORD *)((char *)v11 + 2);
	//		}
	//	}
	//}

}

void DrawVerticalLine(INT x, INT y, INT iLength, WORD wColor)
{
	//int iTempY; // edx@1
	//LONG result; // eax@1
	//__int16 *pBuffer; // ecx@8
	//int v7; // edx@9
	//int v8; // eax@10

	//iTempY = y;
	//result = iSize + y - 1;
	//if (x >= g_rcScreenRect.left && x <= g_rcScreenRect.right)
	//{
	//	if (y < g_rcScreenRect.top)
	//		iTempY = g_rcScreenRect.top;
	//	if (result > g_rcScreenRect.bottom)
	//		result = g_rcScreenRect.bottom;
	//	result += 1 - iTempY;
	//	if (result > 0)
	//	{
	//		pBuffer = &g_aBuffer2[640 * iTempY + x + (g_pdwBuffer >> 1)];
	//		if (iTempY < g_dwHeightSecond)
	//		{
	//			v7 = result - g_dwHeightSecond + iTempY;
	//			if (v7 <= 0)
	//				goto LABEL_14;
	//			v8 = result - v7;
	//			do
	//			{
	//				*pBuffer = a4;
	//				--v8;
	//				pBuffer += 640;
	//			} while (v8);
	//			result = v7;
	//		}
	//		pBuffer -= 307200;                        // v6 -= 640 * 480
	//		do
	//		{
	//		LABEL_14:
	//			*pBuffer = a4;
	//			--result;
	//			pBuffer += 640;
	//		} while (result);
	//		return result;
	//	}
	//}

}

void DrawRect(INT x, INT y, INT iWidth, INT iHeight, WORD wColor)
{
	DrawHorizontalLine(x,               y, iWidth, wColor);	//	left,  top    -> right, top
	DrawHorizontalLine(x, y + iHeight - 1, iWidth, wColor);	//	left,  bottom -> right, bottom
	DrawVerticalLine  (x, y, iHeight, wColor);				//	left,  top    -> left, bottom
	DrawVerticalLine  (x + iWidth - 1, y, iHeight, wColor);	//	right, top    -> right, bottom
}

//	sub_100015E0

//	sub_100016D0

//	x_sub_100017F0

//	x_sub_10001850

//	sub_100018B0

//	j_nullsub_1

//	nullsub_1

SCADrawInitResult* CADrawInit()
{
	return &g_sCADRaw;
}

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

BOOL LockSurface()
{
	DDSURFACEDESC ddSurfaceDesc;
	ZeroMemory(&ddSurfaceDesc, sizeof(DDSURFACEDESC));
	HRESULT hLockResult = g_lpSurface->Lock(NULL, &ddSurfaceDesc, DDLOCK_WAIT, NULL);
	if (FAILED(hLockResult))
	{
		do
		{
			if (hLockResult != DDERR_SURFACEBUSY && hLockResult != DDERR_SURFACELOST)
				return FALSE;
			if (hLockResult == DDERR_SURFACELOST)
			{
				HRESULT hRestoreResult = g_lpSurface->Restore();
				if (FAILED(hRestoreResult))
					return FALSE;
			}

			hLockResult = g_lpSurface->Lock(NULL, &ddSurfaceDesc, DDLOCK_WAIT, NULL);
		} 
		while (FAILED(hLockResult));
	}

	g_lPitch = ddSurfaceDesc.lPitch;
	g_pSurfaceData = ddSurfaceDesc.lpSurface;

	return TRUE;
}

BOOL UnlockSurface()
{
	HRESULT hResult = g_lpSurface->Unlock(NULL);

	g_pSurfaceData = NULL;

	return SUCCEEDED(hResult);
}

BOOL CopyDataToDirectDrawSurface(int a1, int a2, int iDirectDrawSurfaceWidth, int iDirectDrawSurfaceHeight, int a5, int a6, int a7, int a8)
{
	//	BOOL bResult; // eax@2
	//	char *pDest; // edi@5
	//	int pSrc; // esi@5
	//	int iScrHeight; // edx@5
	//	int iDoublesCopied; // ecx@5
	//	BOOL bIsSurfaceLocked; // [sp+Ch] [bp-4h]@3

	BOOL bNeedUnlockSurface = FALSE;
	if (g_pSurfaceData == NULL)
	{
		if (!LockSurface())
			return FALSE;

		bNeedUnlockSurface = TRUE;
	}

	BYTE* pSource = NULL;
	BYTE* pDest = NULL;
	//	pDest = (char *)g_pSurfaceData + a5 + a5 + a6 * g_lPitch;
	//	pSrc = a8 + 2 * (a1 + a2 * a7);
	//	iScrHeight = iScreenHeight;
	//	iDoublesCopied = 0;

	do
	{
		const int iCopyItemsCount = iDirectDrawSurfaceWidth / 2;
		CopyMemoryFast(pDest, pSource, iCopyItemsCount);

		//		pSrc += 2 * a7 + -8 * (iScreenWidth >> 2);
		//		pDest += g_lPitch + -8 * (iScreenWidth >> 2);
		pSource = 0;
		pDest = 0;

		--iDirectDrawSurfaceHeight;
	} 
	while (iDirectDrawSurfaceHeight);

	if (bNeedUnlockSurface)
	{
		if (!UnlockSurface())
			return FALSE;
	}

	return TRUE;
}

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