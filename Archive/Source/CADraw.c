#include <assert.h>
#include <stdbool.h>
#include "CADraw.h"
#include "Constants.h"
#include "Utilites.h"


/*
	���������� ����������.
*/
SCADrawInitResult g_sResult = { 0, };

LONG g_lPitch = 0L;
HWND g_hWnd = NULL;
bool g_bFullscreen = false;

int16_t g_aBufferPrimary16[Screen_Size];
int16_t g_aBufferSecondary16[Screen_Size];
int16_t g_aBufferThird[Screen_Size];


/*
	���������.
*/
UINT GetPointOffsetInBuffer(INT x, INT y);

/*
	����������.
*/
INT SetScreenVariables()
{
	g_sResult.iWidth = Screen_Width;
	g_sResult.iHeight = Screen_Height;
	g_sResult.iWidthInBytes = Screen_WidthInBytes;
	g_sResult.uBufferOrigin16 = 0;
	g_sResult.dwSurfaceHeight = Screen_Height;
	LPRECT lpRect = &g_sResult.rcScreenRect;
	SetRect(lpRect, 0, 0, Screen_Width_1, Screen_Height_1);

	return 0;
}

BOOL CreateDirectDrawAndSetCooperativeLevel(HWND hWnd, BOOL bFullscreen)
{
	assert(hWnd != NULL);

	const DWORD dwFlags = bFullscreen ? DDSCL_FULLSCREEN | DDSCL_EXCLUSIVE : DDSCL_NORMAL;
	HRESULT hResult;

	ShutdownDirectDraw();

	hResult = DirectDrawCreate(NULL, &g_sResult.lpDirectDraw, NULL);
	if (FAILED(hResult))
		return FALSE;
	
	hResult = IDirectDraw_SetCooperativeLevel(g_sResult.lpDirectDraw, hWnd, dwFlags);
	if (FAILED(hResult))
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
		IDirectDrawSurface_Release(g_sResult.lpDirectDrawSurface);
		g_sResult.lpDirectDrawSurface = NULL;
	}

	return g_sResult.lpDirectDrawSurface;
}

LPDIRECTDRAW ShutdownDirectDraw()
{
	ReleaseSurface();

	if (g_sResult.lpDirectDraw != NULL)
	{
		IDirectDraw_RestoreDisplayMode(g_sResult.lpDirectDraw);
		ReleaseDirectDraw();
	}

	return g_sResult.lpDirectDraw;
}

LPDIRECTDRAW ReleaseDirectDraw()
{
	if (g_sResult.lpDirectDraw != NULL)
	{
		IDirectDraw_Release(g_sResult.lpDirectDraw);
		g_sResult.lpDirectDraw = NULL;
	}

	return g_sResult.lpDirectDraw;
}

void SetPixelFormatMasks(WORD wRedMask, DWORD dwGreenMask, DWORD dwBlueMask)
{
}

BOOL SetDisplayMode(DWORD dwWidth, DWORD dwHeight)
{
	assert(IsPow2(dwWidth));
	assert(IsPow2(dwHeight));

	ReleaseSurface();

	if (g_bFullscreen)
	{
		HRESULT hResult = IDirectDraw_SetDisplayMode(g_sResult.lpDirectDraw, dwWidth, dwHeight, Screen_BPP);
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

		HRESULT hCreateSurfaceResult = IDirectDraw_CreateSurface(g_sResult.lpDirectDraw, &ddSurfaceDesc, &g_sResult.lpDirectDrawSurface, NULL);
		if (FAILED(hCreateSurfaceResult))
			return FALSE;

		ZeroMemory(&ddSurfaceDesc, sizeof(ddSurfaceDesc));
		HRESULT hGetSurfaceDescResult = IDirectDrawSurface_GetSurfaceDesc(g_sResult.lpDirectDrawSurface, &ddSurfaceDesc);
		if (FAILED(hGetSurfaceDescResult))
		{
			ReleaseSurface();
			return FALSE;
		}

		//	TODO: implement this.
		//SetGamePixelFormat(
		//	SLOWORD(ddSurfaceDescription.ddpfPixelFormat.dwRBitMask),
		//	ddSurfaceDescription.ddpfPixelFormat.dwGBitMask,
		//	ddSurfaceDescription.ddpfPixelFormat.dwBBitMask);

		SetScreenVariables();
	}

	return 1;
}

