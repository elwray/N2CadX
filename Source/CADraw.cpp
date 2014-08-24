#include "CADraw.h"
#include "Constants.h"
#include "Utilites.h"

SCADrawInitResult g_sResult = { 0, };

LONG g_lPitch = 0L;
HWND g_hWnd = NULL;
BOOL g_bFullscreen = FALSE;

INT SetScreenVariables()
{
	g_sResult.iWidth = Screen_Width;
	g_sResult.iHeight = Screen_Height;
	g_sResult.iWidthInBytes = Screen_BytesPerPixel * Screen_Width;
	g_sResult.pdwBuffer = NULL;
	g_sResult.dwHeightSecond = Screen_Height;
	LPRECT lpRect = &g_sResult.rcScreenRect;
	SetRect(lpRect, 0, 0, Screen_Width_1, Screen_Height_1);

	return 0;
}

BOOL CreateDirectDrawAndSetCooperativeLevel(HWND hWnd, BOOL bFullscreen)
{
	ShutdownDirectDraw();

	HRESULT hDirectDrawCreateResult = DirectDrawCreate(NULL, &g_sResult.lpDirectDraw, NULL);
	if (FAILED(hDirectDrawCreateResult))
		return FALSE;

	const DWORD dwFlags = bFullscreen ? DDSCL_FULLSCREEN | DDSCL_EXCLUSIVE : DDSCL_NORMAL;
	HRESULT hSetCooperativeLevelResult = g_sResult.lpDirectDraw->SetCooperativeLevel(hWnd, dwFlags);
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
	if (g_sResult.lpDirectDrawSurface != NULL)
	{
		g_sResult.lpDirectDrawSurface->Release();
		g_sResult.lpDirectDrawSurface = NULL;
	}

	return g_sResult.lpDirectDrawSurface;
}

LPDIRECTDRAW ShutdownDirectDraw()
{
	ReleaseSurface();

	if (g_sResult.lpDirectDraw != NULL)
	{
		g_sResult.lpDirectDraw->RestoreDisplayMode();
		ReleaseDirectDraw();
	}

	return g_sResult.lpDirectDraw;
}

LPDIRECTDRAW ReleaseDirectDraw()
{
	if (g_sResult.lpDirectDraw != NULL)
	{
		g_sResult.lpDirectDraw->Release();
		g_sResult.lpDirectDraw = NULL;
	}

	return g_sResult.lpDirectDraw;
}

void SetPixelFormatMasks(WORD wRedMask, DWORD dwGreenMask, DWORD dwBlueMask)
{
}

