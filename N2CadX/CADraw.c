#include <cassert>
#include "CADraw.h"
#include "Constants.h"
#include "Utilites.h"
#include <ddraw.h>


#define HIWORD(x)   (*((WORD*)&(x)+1))
#define LOWORD(x)   (*((WORD*)&(x)))   // low word


SCADrawResult g_result = { 0, };


#pragma region CADraw_Init
/*
	Description: -
	Address: -
	Params: -
*/
SCADrawResult* CADraw_Init()
{
	Initialize();

	g_result.p_buffer1 = g_result.a_buffer1;
	g_result.p_buffer2 = g_result.a_buffer2;
	g_result.p_buffer3 = g_result.a_buffer3;

	// Done.
	g_result.p_fnInitialize = &Initialize;
	g_result.p_fnInitializeDirectDraw = &InitializeDirectDraw;
	g_result.p_fnShutdownDirectDrawFullscreen = &ShutdownDirectDrawFullscreen;
	g_result.p_fnSetDisplayMode = &SetDisplayMode;
	g_result.p_fnSetPixelFormatMasks = &SetPixelFormatMasks;
	g_result.p_fnShutdownDirectDrawSurface = &ShutdownDirectDrawSurface;
	g_result.p_fnLockSurface = &LockSurface;
	g_result.p_fnUnlockSurface = &UnlockSurface;
	g_result.p_fn5 = &x_sub_10001D00;
	g_result.p_fn6 = &x_sub_10001BF0_CopyPixelsArray;
	g_result.p_fn7 = &CopyPixelsArray;
	g_result.p_fn8 = &x_sub_10003400;
	g_result.p_fn9 = &x_sub_10003490_call;
	g_result.p_fn10 = &x_sub_10003430_call;
	g_result.p_fn11 = &x_sub_10001EA0_call;
	g_result.p_fn12 = &x_sub_10001F20_call;
	g_result.p_fn13 = &Sub_10004460;
	g_result.p_fn14 = &Sub_10004786;
	g_result.p_fn15 = &Sub_10004AB6;
	g_result.p_fn16 = &Sub_10005F01;
	g_result.p_fn17 = &Sub_10005B96;
	g_result.p_fn18 = &Sub_1000586C;
	g_result.p_fn19 = &Sub_10007678;
	g_result.p_fnCopyRectBuffer1ToBuffer2 = &CopyRectBuffer1ToBuffer2;
	g_result.p_fnDrawPointToBuffer2 = &DrawPointToBuffer2;
	g_result.p_fn22 = &x_sub_10001EE0_call;
	g_result.p_fn23 = &x_sub_10001F50_call;
	g_result.p_fn24 = &Sub_2D53090;
	g_result.p_fn25 = &Sub_100051AF;
	g_result.p_fn26 = &Sub_10006586;
	g_result.p_fn27 = &Sub_1000625D;
	g_result.p_fn28 = &Sub_10004E80;
	g_result.p_fn29 = &Sub_10006C48;
	g_result.p_fn30 = &Sub_10006FE2;
	g_result.p_fn31 = &Sub_1000687D;
	g_result.p_fn32 = &Sub_100073B2;
	g_result.p_fn33 = &Sub_10007D0C;
	g_result.p_fn34 = &Sub_10007938;
	g_result.p_fn35 = &Sub_10005493;
	g_result.p_fnDrawPointToBuffer1 = &DrawPointToBuffer1;
	g_result.p_fnDrawFilledRectToBuffer1 = &DrawFilledRectToBuffer1;
	g_result.p_fnDrawEmptyRectToBuffer1 = &DrawEmptyRectToBuffer1;
	g_result.p_fnDrawHorizontalLineToBuffer1 = &DrawHorizontalLineToBuffer1;
	g_result.p_fnDrawVerticalLineToBuffer1 = &DrawVerticalLineToBuffer1;
	g_result.p_fn41 = &Sub_100016D0_DrawStruct;
	g_result.p_fn42 = &Sub_100024C0;
	g_result.p_fn43 = &sub_10002030;
	g_result.p_fn44 = &Sub_10002C70;
	g_result.p_fn45 = &CopyFromPrimaryBufferToDirectDrawSurface;
	g_result.p_fn46 = &Sub_2D53090;
	g_result.p_fn47 = &DrawImageToBuffer1;
	g_result.p_fn48 = &x_sub_10002860_RectAndFFFBFFFBu;
	g_result.p_fn49 = &x_sub_100027C0; // !CHECK
	g_result.p_fnCopyData64ToSurface = &CopyData64ToSurface;
	g_result.p_fn51 = &CopyLines;
	g_result.p_fn52 = &Sub_100088E9;
	g_result.p_fn53 = &Sub_10009F13;
	g_result.p_fn54 = &Sub_100098D3;
	g_result.p_fnShutdownDirectDraw = &ShutdownDirectDraw;

	return &g_result;
}
#pragma endregion


#pragma region Functions (done)
/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT Initialize()
{
	g_result.width = ScreenWidth;
	g_result.height = ScreenHeight;
	g_result.widthInBytes = ScreenWidth * sizeof(WORD);
	g_result.offset = 0;
	g_result.surfaceHeight = ScreenHeight;
	g_result.screen.left = 0;
	g_result.screen.top = 0;
	g_result.screen.right = ScreenWidth - 1;
	g_result.screen.bottom = ScreenHeight - 1;

	return 0;
}