void DrawHorizontalLine(int32_t x, int32_t y, int32_t dLength, uint16_t wColor)
{
	assert(dLength > 0);

	if (y < g_sResult.rcScreenRect.top || y > g_sResult.rcScreenRect.bottom)
		return;

	int32_t dRightX = x + dLength - 1;
	if (dRightX <= 0)
		return;
	if (dRightX > g_sResult.rcScreenRect.right)
		dRightX = g_sResult.rcScreenRect.right;
	if (x < g_sResult.rcScreenRect.left)
		x = g_sResult.rcScreenRect.left;

	uint8_t* pBuffer8 = (uint8_t*) g_aBufferPrimary16[Screen_Width * y + x + (g_sResult.uBufferOrigin16 / 2)];
	if (y >= g_sResult.dwSurfaceHeight)
		pBuffer8 -= Screen_SizeInBytes;

	do
	{
		((uint16_t*) pBuffer8) = wColor;
		pBuffer8 += sizeof(wColor);
	}
	while (--dRightX);
}

void DrawVerticalLine(int32_t x, int32_t y, int32_t dLength, uint16_t wColor)
{
	assert(dLength > 0);

	if (x < g_sResult.rcScreenRect.left || x > g_sResult.rcScreenRect.right)
		return;

	int32_t dBottomY = y + dLength - 1;
	if (dBottomY <= 0)
		return;
	if (dBottomY > g_sResult.rcScreenRect.bottom)
		dBottomY = g_sResult.rcScreenRect.bottom;
	if (y < g_sResult.rcScreenRect.top)
		y = g_sResult.rcScreenRect.top;

	uint8_t* pBuffer8 = (uint8_t*) g_aBufferPrimary16[Screen_Width * y + x + (g_sResult.uBufferOrigin16 / 2)];

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

void DrawFilledRect(INT x, INT y, INT iWidth, INT iHeight, INT iColor)
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

	const RECT* rcScreenRect = &g_sResult.rcScreenRect;

	if (x < rcScreenRect->left)
	{
		x = rcScreenRect->left;
		iWidth += x - rcScreenRect->left;
	}
	if (y < rcScreenRect->top)
	{
		y = rcScreenRect->top;
		iHeight += y - rcScreenRect->top;
	}
	if (x + iWidth - 1 > rcScreenRect->right)
	{
		iWidth = rcScreenRect->right - x + 1;
	}
	if (y + iHeight - 1 > rcScreenRect->bottom)
	{
		iHeight = rcScreenRect->bottom - y + 1;
	}
	if (iWidth <= 0 || iHeight <= 0)
		return;

	//if (v4 > 0 && v5 > 0)
	//{
	//	v7 = height;
	//	v8 = (char *)&g_aBufferPrimary[640 * y] + 2 * x + g_pdwBuffer;
	//	if (y < (unsigned int)g_dwHeightSecond)
	//	{
	//		if (height + y <= (unsigned int)g_dwHeightSecond)
	//			goto LABEL_19;
	//		v9 = height - (height + y - g_dwHeightSecond);
	//		v12 = height + y - g_dwHeightSecond;
	//		v10 = 0;
	//		do
	//		{
	//			v10 += width;
	//			do
	//			{
	//				*(_WORD *)v8 = iColor;
	//				v8 += 2;
	//				--v10;
	//			} while (v10);
	//			v8 += -2 * width + 1280;         // v11 += -2 * a3 + sizeof(WORD) * 640
	//			--v9;
	//		} while (v9);
	//		v7 = v12;
	//	}
	//	v8 -= 614400;
	//LABEL_19:
	//	v11 = 0;
	//	do
	//	{
	//		v11 += width;
	//		do
	//		{
	//			*(_WORD *)v8 = iColor;
	//			v8 += 2;
	//			--v11;
	//		} while (v11);
	//		v8 += -2 * width + 1280;
	//		--v7;
	//	} while (v7);
	//}
}