BOOL SetDisplayMode(DWORD dwWidth, DWORD dwHeight)
{
	ReleaseSurface();

	if (g_bFullscreen)
	{
		HRESULT hResult = g_sResult.lpDirectDraw->SetDisplayMode(dwWidth, dwHeight, Screen_BPP);
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

		HRESULT hCreateSurfaceResult = g_sResult.lpDirectDraw->CreateSurface(&ddSurfaceDesc, &g_sResult.lpDirectDrawSurface, NULL);
		if (FAILED(hCreateSurfaceResult))
			return FALSE;

		ZeroMemory(&ddSurfaceDesc, sizeof(ddSurfaceDesc));
		HRESULT hGetSurfaceDescResult = g_sResult.lpDirectDrawSurface->GetSurfaceDesc(&ddSurfaceDesc);
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
	//		pBuffer1 = &g_aBufferPrimary[640 * y + result + (g_pdwBuffer >> 1)];
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
	//return result;
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
	//		pBuffer = &g_aBufferPrimary[640 * iTempY + x + (g_pdwBuffer >> 1)];
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
	//return result;
}

void DrawRect(INT x, INT y, INT iWidth, INT iHeight, WORD wColor)
{
	DrawHorizontalLine(x,               y, iWidth, wColor);	//	left,  top    -> right, top
	DrawHorizontalLine(x, y + iHeight - 1, iWidth, wColor);	//	left,  bottom -> right, bottom
	DrawVerticalLine  (x, y, iHeight, wColor);				//	left,  top    -> left, bottom
	DrawVerticalLine  (x + iWidth - 1, y, iHeight, wColor);	//	right, top    -> right, bottom
}

void DrawFilledRect(RECT rcRect, INT iColor)
{
	//LONG v2; // edx@1
	//LONG v3; // ecx@3
	//LONG v4; // esi@5
	//LONG v5; // edx@7
	//LONG result; // eax@7
	//LONG v7; // edx@11
	//char *v8; // esi@11
	//__int32 v9; // edx@13
	//int v10; // ecx@13
	//int v11; // ecx@19
	//__int32 v12; // [sp-Ch] [bp-14h]@13

	//v2 = rcRect.left;
	//if (rcRect.left < g_rcScreenRect.left)
	//{
	//	v2 = g_rcScreenRect.left;
	//	rcRect.right += rcRect.left - g_rcScreenRect.left;
	//	rcRect.left = g_rcScreenRect.left;
	//}
	//v3 = rcRect.top;
	//if (rcRect.top < g_rcScreenRect.top)
	//{
	//	v3 = g_rcScreenRect.top;
	//	rcRect.bottom += rcRect.top - g_rcScreenRect.top;
	//	rcRect.top = g_rcScreenRect.top;
	//}
	//v4 = rcRect.right;
	//if (v2 + rcRect.right - 1 > g_rcScreenRect.right)
	//{
	//	v4 = g_rcScreenRect.right - v2 + 1;
	//	rcRect.right = g_rcScreenRect.right - v2 + 1;
	//}
	//v5 = rcRect.bottom;
	//result = g_rcScreenRect.bottom;
	//if (v3 + rcRect.bottom - 1 > g_rcScreenRect.bottom)
	//{
	//	result = g_rcScreenRect.bottom - v3 + 1;
	//	v5 = g_rcScreenRect.bottom - v3 + 1;
	//	rcRect.bottom = g_rcScreenRect.bottom - v3 + 1;
	//}
	//if (v4 > 0 && v5 > 0)
	//{
	//	v7 = rcRect.bottom;
	//	v8 = (char *)&g_aBufferPrimary[640 * rcRect.top] + 2 * rcRect.left + g_pdwBuffer;
	//	result = iColor;
	//	if (rcRect.top < (unsigned int)g_dwHeightSecond)
	//	{
	//		if (rcRect.bottom + rcRect.top <= (unsigned int)g_dwHeightSecond)
	//			goto LABEL_19;
	//		v9 = rcRect.bottom - (rcRect.bottom + rcRect.top - g_dwHeightSecond);
	//		v12 = rcRect.bottom + rcRect.top - g_dwHeightSecond;
	//		v10 = 0;
	//		do
	//		{
	//			v10 += rcRect.right;
	//			do
	//			{
	//				*(_WORD *)v8 = iColor;
	//				v8 += 2;
	//				--v10;
	//			} while (v10);
	//			v8 += -2 * rcRect.right + 1280;         // v11 += -2 * a3 + sizeof(WORD) * 640
	//			--v9;
	//		} while (v9);
	//		v7 = v12;
	//	}
	//	v8 -= 614400;
	//LABEL_19:
	//	v11 = 0;
	//	do
	//	{
	//		v11 += rcRect.right;
	//		do
	//		{
	//			*(_WORD *)v8 = iColor;
	//			v8 += 2;
	//			--v11;
	//		} while (v11);
	//		v8 += -2 * rcRect.right + 1280;
	//		--v7;
	//	} while (v7);
	//}

}

//	sub_100016D0

void DrawPointPrimaryBuffer(INT x, INT y, WORD wColor)
{
	//LONG result; // eax@1

	//result = g_rcScreenRect.left;
	//if (x >= g_rcScreenRect.left)
	//{
	//	result = g_rcScreenRect.top;
	//	if (y >= g_rcScreenRect.top)
	//	{
	//		if (x <= g_rcScreenRect.right && y <= g_rcScreenRect.bottom)
	//		{
	//			result = (g_pdwBuffer >> 1) + x + 640 * y;
	//			if (y >= g_dwHeightSecond)            // if (y >= 480)
	//				result -= 307200;                     //   result -= 640 * 480
	//			g_aBufferPrimary[result] = sColor;
	//		}
	//	}
	//}
	//return result;
}

void DrawPointSecondaryBuffer(INT x, INT y, WORD wColor)
{
	//LONG result; // eax@1

	//result = g_rcScreenRect.left;
	//if (x >= g_rcScreenRect.left)
	//{
	//	result = g_rcScreenRect.top;
	//	if (y >= g_rcScreenRect.top)
	//	{
	//		if (x <= g_rcScreenRect.right && y <= g_rcScreenRect.bottom)
	//		{
	//			result = (g_pdwBuffer >> 1) + x + 640 * y;
	//			if (y >= g_dwHeightSecond)            // if (y >= 480)
	//				result -= 307200;                     //   result -= 640 * 480;
	//			g_aBufferSecondary[result] = sColor;
	//		}
	//	}
	//}
	//return result;
}

void DrawImage(INT iSrcX, int iSrcY, int a3, int a4, int iDestX, int iDestY, int iDestWidth, BYTE* pDestImage)
{
	//char *pSrc; // esi@1
	//char *pDest; // edi@1
	//int result; // eax@1
	//int v11; // ebx@1
	//int v12; // edx@1
	//int v13; // edx@3
	//int i; // ecx@4
	//int j; // ecx@10
	//int v16; // [sp-10h] [bp-1Ch]@3
	//int iDestWidtha; // [sp+2Ch] [bp+20h]@1

	//pSrc = (char *)&g_aBufferPrimary[640 * iSrcY] + 2 * iSrcX + g_pdwBuffer;
	//pDest = &pDestAddress[2 * (iDestX + iDestY * iDestWidth)];
	//result = a3;
	//v11 = -2 * a3;
	//iDestWidtha = 2 * (iDestWidth - a3);
	//v12 = a4;
	//if (iSrcY >= g_dwHeightSecond)
	//{
	//LABEL_9:
	//	pSrc -= 614400;
	//	goto LABEL_10;
	//}
	//if (a4 + iSrcY > g_dwHeightSecond)
	//{
	//	v16 = a4 + iSrcY - g_dwHeightSecond;
	//	v13 = a4 - (a4 + iSrcY - g_dwHeightSecond);
	//	do
	//	{
	//		for (i = a3; i; --i)
	//		{
	//			*(_WORD *)pDest = *(_WORD *)pSrc;
	//			pSrc += 2;
	//			pDest += 2;
	//		}
	//		pSrc += v11 + 1280;
	//		pDest += iDestWidtha;
	//		--v13;
	//	} while (v13);
	//	v12 = v16;
	//	goto LABEL_9;
	//}
	//do
	//{
	//LABEL_10:
	//	for (j = a3; j; --j)
	//	{
	//		*(_WORD *)pDest = *(_WORD *)pSrc;
	//		pSrc += 2;
	//		pDest += 2;
	//	}
	//	pSrc += v11 + 1280;
	//	pDest += iDestWidtha;
	//	--v12;
	//} while (v12);
	//return result;

}

//	j_nullsub_1

//	nullsub_1

SCADrawInitResult* CADrawInit()
{
	SetScreenVariables();

	g_sResult.pFnSetScreenVariables = SetScreenVariables;
	g_sResult.pFnCreateDirectDrawAndSetCooperativeLevel = CreateDirectDrawAndSetCooperativeLevel;
	g_sResult.pFnShutdownDirectDraw = ShutdownDirectDraw;
	g_sResult.pFnSetDisplayMode = SetDisplayMode;
	g_sResult.pFnSetPixelFormatMasks = SetPixelFormatMasks;
	g_sResult.pFnReleaseSurface = ReleaseSurface;
	g_sResult.pFnLockSurface = LockSurface;
	g_sResult.pFnUnlockSurface = UnlockSurface;

	return &g_sResult;
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
	HRESULT hLockResult = g_sResult.lpDirectDrawSurface->Lock(NULL, &ddSurfaceDesc, DDLOCK_WAIT, NULL);
	if (FAILED(hLockResult))
	{
		do
		{
			if (hLockResult != DDERR_SURFACEBUSY && hLockResult != DDERR_SURFACELOST)
				return FALSE;
			if (hLockResult == DDERR_SURFACELOST)
			{
				HRESULT hRestoreResult = g_sResult.lpDirectDrawSurface->Restore();
				if (FAILED(hRestoreResult))
					return FALSE;
			}

			hLockResult = g_sResult.lpDirectDrawSurface->Lock(NULL, &ddSurfaceDesc, DDLOCK_WAIT, NULL);
		} 
		while (FAILED(hLockResult));
	}

	g_lPitch = ddSurfaceDesc.lPitch;
	g_sResult.pSurfaceData = ddSurfaceDesc.lpSurface;

	return TRUE;
}

BOOL UnlockSurface()
{
	HRESULT hResult = g_sResult.lpDirectDrawSurface->Unlock(NULL);

	g_sResult.pSurfaceData = NULL;

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
	if (g_sResult.pSurfaceData == NULL)
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
		const int iCopyQuadsCount = iDirectDrawSurfaceWidth / 2;
		CopyMemoryQuad(pDest, pSource, iCopyQuadsCount);

		//		pSrc += 2 * a7 + -8 * (iScreenWidth >> 2);
		//		pDest += g_lPitch + -8 * (iScreenWidth >> 2);

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