/*
	Description: - 
	Address: -
	Params: -
	Notes: -
*/
BOOL InitializeDirectDraw(HWND handle, BOOL fullscreen)
{
	ShutdownDirectDraw();

	HRESULT result = DirectDrawCreate(NULL, &g_result.p_ddraw, NULL);
	if (FAILED(result))
	{
		return FALSE;
	}

	DWORD flags = fullscreen ? DDSCL_FULLSCREEN | DDSCL_EXCLUSIVE : DDSCL_NORMAL;
	result = IDirectDraw_SetCooperativeLevel(g_result.p_ddraw, handle, flags);
	if (FAILED(result))
	{
		ShutdownDirectDrawFullscreen();
		return FALSE;
	}

	g_result.fullscreen = fullscreen;
	g_result.handle = handle;

	return TRUE;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
IDirectDrawSurface* ShutdownDirectDrawSurface()
{
	if (g_result.p_ddrawSurface)
	{
		IDirectDrawSurface_Release(g_result.p_ddrawSurface);
		g_result.p_ddrawSurface = NULL;
	}

	return NULL;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
IDirectDraw* ShutdownDirectDraw()
{
	ShutdownDirectDrawSurface();

	if (g_result.p_ddraw)
	{
		IDirectDraw_Release(g_result.p_ddraw);
		g_result.p_ddraw = NULL;
	}

	return NULL;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
IDirectDraw* ShutdownDirectDrawFullscreen()
{
	ShutdownDirectDrawSurface();

	if (g_result.p_ddraw)
	{
		if (g_result.fullscreen)
		{
			IDirectDraw_RestoreDisplayMode(g_result.p_ddraw);
		}

		IDirectDraw_Release(g_result.p_ddraw);
		g_result.p_ddraw = NULL;
	}

	return NULL;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT SetDisplayMode(INT width, INT height)
{
	HRESULT result;

	ShutdownDirectDrawSurface();

	if (g_result.fullscreen)
	{
		result = IDirectDraw_SetDisplayMode(g_result.p_ddraw, width, height, ScreenBpp, 0, 0);
		if (FAILED(result))
		{
			ShutdownDirectDrawFullscreen();
			return FALSE;
		}
	}

	SetWindowPos(g_result.handle, 0, 0, 0, g_result.width, g_result.height, SWP_NOCOPYBITS | SWP_NOACTIVATE);

	DDSURFACEDESC desc1 = { 0, };
	desc1.dwSize = sizeof(desc1);
	desc1.dwFlags = DDSD_CAPS;
	desc1.ddsCaps.dwCaps = DDSCAPS_PRIMARYSURFACE;

	result = IDirectDraw_CreateSurface(g_result.p_ddraw, &desc1, &g_result.p_ddrawSurface, NULL);
	if (FAILED(result))
	{
		ShutdownDirectDrawFullscreen();
		return FALSE;
	}

	DDSURFACEDESC desc2 = { 0, };
	desc2.dwSize = sizeof(desc2);
	result = IDirectDrawSurface_GetSurfaceDesc(g_result.p_ddrawSurface, &desc2);
	if (FAILED(result))
	{
		ShutdownDirectDrawFullscreen();
		return FALSE;
	}

	SetPixelFormatMasks(desc2.ddpfPixelFormat.dwRBitMask, desc2.ddpfPixelFormat.dwGBitMask,
		desc2.ddpfPixelFormat.dwBBitMask);

	return TRUE;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT DrawPointToBuffer1(INT x, INT y, WORD color)
{
	if (x < g_result.screen.left || x > g_result.screen.right)
		return 0;

	if (y < g_result.screen.top || y > g_result.screen.bottom)
		return 0;

	INT pos = x + ScreenWidth * y;

	g_result.a_buffer1[pos] = color;

	return pos;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT DrawPointToBuffer2(INT x, INT y, WORD color)
{
	if (x < g_result.screen.left || x > g_result.screen.right)
		return 0;

	if (y < g_result.screen.top || y > g_result.screen.bottom)
		return 0;

	INT pos = x + ScreenWidth * y;

	g_result.a_buffer2[pos] = color;

	return pos;
}

/*
	Description: lock DirectDraw surface, save lPitch and pointer on surface data. If error occurs method try to
		re-lock surface.
	Address: 0x100029D0
	Params: -
	Notes: -
*/
BOOL LockSurface()
{
	DDSURFACEDESC2 desc = { 0, };
	desc.dwSize = sizeof(DDSURFACEDESC2);

	HRESULT result = IDirectDrawSurface_Lock(g_result.p_ddrawSurface, NULL, &desc, DDLOCK_WAIT, NULL);
	if (FAILED(result))
	{
		while (true)
		{
			if (result != DDERR_SURFACEBUSY && result != DDERR_SURFACELOST)
				return FALSE;

			result = IDirectDrawSurface_Restore(g_result.p_ddrawSurface);
			if (SUCCEEDED(result))
			{
				result = IDirectDrawSurface_Lock(g_result.p_ddrawSurface, NULL, &desc, DDLOCK_WAIT, NULL);
				if (SUCCEEDED(result))
					break;
			}
		}
	}

	g_result.pitch = desc.lPitch;
	g_result.p_surface = desc.lpSurface;

	return TRUE;
}

/*
	Description: unlock DirectDraw surface, clear pointer on surface data and return lock result.
	Address: 0x10002A50
	Params: -
	Notes: -
*/
BOOL UnlockSurface()
{
	HRESULT result = IDirectDrawSurface_Unlock(g_result.p_ddrawSurface, NULL);

	g_result.p_surface = NULL;

	return SUCCEEDED(result);
}
#pragma endregion


#pragma region Functions (generated, done)
/*
	Description: fast copy (method cast pointer from UINT64 to UINT64) data from source buffer (p_source) to
		IDirectDraw surface data (g_result.p_surface). If 		IDirectDraw surface isn't locked, method lock it and
		before exit unlock it.
		Address: 0x10002A70
	Params:
		sourceX
		sourceY
		destWidth
		destHeight
		destX
		destY
		sourceWidth
		p_source
	Notes: modified locking and unlocking surface logic and return result. On the original version during surface
		unlocking on the end of function may return not DD_OK value (some error code), but logic of this method is
		return TRUE when no errors occurred.
*/
BOOL CopyData64ToSurface(INT sourceX, INT sourceY, INT destWidth, INT destHeight, INT destX, INT destY, INT sourceWidth,
	WORD* p_source)
{
	auto isSurfaceLocked = g_result.p_surface != NULL;
	if (!isSurfaceLocked)
	{
		auto result = LockSurface();
		if (!result)
		{
			return FALSE;
		}
	}

	auto p_src = (BYTE*)p_source + ((sourceX + sourceY * sourceWidth) * 2);
	auto p_dest = (BYTE*)g_result.p_surface + (2 * destX + destY * g_result.pitch);
	auto width2 = destWidth / 2;

	for (auto y = 0; y < destHeight; ++y)
	{
		for (auto x = 0; x < width2; ++x)
		{
			*(double*)p_dest = *(double*)p_src;

			p_src += 8;
			p_dest += 8;
		}

		p_src += 2 * sourceWidth + -8 * width2;
		p_dest += g_result.pitch + -8 * width2;
	}

	if (!isSurfaceLocked)
	{
		auto result = UnlockSurface();
		if (!result)
		{
			return FALSE;
		}
	}

	return TRUE;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT sub_10002030(INT x, INT y, INT iWidth, WORD color, INT a5)
{
	int _dWidth; // edi@1
	int v6; // ecx@1
	int v7; // ebx@1
	int v8; // ebp@1
	int v9; // esi@1
	int v10; // eax@1
	BOOL v11; // zf@6
	BOOL v12; // sf@6
	unsigned __int8 v13; // of@6
	int v14; // ebp@7
	int v15; // eax@13
	int v16; // edx@19
	int v17; // ebp@20
	int v18; // eax@20
	int v19; // ebp@32
	int v20; // eax@32
	int v21; // eax@38
	int v22; // ecx@38
	int result; // eax@44
	int v24; // edi@44
	int v25; // ebp@44
	int v26; // ebx@44
	int _y; // [sp+10h] [bp-10h]@1
	int _ya; // [sp+10h] [bp-10h]@7
	int _yb; // [sp+10h] [bp-10h]@13
	int _yc; // [sp+10h] [bp-10h]@20
	int _yd; // [sp+10h] [bp-10h]@26
	int _ye; // [sp+10h] [bp-10h]@38
	int v33; // [sp+14h] [bp-Ch]@1
	int v34; // [sp+14h] [bp-Ch]@13
	int v35; // [sp+14h] [bp-Ch]@26
	int v36; // [sp+14h] [bp-Ch]@32
	int v37; // [sp+14h] [bp-Ch]@38
	int v38; // [sp+18h] [bp-8h]@1
	int v39; // [sp+18h] [bp-8h]@13
	int v40; // [sp+18h] [bp-8h]@32
	int v41; // [sp+18h] [bp-8h]@44
	int v42; // [sp+1Ch] [bp-4h]@1
	int v43; // [sp+1Ch] [bp-4h]@7
	int v44; // [sp+1Ch] [bp-4h]@13
	int v45; // [sp+1Ch] [bp-4h]@26
	int v46; // [sp+1Ch] [bp-4h]@32
	int v47; // [sp+1Ch] [bp-4h]@38
	int v48; // [sp+1Ch] [bp-4h]@44
	int dWidth_x; // [sp+2Ch] [bp+Ch]@1
	int iWidthb; // [sp+2Ch] [bp+Ch]@7
	int iWidthc; // [sp+2Ch] [bp+Ch]@13
	int iWidthd; // [sp+2Ch] [bp+Ch]@20
	int iWidthe; // [sp+2Ch] [bp+Ch]@26
	int iWidthf; // [sp+2Ch] [bp+Ch]@32
	int iWidthg; // [sp+2Ch] [bp+Ch]@38
	int iWidthh; // [sp+2Ch] [bp+Ch]@44

	_dWidth = iWidth;
	v6 = a5;
	v7 = 0;
	v33 = 2 * iWidth;
	v8 = 1 - iWidth;
	v9 = a5;
	v10 = -iWidth;
	v38 = -iWidth;
	dWidth_x = iWidth + x;
	v42 = 0;
	_y = y;
	do
	{
		if (v9 > v6)
		{
			v9 -= v6;
			DrawPointToBuffer1(dWidth_x, _y, color);
			v6 = a5;
			v10 = v38;
		}
		if (v8 >= 0)
		{
			--_dWidth;
			v9 += 14729;
			--dWidth_x;
			++v10;
			v33 -= 2;
			v38 = v10;
			v8 -= v33;
		}
		++v7;
		v9 += 0x10000;
		++_y;
		v8 += 8 * v7 + 1;
		//TODO: fix : v13 = __OFSUB__(v10, v42 - 4);
		v13 = 0;
		v11 = v10 == v42 - 4;
		v12 = v10 - (v42 - 4) < 0;
		v42 -= 4;
	} while ((unsigned __int8)(v12 ^ v13) | v11);
	v43 = 8 * v7;
	_ya = _dWidth + x;
	v14 = -v8;
	iWidthb = v7 + y;
	do
	{
		if (v9 > v6)
		{
			v9 -= v6;
			DrawPointToBuffer1(_ya, iWidthb, color);
			v6 = a5;
		}
		if (v14 >= 0)
		{
			++v7;
			v9 += 14729;
			++iWidthb;
			v43 += 8;
			v14 -= v43;
		}
		--_dWidth;
		v9 += 0x10000;
		--_ya;
		v14 = v14 + 2 * _dWidth - 1;
	} while (_dWidth >= 0);
	v34 = 2 * _dWidth;
	v44 = 8 * v7;
	_yb = _dWidth + x;
	v15 = -4 * v7;
	v39 = -4 * v7;
	iWidthc = v7 + y;
	while (1)
	{
		if (v9 > v6)
		{
			v9 -= v6;
			DrawPointToBuffer1(_yb, iWidthc, color);
			v15 = v39;
		}
		if (v14 >= 0)
		{
			--v7;
			v15 += 4;
			--iWidthc;
			v9 += 14729;
			v44 -= 8;
			v39 = v15;
			v14 -= v44;
		}
		--_dWidth;
		--_yb;
		v9 += 0x10000;
		v16 = 1 - (v34 - 2);
		v34 -= 2;
		v14 += v16;
		if (v15 > _dWidth)
			break;
		v6 = a5;
	}
	v17 = -v14;
	_yc = v7 + y;
	v18 = a5;
	iWidthd = _dWidth + x;
	do
	{
		if (v9 > v18)
		{
			v9 -= v18;
			DrawPointToBuffer1(iWidthd, _yc, color);
			v18 = a5;
		}
		if (v17 >= 0)
		{
			--_dWidth;
			v9 += 14729;
			--iWidthd;
			v17 += 2 * _dWidth;
		}
		--v7;
		v9 += 0x10000;
		--_yc;
		v17 += 8 * v7 + 1;
	} while (v7 >= 0);
	v35 = 4 * v7;
	v45 = 8 * v7;
	iWidthe = _dWidth + x;
	_yd = v7 + y;
	do
	{
		if (v9 > v18)
		{
			v9 -= v18;
			DrawPointToBuffer1(iWidthe, _yd, color);
			v18 = a5;
		}
		if (v17 >= 0)
		{
			++_dWidth;
			v9 += 14729;
			++iWidthe;
			v17 += 2 * _dWidth;
		}
		--v7;
		--_yd;
		v35 -= 4;
		v45 -= 8;
		v9 += 0x10000;
		v17 += -1 - v45;
	} while (_dWidth <= v35);
	v46 = 2 * _dWidth;
	v19 = -v17;
	v36 = _dWidth + x;
	v20 = -_dWidth;
	v40 = -_dWidth;
	iWidthf = v7 + y;
	do
	{
		if (v9 > a5)
		{
			v9 -= a5;
			DrawPointToBuffer1(v36, iWidthf, color);
			v20 = v40;
		}
		if (v19 >= 0)
		{
			--v7;
			v9 += 14729;
			--iWidthf;
			v19 += 8 * v7;
		}
		++_dWidth;
		++v36;
		--v20;
		v9 += 0x10000;
		v19 += 1 - (v46 + 2);
		v46 += 2;
		v40 = v20;
	} while (v20 >= 0);
	_ye = 4 * v7;
	v37 = _dWidth + x;
	v21 = -_dWidth;
	iWidthg = v7 + y;
	v22 = a5;
	v47 = -_dWidth;
	do
	{
		if (v9 > v22)
		{
			v9 -= v22;
			DrawPointToBuffer1(v37, iWidthg, color);
			v22 = a5;
			v21 = v47;
		}
		if (v19 >= 0)
		{
			++v7;
			++iWidthg;
			v9 += 14729;
			_ye += 4;
			v19 += 8 * v7;
		}
		++_dWidth;
		--v21;
		++v37;
		v9 += 0x10000;
		v47 = v21;
		v19 = v19 + 2 * _dWidth - 1;
	} while (_ye <= v21);
	v48 = 8 * v7;
	result = -v19;
	iWidthh = 2 * _dWidth;
	v24 = x + _dWidth;
	v25 = -4 * v7;
	v41 = result;
	v26 = y + v7;
	while (1)
	{
		if (v9 > v22)
		{
			v9 -= v22;
			DrawPointToBuffer1(v24, v26, color);
			result = v41;
		}
		if (result >= 0)
		{
			++v24;
			v9 += 14729;
			iWidthh += 2;
			result -= iWidthh;
		}
		v25 -= 4;
		++v26;
		v9 += 0x10000;
		result += -1 - (v48 + 8);
		v48 += 8;
		v41 = result;
		if (v25 < 0)
			break;
		v22 = a5;
	}
	return result;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT DrawImageToBuffer1(INT iSrcX, INT iSrcY, INT a3, INT a4, INT iDestX, INT iDestY, INT iDestWidth,
	CHAR* pDestAddress)
{
	char *pSrc; // esi@1
	char *pDest; // edi@1
	int result; // eax@1
	int v11; // ebx@1
	int v12; // edx@1
	int v13; // edx@3
	int i; // ecx@4
	int j; // ecx@10
	unsigned int v16; // [sp-10h] [bp-1Ch]@3
	int iDestWidtha; // [sp+2Ch] [bp+20h]@1

	pSrc = (char *) &g_result.a_buffer1[640 * iSrcY] + 2 * iSrcX + g_result.offset;
	pDest = &pDestAddress[2 * (iDestX + iDestY * iDestWidth)];
	result = a3;
	v11 = -2 * a3;
	iDestWidtha = 2 * (iDestWidth - a3);
	v12 = a4;
	if (iSrcY >= g_result.surfaceHeight)
	{
	LABEL_9:
		pSrc -= 614400;
		goto LABEL_10;
	}
	if (a4 + iSrcY > g_result.surfaceHeight)
	{
		v16 = a4 + iSrcY - g_result.surfaceHeight;
		v13 = a4 - v16;
		do
		{
			for (i = a3; i; --i)
			{
				*(WORD*) pDest = *(WORD*) pSrc;
				pSrc += 2;
				pDest += 2;
			}
			pSrc += v11 + 1280;
			pDest += iDestWidtha;
			--v13;
		} while (v13);
		v12 = v16;
		goto LABEL_9;
	}
	do
	{
	LABEL_10:
		for (j = a3; j; --j)
		{
			*(WORD*) pDest = *(WORD*) pSrc;
			pSrc += 2;
			pDest += 2;
		}
		pSrc += v11 + 1280;
		pDest += iDestWidtha;
		--v12;
	} while (v12);
	return result;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT DrawFilledRectToBuffer1(INT x, INT y, INT iWidth, INT iHeight, WORD iColor)
{
	LONG _x; // edx@1
	LONG _y; // ecx@3
	int _iWidth; // esi@5
	int _iHeight; // edx@7
	LONG result; // eax@7
	int __iHeight; // edx@11
	char *pcBuffer; // esi@11
	int v12; // edx@13
	int v13; // ecx@13
	int v14; // ecx@19
	int v15; // [sp-Ch] [bp-14h]@13

	_x = x;
	if (x < g_result.screen.left)
	{
		_x = g_result.screen.left;
		iWidth += x - g_result.screen.left;
		x = g_result.screen.left;
	}
	_y = y;
	if (y < g_result.screen.top)
	{
		_y = g_result.screen.top;
		iHeight += y - g_result.screen.top;
		y = g_result.screen.top;
	}
	_iWidth = iWidth;
	if (_x + iWidth - 1 > g_result.screen.right)
	{
		_iWidth = g_result.screen.right - _x + 1;
		iWidth = g_result.screen.right - _x + 1;
	}
	_iHeight = iHeight;
	result = g_result.screen.bottom;
	if (_y + iHeight - 1 > g_result.screen.bottom)
	{
		result = g_result.screen.bottom - _y + 1;
		_iHeight = g_result.screen.bottom - _y + 1;
		iHeight = g_result.screen.bottom - _y + 1;
	}
	if (_iWidth > 0 && _iHeight > 0)
	{
		__iHeight = iHeight;
		pcBuffer = (char *) &g_result.a_buffer1[640 * y] + 2 * x + g_result.offset;
		result = iColor;
		if (y < (unsigned int) g_result.surfaceHeight)
		{
			if (iHeight + y <= (unsigned int) g_result.surfaceHeight)
				goto LABEL_19;
			v12 = iHeight - (iHeight + y - g_result.surfaceHeight);
			v15 = iHeight + y - g_result.surfaceHeight;
			v13 = 0;
			do
			{
				v13 += iWidth;
				do
				{
					*(WORD*) pcBuffer = iColor;
					pcBuffer += 2;
					--v13;
				} while (v13);
				pcBuffer += -2 * iWidth + 1280;         // v11 += -2 * a3 + sizeof(WORD) * 640
				--v12;
			} while (v12);
			__iHeight = v15;
		}
		pcBuffer -= 614400;
	LABEL_19:
		v14 = 0;
		do
		{
			v14 += iWidth;
			do
			{
				*(WORD*) pcBuffer = iColor;
				pcBuffer += 2;
				--v14;
			} while (v14);
			pcBuffer += -2 * iWidth + 1280;
			--__iHeight;
		} while (__iHeight);
	}
	return result;
}

/*
	Description: -
	Address: 10001D00
	Params:
		x
		y
	Notes: -
*/
INT x_sub_10001D00(INT x, INT y)
{
	int _y; // ebp@1
	signed int _uBufferPosition; // ecx@1
	int v4; // eax@7
	BYTE *pSrc_v5; // esi@8
	BYTE *pDest_v6; // edi@8
	unsigned int result; // eax@12
	int uBufferPosition; // [sp+10h] [bp+8h]@1

	_y = y;
	uBufferPosition = g_result.offset + 2 * (x + 640 * y);
	_uBufferPosition = uBufferPosition;
	if (uBufferPosition >= 0)
	{
		if (uBufferPosition < 614400)
			goto LABEL_7;
		do
			_uBufferPosition -= 614400;
		while (_uBufferPosition >= 614400);
	}
	else
	{
		do
			_uBufferPosition += 614400;
		while (_uBufferPosition < 0);
	}
	uBufferPosition = _uBufferPosition;
LABEL_7:
	v4 = g_result.offset / 2 % 640 + x;
	if (v4 >= 0)
	{
		if (v4 < 640)
			goto LABEL_12;
		CopyMemory64(g_result.p_buffer2, g_result.p_buffer2 + 614400, 1280u / 4);
		CopyMemory64(g_result.p_buffer1, g_result.p_buffer1 + 614400, 1280u / 4);
		pDest_v6 = g_result.p_buffer3;
		pSrc_v5 = g_result.p_buffer3 + 614400;
	}
	else
	{
		CopyMemory64(g_result.p_buffer2 + 614400, g_result.p_buffer2, 1280u / 4);// pDest, pSrc, 1280
		CopyMemory64(g_result.p_buffer1 + 614400, g_result.p_buffer1, 1280u / 4);
		pSrc_v5 = g_result.p_buffer3;
		pDest_v6 = g_result.p_buffer3 + 614400;
	}
	CopyMemory64(pDest_v6, pSrc_v5, 1280u / 4);
	_uBufferPosition = uBufferPosition;
LABEL_12:
	g_result.offset = _uBufferPosition;
	result = (unsigned int) ((unsigned __int64) (1717986919i64 * (_uBufferPosition / 2)) >> 32) >> 31;//  result = pTempData8 / 2 / 1024;
	g_result.surfaceHeight = 480 - _uBufferPosition / 2 / 640;
	if (_y <= 0)
	{
		if (_y < 0)
		{
			if (x <= 0)
				result = x_sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
			else
				result = x_sub_100028F0(0, -_y, 640 - x, _y + 480, -_y);
		}
	}
	else if (x <= 0)
	{
		result = x_sub_100028F0(-x, 0, x + 640, 480 - _y, -_y);
	}
	else
	{
		result = x_sub_100028F0(0, 0, 640 - x, 480 - _y, -_y);
	}
	return result;
}

/*
	Description: copy rectangle area from primary buffer (buffer1) to secondary buffer (buffer2).
	Address: 10001F90
	Params:
		x - x-coord of source rectangle.
		y - y-coord of source rectangle.
		width - width of source rectangle.
		height - height of source rectangle.
	Notes: -
*/
INT CopyRectBuffer1ToBuffer2(INT x, INT y, INT iWidth, INT iHeight)
{
	unsigned int v4; // eax@1
	double *pSrc; // esi@1
	double *pDest; // edi@1
	int _iHeight; // edx@1
	unsigned int result; // eax@1
	unsigned int v9; // ebx@1
	int v10; // edx@3
	unsigned int v11; // ecx@4
	unsigned int iDoublesCopied; // ecx@9
	unsigned int v13; // [sp-10h] [bp-1Ch]@3

	v4 = x + 640 * y;
	pSrc = (double *) ((char *) &g_result.a_buffer2[v4] + g_result.offset);
	pDest = (double *) ((char *) &g_result.a_buffer1[v4] + g_result.offset);
	_iHeight = iHeight;
	result = iWidth >> 2;
	v9 = 2 * (640 - iWidth);
	if (y >= g_result.surfaceHeight)
	{
	LABEL_8:
		pSrc -= 76800;
		pDest -= 76800;
		goto LABEL_9;
	}
	if (iHeight + y > g_result.surfaceHeight)
	{
		v13 = iHeight + y - g_result.surfaceHeight;
		v10 = iHeight - v13;
		do
		{
			v11 = iWidth >> 2;
			do
			{
				*pDest = *pSrc;
				++pSrc;
				++pDest;
				--v11;
			} while (v11);
			pSrc = (double *) ((char *) pSrc + v9);
			pDest = (double *) ((char *) pDest + v9);
			--v10;
		} while (v10);
		_iHeight = v13;
		goto LABEL_8;
	}
	do
	{
	LABEL_9:
		iDoublesCopied = iWidth >> 2;
		do
		{
			*pDest = *pSrc;
			++pSrc;
			++pDest;
			--iDoublesCopied;
		} while (iDoublesCopied);
		pSrc = (double *) ((char *) pSrc + v9);
		pDest = (double *) ((char *) pDest + v9);
		--_iHeight;
	} while (_iHeight);
	return result;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT DrawVerticalLineToBuffer1(INT x, INT y, INT iSize, WORD a4)
{
	int iTempY; // edx@1
	LONG result; // eax@1
	__int16 *pBuffer; // ecx@8
	LONG v7; // edx@9
	LONG v8; // eax@10

	iTempY = y;
	result = iSize + y - 1;
	if (x >= g_result.screen.left && x <= g_result.screen.right)
	{
		if (y < g_result.screen.top)
			iTempY = g_result.screen.top;
		if (result > g_result.screen.bottom)
			result = g_result.screen.bottom;
		result += 1 - iTempY;
		if (result > 0)
		{
			pBuffer = &g_result.a_buffer1[640 * iTempY + x + (g_result.offset >> 1)];
			if (iTempY < g_result.surfaceHeight)
			{
				v7 = result - g_result.surfaceHeight + iTempY;
				if (v7 <= 0)
					goto LABEL_14;
				v8 = result - v7;
				do
				{
					*pBuffer = a4;
					--v8;
					pBuffer += 640;
				} while (v8);
				result = v7;
			}
			pBuffer -= 307200;                        // v6 -= 640 * 480
			do
			{
			LABEL_14:
				*pBuffer = a4;
				--result;
				pBuffer += 640;
			} while (result);
			return result;
		}
	}
	return result;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT x_sub_100027C0()
{
	char *pBufferThird; // edi@1
	LONG iScreenRectHeight; // edx@1
	unsigned int iScreenRectWidth; // ebx@1
	int i640AndScreenWidthDiffInBytes; // esi@1
	unsigned int iHalfOfScreenRectWidth; // ebx@1
	__int32 result; // eax@1
	LONG v6; // ecx@2
	int v7; // edx@3
	unsigned int v8; // ecx@4
	unsigned int v9; // ecx@9
	LONG v10; // [sp-10h] [bp-1Ch]@3

	pBufferThird = (char *) &g_result.a_buffer3[640 * g_result.screen.top] + 2 * g_result.screen.left + g_result.offset;
	iScreenRectHeight = g_result.screen.bottom - g_result.screen.top + 1;
	iScreenRectWidth = g_result.screen.right - g_result.screen.left + 1;
	i640AndScreenWidthDiffInBytes = 2 * (640 - iScreenRectWidth);
	iHalfOfScreenRectWidth = iScreenRectWidth >> 1;
	result = 32 * (g_result.screen.top | (g_result.screen.top << 16));
	if (g_result.screen.top >= (unsigned int) g_result.surfaceHeight)
	{
	LABEL_8:
		pBufferThird -= 614400;
		goto LABEL_9;
	}
	v6 = iScreenRectHeight + g_result.screen.top - g_result.surfaceHeight;
	if (iScreenRectHeight + g_result.screen.top > (unsigned int) g_result.surfaceHeight)
	{
		v7 = iScreenRectHeight - v6;
		v10 = v6;
		do
		{
			v8 = iHalfOfScreenRectWidth;
			do
			{
				*(DWORD*) pBufferThird = result;
				pBufferThird += 4;
				--v8;
			} while (v8);
			pBufferThird += i640AndScreenWidthDiffInBytes;
			result += 2097184;
			--v7;
		} while (v7);
		iScreenRectHeight = v10;
		goto LABEL_8;
	}
	do
	{
	LABEL_9:
		v9 = iHalfOfScreenRectWidth;
		do
		{
			*(DWORD*) pBufferThird = result;
			pBufferThird += 4;
			--v9;
		} while (v9);
		pBufferThird += i640AndScreenWidthDiffInBytes;
		result += 2097184;
		--iScreenRectHeight;
	} while (iScreenRectHeight);
	return result;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT x_sub_10002860_RectAndFFFBFFFBu(INT x, INT y, INT iWidth, INT iHeight)
{
	char *pBuffer; // edi@1
	unsigned int result; // eax@1
	int v6; // edx@1
	unsigned int v7; // esi@1
	unsigned int v8; // edx@3
	unsigned int v9; // ecx@4
	unsigned int v10; // ecx@9
	unsigned int v11; // [sp-10h] [bp-1Ch]@3

	pBuffer = (char *) &g_result.a_buffer3[640 * y] + 2 * x + g_result.offset;
	result = 0xFFFBFFFB;
	v6 = iHeight;
	v7 = 2 * (640 - iWidth);
	if (y >= g_result.surfaceHeight)
	{
	LABEL_8:
		pBuffer -= 614400;
		goto LABEL_9;
	}
	if (iHeight + y > g_result.surfaceHeight)
	{
		v8 = iHeight - (iHeight + y - g_result.surfaceHeight);
		v11 = iHeight + y - g_result.surfaceHeight;
		do
		{
			v9 = iWidth >> 1;
			do
			{
				*(DWORD*) pBuffer &= 0xFFFBFFFB;
				pBuffer += 4;
				--v9;
			} while (v9);
			pBuffer += v7;
			--v8;
		} while (v8);
		v6 = v11;
		goto LABEL_8;
	}
	do
	{
	LABEL_9:
		v10 = iWidth >> 1;
		do
		{
			*(DWORD*) pBuffer &= 0xFFFBFFFB;
			pBuffer += 4;
			--v10;
		} while (v10);
		pBuffer += v7;
		--v6;
	} while (v6);
	return result;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT DrawEmptyRectToBuffer1(INT x, INT y, INT iWidth, INT iHeight, WORD color)
{
	int v6; // [sp+0h] [bp-18h]@0
	WORD v7; // [sp+4h] [bp-14h]@0

	DrawHorizontalLineToBuffer1(x, y, v6, v7);
	DrawHorizontalLineToBuffer1(x, y + iHeight - 1, iWidth, color);
	DrawVerticalLineToBuffer1(x, y, iHeight, color);
	return DrawVerticalLineToBuffer1(x + iWidth - 1, y, iHeight, color);
}

/*
	Description: -
	Address: 10002B10
	Params: -
	Notes: -
*/
int CopyLines(int iSrcX, int iSrcY, int iSrcWidth, char *pSrc, int iDestX, int iDestY, int iDestWidth, char *pDest, int a9, int iHeight)
{
	char *_pSrc; // esi@1
	char *_pDest; // edi@1
	int _iHeight; // edx@1
	int dSrcStep; // eax@1
	int v14; // ecx@1
	int iDestWidth16; // [sp+2Ch] [bp+20h]@1

	_pSrc = &pSrc[2 * (iSrcX + iSrcY * iSrcWidth)];
	_pDest = &pDest[2 * (iDestX + iDestY * iDestWidth)];
	iDestWidth16 = 2 * iDestWidth;
	_iHeight = iHeight;
	dSrcStep = 2 * iSrcWidth + -2 * a9;
	v14 = 0;
	do
	{
		for (v14 += a9; v14; --v14)
		{
			*(WORD*)_pDest = *(WORD*)_pSrc;
			_pSrc += 2;
			_pDest += 2;
		}
		_pSrc += dSrcStep;
		_pDest += iDestWidth16 + -2 * a9;
		--_iHeight;
	} while (_iHeight);
	return dSrcStep;
}

/*
	Description: -
	Address: 10002B70
	Params: -
	Notes: -
*/
signed int CopyFromPrimaryBufferToDirectDrawSurface(int a1, unsigned int a2, unsigned int a3, int a4)
{
	signed int result; // eax@2
	char *v5; // esi@5
	char *v6; // edi@5
	int v7; // edx@5
	unsigned int v8; // ebx@5
	int v9; // edx@7
	unsigned int v10; // ecx@8
	double v11; // st7@9
	unsigned int v12; // ecx@13
	double v13; // st7@14
	unsigned int v14; // [sp-10h] [bp-20h]@7
	BOOL bIsSurfaceMustLocked; // [sp+Ch] [bp-4h]@3

	if (g_result.p_surface)
	{
		bIsSurfaceMustLocked = FALSE;
	}
	else
	{
		result = LockSurface();
		if (!result)
			return result;
		bIsSurfaceMustLocked = TRUE;
	}
	v5 = (char *)&g_result.a_buffer1[640 * a2] + 2 * a1 + g_result.offset;
	v6 = (char *)g_result.p_surface + a1 + a1 + a2 * g_result.pitch;
	v7 = a4;
	v8 = -2 * a3;
	if (a2 < g_result.surfaceHeight)
	{
		if (a4 + a2 <= g_result.surfaceHeight)
			goto LABEL_13;
		v14 = a4 + a2 - g_result.surfaceHeight;
		v9 = a4 - v14;
		do
		{
			v10 = a3 >> 3;
			do
			{
				v11 = *((double *)v5 + 1);
				*(double *)v6 = *(double *)v5;
				*((double *)v6 + 1) = v11;
				v5 += 16;
				v6 += 16;
				--v10;
			} while (v10);
			v5 += v8 + 1280;
			v6 += v8 + g_result.pitch;
			--v9;
		} while (v9);
		v7 = v14;
	}
	v5 -= 614400;
	do
	{
	LABEL_13:
		v12 = a3 >> 3;
		do
		{
			v13 = *((double *)v5 + 1);
			*(double *)v6 = *(double *)v5;
			*((double *)v6 + 1) = v13;
			v5 += 16;
			v6 += 16;
			--v12;
		} while (v12);
		v5 += v8 + 1280;
		v6 += v8 + g_result.pitch;
		--v7;
	} while (v7);
	result = bIsSurfaceMustLocked;
	if (bIsSurfaceMustLocked)
		result = UnlockSurface();
	return result;
}

/*
	Description: -
	Address: 10001BF0
	Params: -
*/
//----- (10001BF0) --------------------------------------------------------
// WORD red_mask = 0xF800;
// WORD green_mask = 0x7E0;
// WORD blue_mask = 0x1F;
// 
// BYTE red_value = (pixel & red_mask) >> 11;
// BYTE green_value = (pixel & green_mask) >> 5;
// BYTE blue_value = (pixel & blue_mask);
int x_sub_10001BF0_CopyPixelsArray(WORD *pwSrc, WORD *pwDest, int iCount)
{
	int result; // eax@1
	WORD *_pwDest; // esi@2
	WORD *_pwSrc; // edi@2
	int iItemsLeft; // ebx@2

	result = iCount;
	if (iCount > 0)
	{
		_pwDest = pwDest;
		_pwSrc = pwSrc;
		iItemsLeft = iCount;
		do
		{
			if (*_pwSrc == 63519)                   // 0b1111100000011111
			{
				*_pwDest = 63519;                       // 0b1111100000011111
			}
			else
			{
				result = g_result.blueMask & ((*_pwSrc & 0x1F) << 11 >> g_result.blueOffset);// iBBitMask
				*_pwDest = g_result.redMask & ((unsigned __int16)(*_pwSrc & 0xF800) >> g_result.redOffset) | result | g_result.greenMask & (32 * (*_pwSrc & 0x7E0) >> g_result.greenOffset);
			}
			++_pwSrc;
			++_pwDest;
			--iItemsLeft;
		} while (iItemsLeft);
	}
	return result;
}

/*
	Description: -
	Address: 10001C80
	Params: -
	Notes: -
*/
// WORD red_mask = 0xF800;
// WORD green_mask = 0x7E0;
// WORD blue_mask = 0x1F;
// 
// BYTE red_value = (pixel & red_mask) >> 11;
// BYTE green_value = (pixel & green_mask) >> 5;
// BYTE blue_value = (pixel & blue_mask);
INT CopyPixelsArray(BYTE* pSrc, BYTE* pDest, INT iCount)
{
	int iItemsLeft; // ebx@1
	char *_pSrc; // esi@2
	char *_pDest; // edi@2
	__int16 uCurrentColor; // ax@3
	WORD uCurrentColorRed; // dx@3
	__int16 _wCurrentColor; // bp@3
	int result; // eax@3

	iItemsLeft = iCount;
	if (iCount > 0)
	{
		_pSrc = pSrc;
		_pDest = pDest;
		do
		{
			uCurrentColor = *(WORD*)_pSrc;
			uCurrentColorRed = *(WORD*)_pSrc & 0xF800;
			_pSrc += 4;
			_wCurrentColor = uCurrentColor;
			_pDest += 4;
			result = g_result.blueMask & ((uCurrentColor & 0x1F) << 11 >> g_result.blueOffset);
			--iItemsLeft;
			*((WORD*)_pDest - 2) = g_result.redMask & (uCurrentColorRed >> g_result.redOffset) | result | g_result.greenMask & (32 * (_wCurrentColor & 0x7E0) >> g_result.greenOffset);
		} while (iItemsLeft);
	}
	return result;
}

/*
	Description: -
	Address: 10003400
	Params: -
	Notes: -
*/
int x_sub_10003400(unsigned __int8 *a1, int a2)
{
	unsigned __int8 *v2; // edx@1
	int result; // eax@1
	unsigned __int8 ___a1; // cl@1
	BYTE *v5; // ebx@2

	v2 = a1;
	result = 0;
	for (___a1 = *a1; *v2; result += (int) (v5 + 2))
	{
		++v2;
		v5 = (BYTE *) *(BYTE*) (a2 + 2 * ___a1 + 1028);
		___a1 = *v2;
	}
	return result;
}

/*
	Description: -
	Address: 10003430
	Params: -
	Notes: -
*/
unsigned __int8 x_sub_10003430_call(int a1, int a2, int a3, int a4, int a5)
{
	BYTE *v5; // edi@1
	int v6; // esi@1
	unsigned __int8 result; // al@1
	int v8; // ecx@2

	v5 = (BYTE *) a3;
	v6 = 0;
	for (result = *(BYTE*) a3; result; v6 += *(BYTE *) (a4 + 2 * v8 + 1028) + 2)
	{
		// TODO: sub_100051AF(a4, a5, (int) v5, v6, v6 + a1, a2, a5, a4 + *(DWORD*) (a4 + 4 * result));
		result = v5[1];
		v8 = *v5++;
	}
	return result;
}

/*
	Description: -
	Address: 10003490
	Params: -
	Notes: -
*/
unsigned __int8 x_sub_10003490_call(int a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
	unsigned __int8 *v5; // edi@1
	int v6; // esi@1
	unsigned __int8 result; // al@1
	int v8; // ecx@2

	v5 = a3;
	v6 = 0;
	for (result = *a3; result; v6 += *(BYTE*) (a4 + 2 * v8 + 1028) + 2)
	{
		// TODO: sub_10005F01(a4, a2, (int) v5, v6, v6 + a1, a2, a2, a5, a4 + *(DWORD*) (a4 + 4 * result));
		result = v5[1];
		v8 = *v5++;
	}
	return result;
}
#pragma endregion


#pragma region Functions (in progress)
/*
	Description: -
	Address: 10001140
	Params: -
	Notes: -
*/
//----- (10001140) --------------------------------------------------------
// WORD red_mask = 0xF800;
// WORD green_mask = 0x7E0;
// WORD blue_mask = 0x1F;
// 
// BYTE red_value = (pixel & red_mask) >> 11;
// BYTE green_value = (pixel & green_mask) >> 5;
// BYTE blue_value = (pixel & blue_mask);
DWORD SetPixelFormatMasks(DWORD iRBitMask, DWORD iGBitMask, DWORD iBBitMask)
{
	signed int iRBitFromLeftOffset; // edx@1
	signed int v4; // ebx@1
	signed int iGBitFromLeftOffset; // ecx@6
	signed int v6; // edx@6
	unsigned __int16 v7; // bx@11
	signed int iBBitFromLeftOffset; // ecx@11
	signed int v9; // edx@11
	signed __int16 v10; // cx@16
	signed int iRBitFromRightOffset; // edx@16
	signed __int16 v12; // cx@21
	signed int iGBitFromRightOffset; // edx@21
	signed __int16 v14; // cx@26
	signed int iBBitFromRightOffset; // edx@26
	int result; // eax@34

	iRBitFromLeftOffset = 0;
	LOWORD(g_result.redMask) = iRBitMask;       // 0xF800
												// 0b1111100000000000
	HIWORD(g_result.redMask) = iRBitMask;
	LOWORD(g_result.greenMask) = iGBitMask;       // 0x7E0
												  // 0b0000011111100000
	HIWORD(g_result.greenMask) = iGBitMask;
	LOWORD(g_result.blueMask) = iBBitMask;       // 0x1F
												 // 0b0000000000011111
	HIWORD(g_result.blueMask) = iBBitMask;
	v4 = 0x8000;                                  // 0b1000000000000000
	while (!((unsigned __int16)iRBitMask & (unsigned __int16)v4))
	{
		++iRBitFromLeftOffset;
		v4 >>= 1;
		if (iRBitFromLeftOffset >= 16)
			goto LABEL_6;
	}
	LOWORD(g_result.dword_E464) = v4 | g_result.dword_E464;
LABEL_6:
	g_result.redOffset = iRBitFromLeftOffset;
	iGBitFromLeftOffset = 0;
	v6 = 0x8000;                                  // 0b1000000000000000
	while (!((unsigned __int16)iGBitMask & (unsigned __int16)v6))
	{
		++iGBitFromLeftOffset;
		v6 >>= 1;
		if (iGBitFromLeftOffset >= 16)
			goto LABEL_11;
	}
	LOWORD(g_result.dword_E464) = v6 | g_result.dword_E464;
LABEL_11:
	v7 = iGBitFromLeftOffset;
	iBBitFromLeftOffset = 0;
	g_result.greenOffset = v7;
	v9 = 0x8000;                                  // 0b1000000000000000
	while (!((unsigned __int16)iBBitMask & (unsigned __int16)v9))
	{
		++iBBitFromLeftOffset;
		v9 >>= 1;
		if (iBBitFromLeftOffset >= 16)
			goto LABEL_16;
	}
	LOWORD(g_result.dword_E464) = v9 | g_result.dword_E464;
LABEL_16:
	g_result.blueOffset = iBBitFromLeftOffset;
	v10 = 1;
	iRBitFromRightOffset = 0;
	while (!((unsigned __int16)iRBitMask & (unsigned __int16)v10))
	{
		++iRBitFromRightOffset;
		v10 *= 2;
		if (iRBitFromRightOffset >= 16)
			goto LABEL_21;
	}
	LOWORD(g_result.dword_E460) = v10 | g_result.dword_E460;
LABEL_21:
	v12 = 1;
	iGBitFromRightOffset = 0;
	while (!((unsigned __int16)iGBitMask & (unsigned __int16)v12))
	{
		++iGBitFromRightOffset;
		v12 *= 2;
		if (iGBitFromRightOffset >= 16)
			goto LABEL_26;
	}
	LOWORD(g_result.dword_E460) = v12 | g_result.dword_E460;
LABEL_26:
	v14 = 1;
	iBBitFromRightOffset = 0;
	while (!((unsigned __int16)iBBitMask & (unsigned __int16)v14))
	{
		++iBBitFromRightOffset;
		v14 *= 2;
		if (iBBitFromRightOffset >= 16)
			goto LABEL_31;
	}
	LOWORD(g_result.dword_E460) = v14 | g_result.dword_E460;
LABEL_31:
	HIWORD(g_result.dword_E464) = g_result.dword_E464;
	HIWORD(g_result.dword_E460) = g_result.dword_E460;
	g_result.word_E46C = ~(WORD)g_result.dword_E464;
	g_result.word_E46E = ~(WORD)g_result.dword_E464;
	LOWORD(g_result.dword_E468) = ~(WORD)g_result.dword_E460;
	HIWORD(g_result.dword_E468) = ~(WORD)g_result.dword_E460;
	LOWORD(g_result.dword_1000E480) = (2 << (11 - v7)) + (5 << (11 - g_result.blueOffset));
	HIWORD(g_result.dword_1000E480) = (2 << (11 - v7)) + (5 << (11 - g_result.blueOffset));
	if ((unsigned __int16)g_result.redOffset <= v7)
	{
		if (v7 > (unsigned __int16)g_result.blueOffset)
		{
			if ((unsigned __int16)g_result.blueOffset <= (unsigned __int16)g_result.redOffset)
				goto LABEL_34;
		LABEL_37:
			result = (unsigned __int16)iRBitMask | (unsigned __int16)iGBitMask | (iBBitMask << 16);
			goto LABEL_39;
		}
	LABEL_38:
		result = (unsigned __int16)iRBitMask | (unsigned __int16)iBBitMask | (iGBitMask << 16);
		goto LABEL_39;
	}
	if (v7 > (unsigned __int16)g_result.blueOffset)
		goto LABEL_38;
	if ((unsigned __int16)g_result.blueOffset <= (unsigned __int16)g_result.redOffset)
		goto LABEL_37;
LABEL_34:
	result = (unsigned __int16)iGBitMask | (unsigned __int16)iBBitMask | ((unsigned __int16)iRBitMask << 16);
LABEL_39:
	g_result.dword_E470 = result;
	g_result.dword_1000E478 = result & ((unsigned __int16)g_result.dword_E464 | ((unsigned __int16)g_result.dword_E464 << 16));
	return result;
}


/*
	Description: -
	Address: -
	Params: -
*/
INT DrawHorizontalLineToBuffer1(INT x, INT y, INT width, WORD color)
{
	if (y < g_result.screen.top || y > g_result.screen.bottom)
		return 0;

	auto endX = x + width - 1;

	if (x < g_result.screen.left)
		x = g_result.screen.left;
	if (endX > g_result.screen.right)
		endX = g_result.screen.right;
	if (x > endX)
		return 0;


	//pBuffer1 = &g_result.a_buffer1[640 * y + result + (g_result.offset >> 1)];
	//if (y >= g_result.surfaceHeight)
	//	pBuffer1 -= 307200;                     // 640 * 480 * sizeof(WORD)
	//LOWORD(v5) = wColor;
	//iCount = iLength - result + 1;
	//iValueToSet = v5 << 16;
	//LOWORD(iValueToSet) = wColor;
	//result = iValueToSet;
	//iInvertedCount = iCount & 1;
	//iCount >>= 1;
	//memset32(pBuffer1, iValueToSet, iCount);
	//pDest = (char *) &pBuffer1[2 * iCount];
	//for (i = iInvertedCount; i; --i)
	//{
	//	*(WORD*) pDest = wColor;
	//	pDest += 2;
	//}

	return 0;
}

/*
__int32 DrawHorizontalLineToBuffer1(int x, int y, int iSize, WORD wColor)
{
	__int32 result; // eax@1
	int v5; // edx@1
	LONG iLength; // ecx@1
	__int16 *pBuffer1; // edi@8
	unsigned __int32 iCount; // ecx@10
	int iValueToSet; // edx@10
	unsigned __int8 iInvertedCount; // cf@10
	char *pDest; // edi@10
	int i; // ecx@10

	result = x;
	HIWORD(v5) = HIWORD(y);
	iLength = iSize + x - 1;
	if (y >= g_result.screen.top && y <= g_result.screen.bottom)
	{
		if (x < g_result.screen.left)
			result = g_result.screen.left;
		if (iLength > g_result.screen.right)
			iLength = g_result.screen.right;
		if (result <= iLength)
		{
			pBuffer1 = &g_result.a_buffer1[640 * y + result + (g_result.offset >> 1)];
			if (y >= g_result.surfaceHeight)
				pBuffer1 -= 307200;                     // 640 * 480 * sizeof(WORD)
			LOWORD(v5) = wColor;
			iCount = iLength - result + 1;
			iValueToSet = v5 << 16;
			LOWORD(iValueToSet) = wColor;
			result = iValueToSet;
			iInvertedCount = iCount & 1;
			iCount >>= 1;
			memset32(pBuffer1, iValueToSet, iCount);
			pDest = (char *)&pBuffer1[2 * iCount];
			for (i = iInvertedCount; i; --i)
			{
				*(WORD*)pDest = wColor;
				pDest += 2;
			}
		}
	}
	return result;
}
*/

/*
	Description: -
	Address: 100028F0
	Params: -
*/
//----- (100028F0) --------------------------------------------------------
// 
//       if ( x <= 0 )
//         result = sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
//       else
//         result = sub_100028F0(0, -_y, 640 - x, _y + 480, -_y);
// 
//     ...
//     
//     if ( x <= 0 )
//       result = sub_100028F0(-x, 0, x + 640, 480 - _y, -_y);
//     else
//       result = sub_100028F0(0, 0, 640 - x, 480 - _y, -_y);
// 
int x_sub_100028F0(int x, unsigned int y, unsigned int iWidth, int iHeight, int a5)
{
	char *v5; // edi@1
	int v6; // edx@1
	unsigned int v7; // esi@1
	int result; // eax@2
	unsigned int v9; // edx@4
	unsigned int v10; // ecx@5
	unsigned int v11; // ecx@10
	unsigned int v12; // edx@16
	unsigned int v13; // ecx@17
	unsigned int v14; // ecx@22
	unsigned int v15; // [sp-10h] [bp-1Ch]@4
	unsigned int v16; // [sp-10h] [bp-1Ch]@16

	v5 = (char *)&g_result.a_buffer3[640 * y] + 2 * x + g_result.offset;
	v6 = iHeight;
	v7 = 2 * (640 - iWidth);
	if (a5 < 0)
	{
		result = 0xFFE00000 * a5;
		LOWORD(result) = -32 * a5;
		if (y < g_result.surfaceHeight)
		{
			if (iHeight + y <= g_result.surfaceHeight)
			{
				do
				{
				LABEL_10:
					v11 = iWidth >> 1;
					do
					{
						*(DWORD*)v5 -= result;
						v5 += 4;
						--v11;
					} while (v11);
					v5 += v7;
					--v6;
				} while (v6);
				return result;
			}
			v9 = iHeight - (iHeight + y - g_result.surfaceHeight);
			v15 = iHeight + y - g_result.surfaceHeight;
			do
			{
				v10 = iWidth >> 1;
				do
				{
					*(DWORD*)v5 -= result;
					v5 += 4;
					--v10;
				} while (v10);
				v5 += v7;
				--v9;
			} while (v9);
			v6 = v15;
		}
		v5 -= 614400;
		goto LABEL_10;
	}
	result = a5 << 21;
	LOWORD(result) = 32 * a5;
	if (y >= g_result.surfaceHeight)
		goto LABEL_21;
	if (iHeight + y > g_result.surfaceHeight)
	{
		v12 = iHeight - (iHeight + y - g_result.surfaceHeight);
		v16 = iHeight + y - g_result.surfaceHeight;
		do
		{
			v13 = iWidth >> 1;
			do
			{
				*(DWORD*)v5 += result;
				v5 += 4;
				--v13;
			} while (v13);
			v5 += v7;
			--v12;
		} while (v12);
		v6 = v16;
	LABEL_21:
		v5 -= 614400;
		goto LABEL_22;
	}
	do
	{
	LABEL_22:
		v14 = iWidth >> 1;
		do
		{
			*(DWORD*)v5 += result;
			v5 += 4;
			--v14;
		} while (v14);
		v5 += v7;
		--v6;
	} while (v6);
	return result;
}
#pragma endregion


#pragma region Functions (todo)
/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT x_sub_10001EA0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7)
{
	// TODO: return h_________________sub_100034F0(a3, a4, a5, a6, a1, a2, 2 * g_result.width, a7, g_result.a_buffer2);
	return 0;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT x_sub_10001EE0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6)
{
	// TODO: return sub_100038EE(a3, a4, a5, a6, a1, a2, 2 * g_result.width, g_result.a_buffer1);
	return 0;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT x_sub_10001F20_call(INT a1, INT a2, INT a3)
{
	// TODO: return sub_100040E6(a1, a2, 2 * g_result.width, a3, (unsigned int) g_result.a_buffer1);
	return 0;
}

/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT x_sub_10001F50_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7)
{
	// TODO: return sub_10003D18(a3, a4, a5, a6, a1, a2, 2 * g_result.width, a7, g_result.a_buffer1);
	return 0;
}

INT Sub_100088E9(INT a5, INT a6)
{
	return 0;
}

// Sub_10009F13
INT Sub_10009F13(INT a5, INT a6)
{
	return 0;
}

// Sub_100098D3 USERCALL
INT Sub_100098D3(INT a5, INT a6)
{
	//__asm
	//{
	//	mov eax, 0
	//}
	return 0;
}

INT Sub_10005F01(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_10005B96(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_1000586C(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT Sub_10007678(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT Sub_10006586(INT a1, INT a2, INT a3)
{
	return 0;
}

INT Sub_1000625D(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT Sub_10006C48(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_10006FE2(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_1000687D(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_100073B2(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT Sub_10007D0C(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_10007938(INT a1, INT a2, SHORT a3, INT a4)
{
	return 0;
}

INT Sub_10005493(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_100016D0_DrawStruct()
{
	return 0;
}

INT Sub_100024C0(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_10002C70()
{
	return 0;
}

INT Sub_10004460(INT a1, INT a2, INT a3)
{
	return 0;
}

INT Sub_10004786(INT a1, INT a2, INT a3)
{
	return 0;
}

INT Sub_10004AB6(INT a1, INT a2, SHORT a3, INT a4)
{
	return 0;
}

INT Sub_100051AF(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT Sub_10004E80(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT Sub_2D53090()
{
	return 0;
}
#pragma endregion