void sub_100016D0(SRect* pStruct)
{
	//LONG v2; // ecx@1
	//__int32 result; // eax@1
	//__int32 v4; // edx@2
	//LONG v5; // edx@3
	//__int32 v6; // esi@4
	//unsigned int v7; // ecx@9
	//int v8; // edx@9
	//char *pPrimaryBuffer; // esi@9
	//unsigned int v10; // eax@9
	//int v11; // edi@9
	//int v12; // ebp@9
	//int v13; // ecx@10
	//bool v14; // cf@10
	//int v15; // ecx@10
	//int v16; // edx@11
	//int v17; // ecx@11
	//int v18; // ecx@17
	//int v19; // [sp-10h] [bp-1Ch]@11

	int iRectRight = -1;
	int iRectBottom = -1;
	if (pStruct->x < g_sResult.rcScreenRect.left)
	{
		iRectRight = pStruct->x - g_sResult.rcScreenRect.left + pStruct->iWidth;
		if (iRectRight <= 0)
			return;
	}
	if (pStruct->y < g_sResult.rcScreenRect.top)
	{
		iRectBottom = pStruct->y - g_sResult.rcScreenRect.top + pStruct->iHeight;
		if (iRectBottom <= 0)
			return;
	}

	if (iRectRight != -1)
	{
		pStruct->iWidth = iRectRight;
		pStruct->x = g_sResult.rcScreenRect.left;
	}
	if (iRectBottom != -1)
	{
		pStruct->iWidth = iRectBottom;
		pStruct->y = g_sResult.rcScreenRect.top;
	}

	

	//		if (v2 + *(_DWORD *)(a2->iWidth) - 1 <= g_rcScreenRect.right
	//			|| (result = g_rcScreenRect.right - v2 + 1, *(_DWORD *)(a2->iWidth) = result, result > 0))
	//		{
	//			if (v5 + *(_DWORD *)(a2->iHeight) - 1 <= g_rcScreenRect.bottom
	//				|| (result = g_rcScreenRect.bottom - v5 + 1, *(_DWORD *)(a2->iHeight) = result, result > 0))
	//			{
	//				v7 = *(_DWORD *)(a2->y);
	//				v8 = *(_DWORD *)(a2->iHeight);
	//				pPrimaryBuffer = (char *)&g_aBufferPrimary[640 * *(_DWORD *)(a2->y)]
	//					+ 2 * *(_DWORD *)(a2->x)
	//					+ g_uBufferOffsetInWords;
	//				v10 = *(_DWORD *)(a2 + 24);
	//				v11 = -*(_DWORD *)(a2->iWidth);
	//				v12 = dword_1000E468;
	//				result = (dword_1000E468 & v10) >> 1;
	//				if (v7 < g_dwHeightSecond)
	//				{
	//					v13 = v8 + v7;
	//					v14 = v13 < (unsigned int)g_dwHeightSecond;
	//					v15 = v13 - g_dwHeightSecond;
	//					if (v14 | v15 == 0)
	//						goto LABEL_17;
	//					v16 = v8 - v15;
	//					v19 = v15;
	//					v17 = 0;
	//					do
	//					{
	//						v17 -= v11;
	//						do
	//						{
	//							LOWORD(a1) = *(_WORD *)pPrimaryBuffer;
	//							a1 = result + ((v12 & a1) >> 1);
	//							*(_WORD *)pPrimaryBuffer = a1;
	//							pPrimaryBuffer += 2;
	//							--v17;
	//						}
	//						while (v17);
	//						pPrimaryBuffer += 2 * v11 + 1280;
	//						--v16;
	//					}
	//					while (v16);
	//					v8 = v19;
	//				}
	//				pPrimaryBuffer -= 614400;
	//			LABEL_17:
	//				v18 = 0;
	//				do
	//				{
	//					v18 -= v11;
	//					do
	//					{
	//						LOWORD(a1) = *(_WORD *)pPrimaryBuffer;
	//						a1 = result + ((v12 & a1) >> 1);
	//						*(_WORD *)pPrimaryBuffer = a1;
	//						pPrimaryBuffer += 2;
	//						--v18;
	//					}
	//					while (v18);
	//					pPrimaryBuffer += 2 * v11 + 1280;
	//					--v8;
	//				}
	//				while (v8);
	//				return result;
	//			}
	//		}

}

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

SCADrawInitResult* __cdecl CADrawInit()
{
	g_sResult.pBufferPrimary = (int16_t*) g_aBufferPrimary16;
	g_sResult.pBufferSecondary = (int16_t*) g_aBufferSecondary16;
	g_sResult.pBufferThird = (int16_t*) g_aBufferThird;

	SetScreenVariables();

	g_sResult.pFnSetScreenVariables = SetScreenVariables;
	g_sResult.pFnCreateDirectDrawAndSetCooperativeLevel = CreateDirectDrawAndSetCooperativeLevel;
	g_sResult.pFnShutdownDirectDraw = ShutdownDirectDraw;
	g_sResult.pFnSetDisplayMode = SetDisplayMode;
	g_sResult.pFnSetPixelFormatMasks = SetPixelFormatMasks;
	g_sResult.pFnReleaseSurface = ReleaseSurface;
	g_sResult.pFnLockSurface = LockSurface;
	g_sResult.pFnUnlockSurface = UnlockSurface;

	//	...

	return &g_sResult;
}

BOOL x_sub_10001BF0(COLOR16* pwSource, COLOR16* pwDest, int iCount)
{
	assert(pwSource != NULL);
	assert(pwDest != NULL);
	assert(iCount > 0);

	if (iCount <= 0)
		return FALSE;

	int iItemsLeft = iCount;
	do
	{
		if (*pwSource != Purple_Color_565)
		{
			//			wCurrentSrcColor = *_pwSrc;
			//			result = g_dwBBitDoubleMask & ((wCurrentSrcColor & 0x1F) << 11 >> m_wBBitFromLeftOffset);// iBBitMask
			//			*_pwDest = g_dwRBitDoubleMask & (unsigned __int16)((unsigned __int16)(*_pwSrc & 0xF800) >> m_wRBitFromLeftOffset) | result | g_dwGBitDoubleMask & (5 << (*_pwSrc & 0x7E0) >> m_wGBitFromLeftOffset);
		}
		else // *pwSource == Purple_Color_565
		{
			*pwDest = Purple_Color_565;
		}

		++pwSource;
		++pwDest;
		--iItemsLeft;
	} 
	while (iItemsLeft > 0);

	return TRUE;
}

//	x_sub_10001C80

void x_sub_10001D00(INT x, INT y)
{
	//	���������� uPositionInBuffer ������ ���� � ��������� �� [0:614400).
	//	���� uPositionInBuffer ������ 614400 ��� �����, �� �������� �� uPositionInBuffer ����� 614400 �� ��� ���, ���� 
	//	uPositionInBuffer �� ����� � ��������� [0:614400).
	//	���� uPositionInBuffer ������ 0, �� ���������� � uPositionInBuffer ����� 614400 �� ��� ���, ����
	//	uPositionInBuffer �� ����� � ��������� [0:614400).
	UINT uPositionInBuffer = g_sResult.uBufferOrigin16 + GetPointOffsetInBuffer(x, y);
	if (uPositionInBuffer >= 0)
	{
		if (uPositionInBuffer >= Screen_SizeInBytes)
		{
			do
				uPositionInBuffer -= Screen_SizeInBytes;
			while (uPositionInBuffer >= Screen_SizeInBytes);
		}
	}
	else // uPositionInBuffer < 0
	{
		do
			uPositionInBuffer += Screen_SizeInBytes;
		while (uPositionInBuffer < 0);
	}



	//	v4 = g_uBufferOffsetInWords / 2 % 640 + x;
	//	if (v4 >= 0)
	//	{
	//		if (v4 < 640)
	//			goto LABEL_12;
	//		memcpy(g_pBufferSecondary, g_pBufferSecondary + 614400, 1280u);
	//		memcpy(g_pBufferPrimary, g_pBufferPrimary + 614400, 1280u);
	//		pDest_v6 = g_pBufferThird;
	//		pSrc_v5 = g_pBufferThird + 614400;
	//	}
	//	else
	//	{
	//		memcpy(g_pBufferSecondary + 614400, g_pBufferSecondary, 1280u);// pDest, pSrc, 1280
	//		memcpy(g_pBufferPrimary + 614400, g_pBufferPrimary, 1280u);
	//		pSrc_v5 = g_pBufferThird;
	//		pDest_v6 = g_pBufferThird + 614400;
	//	}
	//	memcpy(pDest_v6, pSrc_v5, 1280u);
	//	_uBufferPosition = uBufferPosition;
	//LABEL_12:
	//	g_uBufferOffsetInWords = _uBufferPosition;
	//	result = (unsigned int)((unsigned __int64)(1717986919i64 * _uBufferPosition / 2) >> 32) >> 31;
	//	g_dwHeightSecond = 480 - _uBufferPosition / 2 / 640;
	//	if (_y <= 0)
	//	{
	//		if (_y < 0)
	//		{
	//			if (x <= 0)
	//				result = sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
	//			else
	//				result = sub_100028F0(0, -_y, 640 - x, _y + 480, -_y);
	//		}
	//	}
	//	else
	//	{
	//		if (x <= 0)
	//			result = sub_100028F0(-x, 0, x + 640, 480 - _y, -_y);
	//		else
	//			result = sub_100028F0(0, 0, 640 - x, 480 - _y, -_y);
	//	}
	//	return result;
}

//	x_sub_10001EA0_call

//	x_sub_10001EE0_call

//	x_sub_10001F20_call

//	x_sub_10001F50_call

void CopyFromSecondaryBufferToPrimaryBuffer(uint32_t x, uint32_t y, uint32_t dWidth, uint32_t dHeight)
{
	//int v4; // eax@1
	//char *pSrc; // esi@1
	//char *pDest; // edi@1
	//int _bottom; // edx@1
	//unsigned int result; // eax@1
	//int v9; // ebx@1
	//int v10; // edx@3
	//unsigned int v11; // ecx@4
	//unsigned int iDoublesCopied; // ecx@9
	//int v13; // [sp-10h] [bp-1Ch]@3

	uint32_t dPointInBuffers = x + Screen_Width * y;
	uint8_t* pSrc = g_aBufferSecondary16[dPointInBuffers] + g_sResult.uBufferOrigin16;
	assert(pSrc);
	uint8_t* pDest = g_aBufferPrimary16[dPointInBuffers] + g_sResult.uBufferOrigin16;
	assert(pDest);

	//_iHeight = iHeight;
	//result = iWidth >> 2;
	//v9 = 2 * (640 - iWidth);
	//if (y >= g_dwSurfaceHeight)
	//{
	//LABEL_8:
	//	pSrc -= 614400;
	//	pDest -= 614400;
	//	goto LABEL_9;
	//}
	//if (iHeight + y > g_dwSurfaceHeight)
	//{
	//	v13 = iHeight + y - g_dwSurfaceHeight;
	//	v10 = iHeight - (iHeight + y - g_dwSurfaceHeight);
	//	do
	//	{
	//		v11 = iWidth >> 2;
	//		do
	//		{
	//			*(double *)pDest = *(double *)pSrc;
	//			pSrc += 8;
	//			pDest += 8;
	//			--v11;
	//		} while (v11);
	//		pSrc += v9;
	//		pDest += v9;
	//		--v10;
	//	} while (v10);
	//	_iHeight = v13;
	//	goto LABEL_8;
	//}

	//do
	//{
	//LABEL_9:
	//	iDoublesCopied = iWidth >> 2;
	//	do
	//	{
	//		*(double *)pDest = *(double *)pSrc;
	//		pSrc += 8;
	//		pDest += 8;
	//		--iDoublesCopied;
	//	} while (iDoublesCopied);
	//	pSrc += v9;
	//	pDest += v9;
	//	--_iHeight;
	//} while (_iHeight);
}

//	sub_10002030

//	sub_100024C0

//	sub_100027C0

//	sub_10002860

//	sub_100028F0

BOOL LockSurface()
{
	DDSURFACEDESC ddSurfaceDesc;
	ZeroMemory(&ddSurfaceDesc, sizeof(DDSURFACEDESC));
	HRESULT hLockResult = g_sResult.lpDirectDrawSurface->lpVtbl->Lock(g_sResult.lpDirectDrawSurface, NULL, &ddSurfaceDesc, DDLOCK_WAIT, NULL);
	if (FAILED(hLockResult))
	{
		do
		{
			if (hLockResult != DDERR_SURFACEBUSY && hLockResult != DDERR_SURFACELOST)
				return FALSE;
			if (hLockResult == DDERR_SURFACELOST)
			{
				HRESULT hRestoreResult = g_sResult.lpDirectDrawSurface->lpVtbl->Restore(g_sResult.lpDirectDrawSurface);
				if (FAILED(hRestoreResult))
					return FALSE;
			}

			hLockResult = g_sResult.lpDirectDrawSurface->lpVtbl->Lock(g_sResult.lpDirectDrawSurface, NULL, &ddSurfaceDesc, DDLOCK_WAIT, NULL);
		} 
		while (FAILED(hLockResult));
	}

	g_lPitch = ddSurfaceDesc.lPitch;
	g_sResult.pSurfaceData = ddSurfaceDesc.lpSurface;

	return TRUE;
}

BOOL UnlockSurface()
{
	HRESULT hResult = g_sResult.lpDirectDrawSurface->lpVtbl->Unlock(g_sResult.lpDirectDrawSurface, NULL);

	g_sResult.pSurfaceData = NULL;

	return SUCCEEDED(hResult);
}

BOOL CopyDataToDirectDrawSurface(int iSrcX, int iSrcY, int iSrcWidth, int iSrcHeight, int iDestX, int iDestY, int a7, int a8)
{
	BOOL bNeedUnlockSurface = FALSE;
	if (g_sResult.pSurfaceData == NULL)
	{
		if (!LockSurface())
			return FALSE;

		bNeedUnlockSurface = TRUE;
	}

	//	pSrc = a8 + 2 * (iSrcX + iSrcY * a7);
	BYTE* pSource = NULL;
	BYTE* pDest = (PBYTE) g_sResult.pSurfaceData + iDestX + iDestY * g_lPitch;

	do
	{
		const int iCopyQuadsCount = iSrcWidth / 2;
		CopyMemory64(pDest, pSource, iCopyQuadsCount);

		//		pSrc += 2 * a7 + -8 * (iScreenWidth >> 2);
		//		pDest += g_lPitch + -8 * (iScreenWidth >> 2);

		--iSrcHeight;
	} 
	while (iSrcHeight);

	if (bNeedUnlockSurface)
	{
		if (!UnlockSurface())
			return FALSE;
	}

	return TRUE;
}

void CopyLines16(uint32_t dSrcX, uint32_t dSrcY, uint32_t dSrcWidth, uint8_t* pSrc, 
	uint32_t dDestX, uint32_t dDestY, uint32_t dDestWidth, uint8_t* pDest, 
	uint32_t iHorizontalLength, uint32_t iVerticalLength)
{
	pSrc += 2 * (dSrcX + dSrcY * dSrcWidth);
	pDest += 2 * (dDestX + dDestY * dDestWidth);

	uint32_t dSrcStep = 2 * dSrcWidth + -2 * iHorizontalLength;
	uint32_t dDestStep = 2 * dDestWidth + -2 * iHorizontalLength;
	do
	{
		CopyMemory16(pDest, pSrc, iHorizontalLength);

		pSrc += dSrcStep;
		pDest += dDestStep;
	} 
	while (--iVerticalLength);
}

BOOL CopyFromPrimaryBufferToDirectDrawSurface()
{
	return FALSE;
}

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

void sub_100028F0(INT x, INT y, INT iWidth, INT iHeight, int iMinusY)
{
	//	char *pBufferThird; // edi@1
	//	int v6; // edx@1
	//	int v7; // esi@1
	//	int result; // eax@2
	//	int v9; // edx@4
	//	unsigned int v10; // ecx@5
	//	unsigned int v11; // ecx@10
	//	int v12; // edx@16
	//	unsigned int v13; // ecx@17
	//	unsigned int v14; // ecx@22
	//	int v15; // [sp-10h] [bp-1Ch]@4
	//	int v16; // [sp-10h] [bp-1Ch]@16
	
	BYTE* pBufferThird = (BYTE*) g_aBufferThird[Screen_Width * y] + Screen_BytesPerPixel * x + g_sResult.uBufferOrigin16;

	//	pBufferThird = (char *)&g_aBufferThird[640 * y] + 2 * x + g_uBufferOriginInWords;
	//	v6 = iHeight;
	//	v7 = 2 * (640 - iWidth);
	//	if (a5 < 0)
	//	{
	//		result = 0xFFE00000 * a5;
	//		LOWORD(result) = -32 * a5;
	//		if (y < g_dwHeightSecond)
	//		{
	//			if (iHeight + y <= g_dwHeightSecond)
	//			{
	//				do
	//				{
	//				LABEL_10:
	//					v11 = iWidth >> 1;
	//					do
	//					{
	//						*(_DWORD *)pBufferThird -= result;
	//						pBufferThird += 4;
	//						--v11;
	//					} while (v11);
	//					pBufferThird += v7;
	//					--v6;
	//				} while (v6);
	//				return result;
	//			}
	//			v9 = iHeight - (iHeight + y - g_dwHeightSecond);
	//			v15 = iHeight + y - g_dwHeightSecond;
	//			do
	//			{
	//				v10 = iWidth >> 1;
	//				do
	//				{
	//					*(_DWORD *)pBufferThird -= result;
	//					pBufferThird += 4;
	//					--v10;
	//				} while (v10);
	//				pBufferThird += v7;
	//				--v9;
	//			} while (v9);
	//			v6 = v15;
	//		}
	//		pBufferThird -= 614400;
	//		goto LABEL_10;
	//	}
	//	result = a5 << 21;
	//	LOWORD(result) = 32 * a5;
	//	if (y >= g_dwHeightSecond)
	//		goto LABEL_21;
	//	if (iHeight + y > g_dwHeightSecond)
	//	{
	//		v12 = iHeight - (iHeight + y - g_dwHeightSecond);
	//		v16 = iHeight + y - g_dwHeightSecond;
	//		do
	//		{
	//			v13 = iWidth >> 1;
	//			do
	//			{
	//				*(_DWORD *)pBufferThird += result;
	//				pBufferThird += 4;
	//				--v13;
	//			} while (v13);
	//			pBufferThird += v7;
	//			--v12;
	//		} while (v12);
	//		v6 = v16;
	//	LABEL_21:
	//		pBufferThird -= 614400;
	//		goto LABEL_22;
	//	}
	//	do
	//	{
	//	LABEL_22:
	//		v14 = iWidth >> 1;
	//		do
	//		{
	//			*(_DWORD *)pBufferThird += result;
	//			pBufferThird += 4;
	//			--v14;
	//		} while (v14);
	//		pBufferThird += v7;
	//		--v6;
	//	} while (v6);
	//	return result;
}

UINT GetPointOffsetInBuffer(INT x, INT y)
{
	assert(x > 0);
	assert(y > 0);

	return (x + Screen_WidthInBytes * y);
}