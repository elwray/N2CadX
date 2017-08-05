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
SCADrawResult* _cdecl CADraw_Init()
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
INT _cdecl Initialize()
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
BOOL _cdecl InitializeDirectDraw(HWND handle, BOOL fullscreen)
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
IDirectDrawSurface* _cdecl ShutdownDirectDrawSurface()
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
IDirectDraw* _cdecl ShutdownDirectDraw()
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
IDirectDraw* _cdecl ShutdownDirectDrawFullscreen()
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
INT _cdecl SetDisplayMode(INT width, INT height)
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
INT _cdecl DrawPointToBuffer1(INT x, INT y, WORD color)
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
INT _cdecl DrawPointToBuffer2(INT x, INT y, WORD color)
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
BOOL _cdecl LockSurface()
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
INT _cdecl UnlockSurface()
{
	HRESULT result = IDirectDrawSurface_Unlock(g_result.p_ddrawSurface, NULL);

	g_result.p_surface = NULL;

	return result;
}
#pragma endregion


#pragma region Functions (generated, done)
/*
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT _cdecl sub_10002030(INT x, INT y, INT iWidth, WORD color, INT a5)
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
INT _cdecl DrawImageToBuffer1(INT iSrcX, INT iSrcY, INT a3, INT a4, INT iDestX, INT iDestY, INT iDestWidth,
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
INT _cdecl DrawFilledRectToBuffer1(INT x, INT y, INT iWidth, INT iHeight, WORD iColor)
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
INT _cdecl x_sub_10001D00(INT x, INT y)
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
	Description: -
	Address: -
	Params: -
	Notes: -
*/
INT _cdecl x_sub_10001EA0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7)
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
INT _cdecl x_sub_10001EE0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6)
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
INT _cdecl x_sub_10001F20_call(INT a1, INT a2, INT a3)
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
INT _cdecl x_sub_10001F50_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7)
{
	// TODO: return sub_10003D18(a3, a4, a5, a6, a1, a2, 2 * g_result.width, a7, g_result.a_buffer1);
	return 0;
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
INT _cdecl CopyRectBuffer1ToBuffer2(INT x, INT y, INT iWidth, INT iHeight)
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
INT _cdecl DrawVerticalLineToBuffer1(INT x, INT y, INT iSize, WORD a4)
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
INT _cdecl x_sub_100027C0()
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
INT _cdecl x_sub_10002860_RectAndFFFBFFFBu(INT x, INT y, INT iWidth, INT iHeight)
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
INT _cdecl DrawEmptyRectToBuffer1(INT x, INT y, INT iWidth, INT iHeight, WORD color)
{
	int v6; // [sp+0h] [bp-18h]@0
	WORD v7; // [sp+4h] [bp-14h]@0

	DrawHorizontalLineToBuffer1(x, y, v6, v7);
	DrawHorizontalLineToBuffer1(x, y + iHeight - 1, iWidth, color);
	DrawVerticalLineToBuffer1(x, y, iHeight, color);
	return DrawVerticalLineToBuffer1(x + iWidth - 1, y, iHeight, color);
}

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
		return TRUE when no errors occured.
*/
BOOL _cdecl CopyData64ToSurface(INT sourceX, INT sourceY, INT destWidth, INT destHeight, INT destX, INT destY, INT sourceWidth,
	WORD* p_source)
{
	BOOL isSurfaceLocked = g_result.p_surface == NULL;
	if (isSurfaceLocked)
	{
		if (!LockSurface())
			return FALSE;
	}

	//WORD* p_dst = (WORD*) g_result.p_surface + destX + destY * g_result.pitch;
	//WORD* p_src = p_source + sourceX + sourceY * sourceWidth;

	//do
	//{
	//	CopyMemory64(p_dst, p_src, destWidth / 4);

	//	p_src += sourceWidth;
	//	p_dst = (BYTE*) p_dst + g_result.pitch;
	//} while (destHeight--);

	if (isSurfaceLocked)
		return UnlockSurface();

	return TRUE;
}

/*
	Description: -
	Address: 10002B10
	Params: -
	Notes: -
*/
int _cdecl CopyLines(int iSrcX, int iSrcY, int iSrcWidth, char *pSrc, int iDestX, int iDestY, int iDestWidth, char *pDest, int a9, int iHeight)
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
signed int _cdecl CopyFromPrimaryBufferToDirectDrawSurface(int a1, unsigned int a2, unsigned int a3, int a4)
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
int _cdecl x_sub_10001BF0_CopyPixelsArray(WORD *pwSrc, WORD *pwDest, int iCount)
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
INT _cdecl CopyPixelsArray(BYTE* pSrc, BYTE* pDest, INT iCount)
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
int _cdecl x_sub_10003400(unsigned __int8 *a1, int a2)
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
unsigned __int8 _cdecl x_sub_10003430_call(int a1, int a2, int a3, int a4, int a5)
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
unsigned __int8 _cdecl x_sub_10003490_call(int a1, int a2, unsigned __int8 *a3, int a4, int a5)
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
DWORD _cdecl SetPixelFormatMasks(DWORD iRBitMask, DWORD iGBitMask, DWORD iBBitMask)
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

INT _cdecl Sub_100088E9(INT a5, INT a6)
{
	return 0;
}

// Sub_10009F13
INT _cdecl Sub_10009F13(INT a5, INT a6)
{
	return 0;
}

// Sub_100098D3 USERCALL
INT _cdecl Sub_100098D3(INT a5, INT a6)
{
	//__asm
	//{
	//	mov eax, 0
	//}
	return 0;
}

INT _cdecl Sub_10005F01(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_10005B96(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_1000586C(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT _cdecl Sub_10007678(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT _cdecl Sub_10006586(INT a1, INT a2, INT a3)
{
	return 0;
}

INT _cdecl Sub_1000625D(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT _cdecl Sub_10006C48(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_10006FE2(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_1000687D(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_100073B2(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT _cdecl Sub_10007D0C(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_10007938(INT a1, INT a2, SHORT a3, INT a4)
{
	return 0;
}

INT _cdecl Sub_10005493(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_100016D0_DrawStruct()
{
	return 0;
}

INT _cdecl Sub_100024C0(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_10002C70()
{
	return 0;
}

INT _cdecl Sub_10004460(INT a1, INT a2, INT a3)
{
	return 0;
}

INT _cdecl Sub_10004786(INT a1, INT a2, INT a3)
{
	return 0;
}

INT _cdecl Sub_10004AB6(INT a1, INT a2, SHORT a3, INT a4)
{
	return 0;
}

INT _cdecl Sub_100051AF(INT a1, INT a2, INT a3, INT a4)
{
	return 0;
}

INT _cdecl Sub_10004E80(INT a1, INT a2, SHORT a3, INT a4, INT a5)
{
	return 0;
}

INT _cdecl Sub_2D53090()
{
	return 0;
}

/*
	Description: -
	Address: -
	Params: -
*/
INT _cdecl DrawHorizontalLineToBuffer1(INT x, INT y, INT width, WORD color)
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
__int32 _cdecl DrawHorizontalLineToBuffer1(int x, int y, int iSize, WORD wColor)
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
int _cdecl x_sub_100028F0(int x, unsigned int y, unsigned int iWidth, int iHeight, int a5)
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
#if 0
/*
	Description: -
	Address: 10002C70
	Params: -
*/
// struct X
// {
//    // -8
//    // -4
//    BOOL bNeedUnlockSurface;
//    // 0
//    // 4
//    // 8
//    INT x;
//    // 12
//    INT y;
//    // 16
//    INT iWidth;
//    // 20
//    INT iHeight;
//    // 24
// }
// 
// Copy data from primary buffer to Direct Draw Surface.
// TODO: previous signature "signed int __usercall sub_10002C70@<eax > (int a1@<ebp > )".
signed int sub_10002C70(int a1)
{
	signed int result; // eax@2
	int _1_VerticalLength; // edx@5
	char *pPrimaryBuffer; // esi@5
	char *pSurfaceData; // edi@5
	unsigned int a1_y; // eax@5
	int _a1_y; // edx@6
	unsigned int a1_height; // eax@6
	int v8; // ecx@7
	int v9; // ecx@7
	int v10; // eax@12
	unsigned int v11; // edx@13
	unsigned int v12; // ecx@15
	LONG v13; // ebp@15
	double v14; // st7@16
	double v15; // st6@16
	double v16; // st5@16
	unsigned int v17; // ecx@19
	int v18; // ebx@19
	LONG lSurfacePitch; // ebp@19
	int v20; // edx@20
	int v21; // edx@20
	int v22; // edx@20
	int v23; // edx@20
	__int16 v24; // ax@23
	unsigned int v25; // edx@23
	bool v26; // cf@23
	int v27; // ebx@23
	signed int v28; // ebx@23
	int v29; // ecx@23
	int v30; // ebx@23
	int v31; // edx@23
	int v32; // edx@23
	int v33; // ebx@23
	unsigned int v34; // ecx@23
	int v35; // ebp@23
	unsigned int v36; // eax@27
	unsigned int v37; // edx@27
	unsigned int v38; // eax@27
	int v39; // eax@37
	int v40; // [sp-1Ch] [bp-30h]@25
	int v41; // [sp-18h] [bp-2Ch]@12
	char *v42; // [sp-14h] [bp-28h]@12
	char *v43; // [sp-10h] [bp-24h]@12

	if (g_result.p_surface)
	{
		*(DWORD*)(a1 - 4) = 0;                    // a1->bNeedUnlockSurface = FALSE;
	}
	else
	{
		result = LockSurface();
		if (!result)
			return result;
		*(DWORD*)(a1 - 4) = 1;                    // a1->bNeedUnlockSurface = TRUE;
	}
	_1_VerticalLength = 1 - *(DWORD*)(a1 + 12) + *(DWORD*)(a1 + 20);// _1VerticalLength = 1 - a1->y + a1->iWidth;
	*(DWORD*)(a1 + 16) += 1 - *(DWORD*)(a1 + 8);// a1->iWidth += 1 - a1->x;
	*(DWORD*)(a1 + 20) = _1_VerticalLength;     // a1->iWidth = _1VerticalLength;
	g_result.dword_10018EA4 = 0;
	dword_1000E410 = g_result.dword_1000E470;
	dword_1000E40C = -8 * g_result.pitch + 32;
	*(DWORD*)(a1 - 8) = (char *)&unk_1000E70C + 80 * (*(DWORD*)(a1 + 12) >> 3) + (*(DWORD*)(a1 + 8) >> 4);
	pPrimaryBuffer = (char *)&g_result.a_buffer1[640 * *(DWORD*)(a1 + 12)] + 2 * *(DWORD*)(a1 + 8) + g_result.offset;
	pSurfaceData = (char *)g_result.p_surface + *(DWORD*)(a1 + 8) + *(DWORD*)(a1 + 8) + *(DWORD*)(a1 + 12) * g_result.pitch;// x + x + y * g_result.pitch
	*(DWORD*)(a1 + 16) >>= 4;
	dword_1000E408 = -10208;
	a1_y = *(DWORD*)(a1 + 12);                  // a1_y = a1->y;
	if (a1_y >= g_result.surfaceHeight)
	{
		pPrimaryBuffer -= 614400;
		goto LABEL_10;
	}
	_a1_y = *(DWORD*)(a1 + 12);                 // _a1_y = a1->y;
	a1_height = *(DWORD*)(a1 + 20) + a1_y;      // a1_height = a1->iHeight;
	if (a1_height <= g_result.surfaceHeight)
	{
	LABEL_10:
		g_result.dword_101DBDF8 = *(DWORD*)(a1 + 20) >> 3; // g_result.dword_101DBDF8 = a1->iHeight / 8
		g_result.dword_101DBDF4 = 0;
		g_result.dword_10018EA0 = 0;
		goto LABEL_11;
	}
	g_result.dword_10018EA0 = (a1_height - g_result.surfaceHeight) >> 3;
	v8 = ((BYTE)g_result.surfaceHeight - (BYTE)_a1_y) & 7;
	g_result.dword_101DBDF8 = (unsigned int)(g_result.surfaceHeight - _a1_y) >> 3;
	BYTE1(v8) = 8 - v8;
	v9 = v8 << 8;
	g_result.dword_101DBDF4 = v9;
	if (!g_result.dword_101DBDF8)
	{
		dword_1000E408 += 614400;
		dword_1000E404 = v9;
		g_result.dword_101DBDF8 = 1;
		g_result.dword_101DBDF4 = 0;
		goto LABEL_12;
	}
LABEL_11:
	dword_1000E404 = 2048;
	do
	{
		while (1)
		{
			do
			{
			LABEL_12:
				v43 = pPrimaryBuffer;
				v42 = pSurfaceData;
				v10 = *(DWORD*)(a1 - 8);
				*(DWORD*)(a1 - 8) += 80;
				dword_1000E400 = v10;
				g_result.dword_101DBDFC = *(DWORD*)(a1 + 16);
				v41 = a1;
				do
				{
					v11 = *(DWORD*)(dword_1000E400 - 2);
					LOWORD(v11) = *(WORD*)(dword_1000E400 + 80);
					if (v11)
					{
						if (v11 == 0x80808080)
						{
							v12 = dword_1000E404;
							++dword_1000E400;
							v13 = g_result.pitch;
							while (1)
							{
								do
								{
									v14 = *(double *)pPrimaryBuffer;
									v15 = *((double *)pPrimaryBuffer + 1);
									v16 = *((double *)pPrimaryBuffer + 3);
									*((double *)pSurfaceData + 2) = *((double *)pPrimaryBuffer + 2);
									*((double *)pSurfaceData + 3) = v16;
									*((double *)pSurfaceData + 1) = v15;
									*(double *)pSurfaceData = v14;
									pPrimaryBuffer += 1280;
									pSurfaceData += v13;
									--BYTE1(v12);
								} while (BYTE1(v12));
								v12 >>= 8;
								if (!v12)
									break;
								pPrimaryBuffer -= 614400;
							}
						}
						else
						{
							v24 = *(WORD*)(dword_1000E400 + 80);
							v25 = v11 >> 16;
							v26 = HIBYTE(v24) < BYTE1(v25);
							HIBYTE(v24) -= BYTE1(v25);
							v27 = -v26;
							v26 = HIBYTE(v24) < (unsigned __int8)v24;
							HIBYTE(v24) -= v24;
							v28 = __CFADD__((BYTE)v25, HIBYTE(v24)) + v27 - v26;
							LOBYTE(v28) = v25 + HIBYTE(v24);
							v29 = -(BYTE1(v25) < (unsigned __int8)v25);
							LOBYTE(v29) = BYTE1(v25) - v25;
							g_result.dword_101DBDF0 = v28 >> 2;
							v26 = (unsigned __int8)v24 < (unsigned __int8)v25;
							LOBYTE(v24) = v24 - v25;
							g_result.dword_10018E98 = 2 * v29;
							v30 = (unsigned __int8)v25;
							v31 = -v26;
							LOBYTE(v31) = v24;
							v32 = 4 * v31;
							g_result.dword_10018E9C = v32;
							v33 = 32 * (v30 + 127);
							++dword_1000E400;
							v34 = dword_1000E404;
							v35 = dword_1000E410;
							while (1)
							{
								g_result.dword_10018EA4 = 0;
								do
								{
									LOBYTE(v34) = 16;
									v40 = v33;
									do
									{
										while (BYTE1(v33) != 32)
										{
											v36 = g_result.dword_10018EA4
												+ (v35 & (*(DWORD*)pPrimaryBuffer & 0xFFFF | (*(DWORD*)pPrimaryBuffer << 16)))
												* BYTE1(v33);
											v33 += g_result.dword_10018E98;
											v37 = v36;
											pSurfaceData += 2;
											v38 = v35 & (v36 >> 5);
											g_result.dword_10018EA4 = v35 & v37;
											pPrimaryBuffer += 2;
											v32 = v38 >> 16;
											LOBYTE(v34) = v34 - 1;
											*((WORD*)pSurfaceData - 1) = HIWORD(v38) | v38;
											if (!(BYTE)v34)
												goto LABEL_30;
										}
										*(WORD*)pSurfaceData = v32;
										pSurfaceData += 2;
										pPrimaryBuffer += 2;
										v33 += g_result.dword_10018E98;
										LOBYTE(v34) = v34 - 1;
									} while ((BYTE)v34);
								LABEL_30:
									v33 = g_result.dword_10018E9C + v40;
									pPrimaryBuffer += 1248;
									g_result.dword_10018E98 += g_result.dword_101DBDF0;
									pSurfaceData = &pSurfaceData[g_result.pitch - 32];
									--BYTE1(v34);
								} while (BYTE1(v34));
								v34 >>= 8;
								if (!v34)
									break;
								pPrimaryBuffer -= 614400;
							}
						}
					}
					else
					{
						v17 = dword_1000E404;
						++dword_1000E400;
						HIWORD(v18) = g_result.word_1000E46C;
						LOWORD(v18) = g_result.word_1000E46C;
						lSurfacePitch = g_result.pitch;
						while (1)
						{
							do
							{
								v20 = v18 & (*((DWORD*)pPrimaryBuffer + 1) >> 1);
								*(DWORD*)pSurfaceData = v18 & (*(DWORD*)pPrimaryBuffer >> 1);
								*((DWORD*)pSurfaceData + 1) = v20;
								v21 = v18 & (*((DWORD*)pPrimaryBuffer + 3) >> 1);
								*((DWORD*)pSurfaceData + 2) = v18 & (*((DWORD*)pPrimaryBuffer + 2) >> 1);
								*((DWORD*)pSurfaceData + 3) = v21;
								v22 = v18 & (*((DWORD*)pPrimaryBuffer + 5) >> 1);
								*((DWORD*)pSurfaceData + 4) = v18 & (*((DWORD*)pPrimaryBuffer + 4) >> 1);
								*((DWORD*)pSurfaceData + 5) = v22;
								v23 = v18 & (*((DWORD*)pPrimaryBuffer + 7) >> 1);
								*((DWORD*)pSurfaceData + 6) = v18 & (*((DWORD*)pPrimaryBuffer + 6) >> 1);
								*((DWORD*)pSurfaceData + 7) = v23;
								pPrimaryBuffer += 1280;
								pSurfaceData += lSurfacePitch;
								--BYTE1(v17);
							} while (BYTE1(v17));
							v17 >>= 8;
							if (!v17)
								break;
							pPrimaryBuffer -= 614400;
						}
					}
					pPrimaryBuffer += dword_1000E408;
					pSurfaceData += dword_1000E40C;
					--g_result.dword_101DBDFC;
				} while (g_result.dword_101DBDFC);
				a1 = v41;
				pPrimaryBuffer = v43 + 10240;
				pSurfaceData = &v42[8 * g_result.pitch];
				--g_result.dword_101DBDF8;
			} while (g_result.dword_101DBDF8);
			if (!BYTE1(g_result.dword_101DBDF4))
				break;
			dword_1000E404 = g_result.dword_101DBDF4;
			dword_1000E408 = 604192;
			g_result.dword_101DBDF8 = 1;
			g_result.dword_101DBDF4 = 0;
		}
		dword_1000E408 = 0xFFFFD820;
		v39 = g_result.dword_10018EA0;
		g_result.dword_10018EA0 = 0;
		dword_1000E404 = 2048;
		pPrimaryBuffer = v43 - 604160;
		g_result.dword_101DBDF8 = v39;
	} while (v39);
	result = *(DWORD*)(v41 - 4);                // result = a1->bNeedUnlockSurface;
	if (result)
		result = UnlockSurface();
	return result;
}

//----- (10003090) --------------------------------------------------------
// TODO: previous signature is "int __usercall sub_10003090@<eax > (int a1@<ebp > )".
int sub_10003090(int a1)
{
	int v1; // eax@1
	char *v2; // esi@1
	unsigned int v3; // eax@1
	int v4; // edx@2
	unsigned int v5; // eax@2
	int v6; // ecx@3
	int v7; // ecx@3
	int v8; // eax@8
	unsigned int v9; // edx@9
	unsigned int v10; // ecx@12
	int v11; // ebx@12
	int v12; // ebx@12
	int v13; // edx@13
	int v14; // edx@13
	int v15; // edx@13
	int v16; // edx@13
	__int16 v17; // ax@16
	unsigned int v18; // edx@16
	bool v19; // cf@16
	int v20; // ebx@16
	signed int v21; // ebx@16
	int v22; // ecx@16
	int v23; // ebx@16
	int v24; // edx@16
	int v25; // ebx@16
	unsigned int v26; // ecx@16
	int v27; // ebp@16
	unsigned int v28; // eax@20
	int result; // eax@31
	int v30; // [sp-1Ch] [bp-2Ch]@18
	int v31; // [sp-18h] [bp-28h]@8
	char *v32; // [sp-10h] [bp-20h]@8

	v1 = 1 - *(DWORD*)(a1 + 12) + *(DWORD*)(a1 + 20);
	*(DWORD*)(a1 + 16) += 1 - *(DWORD*)(a1 + 8);
	*(DWORD*)(a1 + 20) = v1;
	g_result.dword_10018EA4 = 0;
	dword_1000E410 = g_result.dword_1000E470;
	*(DWORD*)(a1 - 4) = (char *)&unk_1000E70C + 80 * (*(DWORD*)(a1 + 12) >> 3) + (*(DWORD*)(a1 + 8) >> 4);
	v2 = (char *)&g_result.a_buffer1[640 * *(DWORD*)(a1 + 12)] + 2 * *(DWORD*)(a1 + 8) + g_result.offset;
	*(DWORD*)(a1 + 16) >>= 4;
	dword_1000E408 = -10208;
	v3 = *(DWORD*)(a1 + 12);
	if (v3 >= g_result.surfaceHeight)
	{
		v2 -= 614400;
	}
	else
	{
		v4 = *(DWORD*)(a1 + 12);
		v5 = *(DWORD*)(a1 + 20) + v3;
		if (v5 > g_result.surfaceHeight)
		{
			g_result.dword_10018EA0 = (v5 - g_result.surfaceHeight) >> 3;
			v6 = ((BYTE)g_result.surfaceHeight - (BYTE)v4) & 7;
			g_result.dword_101DBDF8 = (unsigned int)(g_result.surfaceHeight - v4) >> 3;
			BYTE1(v6) = 8 - v6;
			v7 = v6 << 8;
			g_result.dword_101DBDF4 = v7;
			if (!g_result.dword_101DBDF8)
			{
				dword_1000E408 += 614400;
				dword_1000E404 = v7;
				g_result.dword_101DBDF8 = 1;
				g_result.dword_101DBDF4 = 0;
				goto LABEL_8;
			}
			goto LABEL_7;
		}
	}
	g_result.dword_101DBDF8 = *(DWORD*)(a1 + 20) >> 3;
	g_result.dword_101DBDF4 = 0;
	g_result.dword_10018EA0 = 0;
LABEL_7:
	dword_1000E404 = 2048;
	while (1)
	{
	LABEL_8:
		v32 = v2;
		v8 = *(DWORD*)(a1 - 4);
		*(DWORD*)(a1 - 4) += 80;
		dword_1000E400 = v8;
		g_result.dword_101DBDFC = *(DWORD*)(a1 + 16);
		v31 = a1;
		do
		{
			v9 = *(DWORD*)(dword_1000E400 - 2);
			LOWORD(v9) = *(WORD*)(dword_1000E400 + 80);
			if (v9)
			{
				if (v9 == -2139062144)
				{
					++dword_1000E400;
					v2 += 32;
					goto LABEL_27;
				}
				v17 = *(WORD*)(dword_1000E400 + 80);
				v18 = v9 >> 16;
				v19 = HIBYTE(v17) < BYTE1(v18);
				HIBYTE(v17) -= BYTE1(v18);
				v20 = -v19;
				v19 = HIBYTE(v17) < (unsigned __int8)v17;
				HIBYTE(v17) -= v17;
				v21 = __CFADD__((BYTE)v18, HIBYTE(v17)) + v20 - v19;
				LOBYTE(v21) = v18 + HIBYTE(v17);
				v22 = -(BYTE1(v18) < (unsigned __int8)v18);
				LOBYTE(v22) = BYTE1(v18) - v18;
				g_result.dword_101DBDF0 = v21 >> 2;
				v19 = (unsigned __int8)v17 < (unsigned __int8)v18;
				LOBYTE(v17) = v17 - v18;
				g_result.dword_10018E98 = 2 * v22;
				v23 = (unsigned __int8)v18;
				v24 = -v19;
				LOBYTE(v24) = v17;
				g_result.dword_10018E9C = 4 * v24;
				v25 = 32 * (v23 + 127);
				++dword_1000E400;
				v26 = dword_1000E404;
				v27 = dword_1000E410;
				while (1)
				{
					g_result.dword_10018EA4 = 0;
					do
					{
						LOBYTE(v26) = 16;
						v30 = v25;
						do
						{
							while (BYTE1(v25) != 32)
							{
								v28 = g_result.dword_10018EA4 + (v27 & (*(DWORD*)v2 & 0xFFFF | (*(DWORD*)v2 << 16))) * BYTE1(v25);
								v25 += g_result.dword_10018E98;
								g_result.dword_10018EA4 = v27 & v28;
								*(WORD*)v2 = ((v27 & (v28 >> 5)) >> 16) | v27 & (v28 >> 5);
								v2 += 2;
								LOBYTE(v26) = v26 - 1;
								if (!(BYTE)v26)
									goto LABEL_23;
							}
							v2 += 2;
							v25 += g_result.dword_10018E98;
							LOBYTE(v26) = v26 - 1;
						} while ((BYTE)v26);
					LABEL_23:
						v25 = g_result.dword_10018E9C + v30;
						v2 += 1248;
						g_result.dword_10018E98 += g_result.dword_101DBDF0;
						--BYTE1(v26);
					} while (BYTE1(v26));
					v26 >>= 8;
					if (!v26)
						break;
					v2 -= 614400;
				}
			}
			else
			{
				v10 = dword_1000E404;
				++dword_1000E400;
				HIWORD(v11) = g_result.word_1000E46C;
				LOWORD(v11) = g_result.word_1000E46C;
				v12 = v11 & 0x7FFF7FFF;
				while (1)
				{
					do
					{
						v13 = v12 & (*((DWORD*)v2 + 1) >> 1);
						*(DWORD*)v2 = v12 & (*(DWORD*)v2 >> 1);
						*((DWORD*)v2 + 1) = v13;
						v14 = v12 & (*((DWORD*)v2 + 3) >> 1);
						*((DWORD*)v2 + 2) = v12 & (*((DWORD*)v2 + 2) >> 1);
						*((DWORD*)v2 + 3) = v14;
						v15 = v12 & (*((DWORD*)v2 + 5) >> 1);
						*((DWORD*)v2 + 4) = v12 & (*((DWORD*)v2 + 4) >> 1);
						*((DWORD*)v2 + 5) = v15;
						v16 = v12 & (*((DWORD*)v2 + 7) >> 1);
						*((DWORD*)v2 + 6) = v12 & (*((DWORD*)v2 + 6) >> 1);
						*((DWORD*)v2 + 7) = v16;
						v2 += 1280;
						--BYTE1(v10);
					} while (BYTE1(v10));
					v10 >>= 8;
					if (!v10)
						break;
					v2 -= 614400;
				}
			}
			v2 += dword_1000E408;
		LABEL_27:
			--g_result.dword_101DBDFC;
		} while (g_result.dword_101DBDFC);
		a1 = v31;
		v2 = v32 + 10240;
		if (!--g_result.dword_101DBDF8)
		{
			if (BYTE1(g_result.dword_101DBDF4))
			{
				dword_1000E404 = g_result.dword_101DBDF4;
				dword_1000E408 = 604192;
				g_result.dword_101DBDF8 = 1;
				g_result.dword_101DBDF4 = 0;
				continue;
			}
			dword_1000E408 = -10208;
			result = g_result.dword_10018EA0;
			g_result.dword_10018EA0 = 0;
			dword_1000E404 = 2048;
			v2 = v32 - 604160;
			g_result.dword_101DBDF8 = result;
			if (!result)
				return result;
		}
	}
}

//----- (100034F0) --------------------------------------------------------
int _cdecl h_________________sub_100034F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9)
{
	int result; // eax@1
	BYTE *v10; // esi@5
	WORD*v11; // edi@5
	int v12; // edx@5
	int v13; // ebx@6
	int v14; // eax@6
	signed int v15; // ecx@8
	int v16; // eax@8
	unsigned int v17; // eax@12
	bool v18; // cf@12
	unsigned int v19; // eax@12
	bool v20; // zf@14
	int v21; // eax@16
	unsigned __int8 v22; // of@16
	int v23; // eax@16
	int v24; // eax@19
	int v25; // eax@27
	int v26; // ecx@33
	char *v27; // edi@33
	int v28; // eax@33
	int v29; // ebx@36
	unsigned int v30; // eax@39
	int v31; // eax@43
	int v32; // eax@43
	int v33; // eax@46
	int v34; // ecx@48
	int v35; // eax@51
	int v36; // eax@57
	int v37; // eax@57
	int v38; // eax@59
	signed int v39; // [sp-10h] [bp-1Ch]@17
	int v40; // [sp-10h] [bp-1Ch]@43
	int v41; // [sp-Ch] [bp-18h]@17
	int v42; // [sp-Ch] [bp-18h]@43
	WORD*v43; // [sp-8h] [bp-14h]@17
	char *v44; // [sp-8h] [bp-14h]@43
	BYTE *v45; // [sp-4h] [bp-10h]@17
	BYTE *v46; // [sp-4h] [bp-10h]@43
	int v47; // [sp+24h] [bp+18h]@5
	int v48; // [sp+24h] [bp+18h]@33

	g_data.dword_1000E038 = a9 + g_result.offset % 1280u + 614400;
	g_data.rect.left = LOWORD(g_result.screen.left) + 33;
	g_data.rect.right = LOWORD(g_result.screen.right) + 33;
	g_data.rect.top = g_result.screen.top;
	g_data.rect.bottom = g_result.screen.bottom;
	g_data.dword_1000E034 = 0;
	result = (unsigned __int16)(LOWORD(g_result.screen.right) + 33) + 1;
	if (result < a5)
		return result;
	result = (unsigned __int16)g_data.rect.left - 64;
	if (result > a5)
		return result;
	result = (unsigned __int16)g_data.rect.bottom + 1;
	if (result < a6)
		return result;
	result = (unsigned __int16)g_data.rect.top - 32;
	if (result > a6)
		return result;
	v10 = (BYTE *)a8;
	v11 = (WORD*)(g_result.offset + a9 + a5 + a5 + a7 * a6 - 2);
	v47 = a5 + 32;
	v12 = 4 * (a2 - a1);
	if ((unsigned __int16)g_data.rect.top - 16 > a6)
	{
		v36 = 16 * (a4 - a1);
		g_data.dword_1000E03D = v36;
		v29 = v36 + (a1 << 8);
		v27 = (char *)&v11[8 * a7 - 29];
		v48 = v47 - 29;
		v26 = 61;
		v10 = (BYTE *)(a8 + 528);
		a6 += 16;
		v37 = (unsigned __int16)g_data.rect.bottom + 1 - a6;
		if (v37 >= 16)
			v37 = 16;
		g_data.dword_1000E041 = v37;
		v38 = (unsigned __int16)g_data.rect.top - a6;
		if ((unsigned __int16)g_data.rect.top > a6)
		{
			a6 = (unsigned __int16)g_data.rect.top;
			g_data.dword_1000E041 -= v38;
			do
			{
				v10 += v26;
				v29 += g_data.dword_1000E03D;
				v26 -= 4;
				v27 += a7 + 4;
				v48 += 2;
				--v38;
			} while (v38);
		}
	}
	else
	{
		g_data.dword_1000E03D = 16 * (a1 - a3);
		v13 = v12 + g_data.dword_1000E03D + (a3 << 8);
		v14 = (unsigned __int16)g_data.rect.bottom + 1 - a6;
		if (v14 >= 16)
			v14 = 16;
		g_data.dword_1000E041 = v14;
		v15 = 3;
		v16 = (unsigned __int16)g_data.rect.top - a6;
		if ((unsigned __int16)g_data.rect.top > a6)
		{
			g_data.dword_1000E041 -= v16;
			a6 = (unsigned __int16)g_data.rect.top;
			do
			{
				v10 += v15;
				v13 += g_data.dword_1000E03D;
				v15 += 4;
				v47 -= 2;
				v11 = (WORD*)((char *)v11 + a7 - 4);
				--v16;
			} while (v16);
		}
		g_data.dword_1000E045 = g_data.dword_1000E041;
		if (g_data.dword_1000E041 > 0)
		{
			v17 = a6 + g_data.dword_1000E041;
			a6 = v17;
			v18 = v17 < g_result.surfaceHeight;
			v19 = v17 - g_result.surfaceHeight;
			if (v18)
				v19 = 0;
			v18 = g_data.dword_1000E041 < v19;
			v20 = g_data.dword_1000E041 == v19;
			g_data.dword_1000E041 -= v19;
			if (v18 || v20)
				goto LABEL_31;
			g_data.dword_1000E045 = v19;
			while (1)
			{
				v21 = (unsigned __int16)g_data.rect.right + 1;
				v22 = __OFSUB__(v21, v47);
				v23 = v21 - v47;
				if (!((unsigned __int8)((v23 < 0) ^ v22) | (v23 == 0)))
					break;
			LABEL_30:
				v10 += v15;
				v15 += 4;
				v13 += g_data.dword_1000E03D;
				v11 = (WORD*)((char *)v11 + a7 - 4);
				v47 -= 2;
				if (!--g_data.dword_1000E041)
				{
				LABEL_31:
					v11 -= 307200;
					++g_data.dword_1000E034;
					v20 = g_data.dword_1000E045 == 0;
					g_data.dword_1000E041 = g_data.dword_1000E045;
					g_data.dword_1000E045 = 0;
					if (v20)
					{
						v11 += 307200;
						goto LABEL_33;
					}
				}
			}
			v45 = v10;
			v43 = v11;
			v41 = v13;
			v39 = v15;
			if (v23 < v15)
				v15 = v23;
			v24 = (unsigned __int16)g_data.rect.left - v47;
			if ((unsigned __int16)g_data.rect.left > v47)
			{
				if (v24 >= v15)
				{
				LABEL_29:
					v15 = v39;
					v13 = v41;
					v11 = v43;
					v10 = v45;
					goto LABEL_30;
				}
				v10 += v24;
				v11 = (WORD*)((char *)v11 + v24 + v24);
				v15 -= v24;
				do
				{
					v13 += v12;
					--v24;
				} while (v24);
			}
			if ((unsigned int)v11 >= g_data.dword_1000E038)
				v11 -= 307200;
			if ((unsigned int)v11 < a9)
				v11 += 307200;
			BYTE1(v13) ^= g_data.byte_1000E049;
			g_data.byte_1000E049 ^= 0x20u;
			HIWORD(v25) = 0;
			do
			{
				BYTE1(v25) = BYTE1(v13);
				LOBYTE(v25) = *v10++;
				*v11 = g_result.word_10010784[v25];
				++v11;
				v13 += v12;
				BYTE1(v13) ^= 0x20u;
				--v15;
			} while (v15);
			goto LABEL_29;
		}
	LABEL_33:
		g_data.byte_1000E049 ^= 0x20u;
		v26 = v15 - 6;
		v27 = (char *)(v11 + 3);
		v48 = v47 + 3;
		v28 = (unsigned __int16)g_data.rect.bottom + 1;
		v22 = __OFSUB__(v28, a6);
		result = v28 - a6;
		if ((result < 0) ^ v22)
			return result;
		if (result >= 16)
			result = 16;
		g_data.dword_1000E041 = result;
		g_data.dword_1000E03D = 16 * (a4 - a1);
		v29 = g_data.dword_1000E03D + (a1 << 8);
	}
	result = g_data.dword_1000E041;
	if (g_data.dword_1000E041 > 0)
	{
		if ((unsigned int)g_data.dword_1000E034 < 2)
		{
			g_data.dword_1000E045 = g_data.dword_1000E041;
			v30 = a6 + g_data.dword_1000E041 - g_result.surfaceHeight;
			if (a6 + g_data.dword_1000E041 < g_result.surfaceHeight)
				v30 = 0;
			v18 = g_data.dword_1000E041 < v30;
			v20 = g_data.dword_1000E041 == v30;
			g_data.dword_1000E041 -= v30;
			if (v18 || v20)
				goto LABEL_55;
			g_data.dword_1000E045 = v30;
		}
		while (1)
		{
			v46 = v10;
			v44 = v27;
			v42 = v29;
			v40 = v26;
			v31 = (unsigned __int16)g_data.rect.right + 1;
			v22 = __OFSUB__(v31, v48);
			v32 = v31 - v48;
			if (!((unsigned __int8)((v32 < 0) ^ v22) | (v32 == 0)))
			{
				if (v32 < v26)
					v26 = v32;
				v33 = (unsigned __int16)g_data.rect.left - v48;
				if ((unsigned __int16)g_data.rect.left <= v48)
					goto LABEL_51;
				if (v33 < v26)
					break;
			}
			v34 = v40;
		LABEL_54:
			v10 = &v46[v34];
			v26 = v34 - 4;
			v29 += g_data.dword_1000E03D;
			v27 = &v44[a7 + 4];
			v48 += 2;
			if (!--g_data.dword_1000E041)
			{
			LABEL_55:
				v27 -= 614400;
				result = g_data.dword_1000E045;
				v20 = g_data.dword_1000E045 == 0;
				g_data.dword_1000E041 = g_data.dword_1000E045;
				g_data.dword_1000E045 = 0;
				if (v20)
					return result;
			}
		}
		v10 += v33;
		v27 += v33 + v33;
		v26 -= v33;
		do
		{
			v29 += v12;
			--v33;
		} while (v33);
	LABEL_51:
		BYTE1(v29) ^= g_data.byte_1000E049;
		g_data.byte_1000E049 ^= 0x20u;
		HIWORD(v35) = 0;
		do
		{
			BYTE1(v35) = BYTE1(v29);
			LOBYTE(v35) = *v10++;
			*(WORD*)v27 = g_result.word_10010784[v35];
			v27 += 2;
			v29 += v12;
			BYTE1(v29) ^= 0x20u;
			--v26;
		} while (v26);
		v34 = v40;
		v29 = v42;
		goto LABEL_54;
	}
	return result;
}

//----- (100038EE) --------------------------------------------------------
int _cdecl sub_100038EE(int a1, int a2, int a3, int a4, int x, int y, unsigned int a7, unsigned int a8)
{
	int v8; // eax@1
	int result; // eax@1
	unsigned __int64 v10; // rax@5
	WORD*v11; // edi@5
	int v12; // esi@5
	int v13; // ebx@6
	int v14; // eax@6
	signed int v15; // ecx@8
	int v16; // eax@8
	unsigned int v17; // eax@12
	bool v18; // cf@12
	unsigned int v19; // eax@12
	bool v20; // zf@14
	int v21; // eax@16
	unsigned __int8 v22; // of@16
	int v23; // eax@16
	int v24; // eax@19
	int v25; // edx@29
	unsigned int v26; // eax@29
	int v27; // ecx@36
	char *v28; // edi@36
	int v29; // eax@36
	int v30; // ebx@39
	unsigned int v31; // eax@42
	int v32; // eax@46
	int v33; // eax@46
	int v34; // eax@49
	int v35; // ecx@51
	int v36; // edx@56
	unsigned int v37; // eax@56
	int v38; // eax@63
	int v39; // eax@63
	int v40; // eax@65
	signed int v41; // [sp-Ch] [bp-18h]@17
	int v42; // [sp-Ch] [bp-18h]@46
	int v43; // [sp-8h] [bp-14h]@17
	int v44; // [sp-8h] [bp-14h]@46
	WORD*v45; // [sp-4h] [bp-10h]@17
	char *v46; // [sp-4h] [bp-10h]@46
	int xa; // [sp+24h] [bp+18h]@5
	int xb; // [sp+24h] [bp+18h]@36

	v8 = (unsigned __int16)g_result.greenMask << 16;
	LOWORD(v8) = g_result.blueMask | g_result.redMask;
	g_data.dword_1000E030 = v8;
	g_data.dword_1000E038 = a8 + g_result.offset % 1280u + 614400;
	g_data.rect.left = LOWORD(g_result.screen.left) + 33;
	g_data.rect.right = LOWORD(g_result.screen.right) + 33;
	g_data.rect.top = g_result.screen.top;
	g_data.rect.bottom = g_result.screen.bottom;
	g_data.dword_1000E034 = 0;
	result = (unsigned __int16)(LOWORD(g_result.screen.right) + 33) + 1;
	if (result < x)                             // Check if x and y point coords inside of rcRect.
												// If x and y point cords outside of rcRect then exit.
		return result;
	result = (unsigned __int16)g_data.rect.left - 64;
	if (result > x)
		return result;
	result = (unsigned __int16)g_data.rect.bottom + 1;
	if (result < y)
		return result;
	result = (unsigned __int16)g_data.rect.top - 32;
	if (result > y)
		return result;
	v10 = a7 * (unsigned __int64)(unsigned int)y;
	v11 = (WORD*)(g_result.offset + a8 + x + x + v10 - 2);
	xa = x + 32;
	v12 = 4 * (a2 - a1);
	if ((unsigned __int16)g_data.rect.top - 16 > y)
	{
		v38 = 16 * (a4 - a1);
		g_data.dword_1000E03D = v38;
		v30 = v38 + (a1 << 8);
		v28 = (char *)&v11[8 * a7 - 29];
		xb = xa - 29;
		v27 = 61;
		y += 16;
		v39 = (unsigned __int16)g_data.rect.bottom + 1 - y;
		if (v39 >= 16)
			v39 = 16;
		g_data.dword_1000E041 = v39;
		v40 = (unsigned __int16)g_data.rect.top - y;
		if ((unsigned __int16)g_data.rect.top > y)
		{
			y = (unsigned __int16)g_data.rect.top;
			g_data.dword_1000E041 -= v40;
			do
			{
				v30 += g_data.dword_1000E03D;
				v27 -= 4;
				v28 += a7 + 4;
				xb += 2;
				--v40;
			} while (v40);
		}
	}
	else
	{
		g_data.dword_1000E03D = 16 * (a1 - a3);
		v13 = v12 + g_data.dword_1000E03D + (a3 << 8);
		v14 = (unsigned __int16)g_data.rect.bottom + 1 - y;
		if (v14 >= 16)
			v14 = 16;
		g_data.dword_1000E041 = v14;
		v15 = 3;
		v16 = (unsigned __int16)g_data.rect.top - y;
		if ((unsigned __int16)g_data.rect.top > y)
		{
			g_data.dword_1000E041 -= v16;
			y = (unsigned __int16)g_data.rect.top;
			do
			{
				v13 += g_data.dword_1000E03D;
				v15 += 4;
				xa -= 2;
				v11 = (WORD*)((char *)v11 + a7 - 4);
				--v16;
			} while (v16);
		}
		g_data.dword_1000E045 = g_data.dword_1000E041;
		if (g_data.dword_1000E041 > 0)
		{
			v17 = y + g_data.dword_1000E041;
			y = v17;
			v18 = v17 < g_result.surfaceHeight;
			v19 = v17 - g_result.surfaceHeight;
			if (v18)
				v19 = 0;
			v18 = g_data.dword_1000E041 < v19;
			v20 = g_data.dword_1000E041 == v19;
			g_data.dword_1000E041 -= v19;
			if (v18 || v20)
				goto LABEL_34;
			g_data.dword_1000E045 = v19;
			while (1)
			{
				v21 = (unsigned __int16)g_data.rect.right + 1;
				v22 = __OFSUB__(v21, xa);
				v23 = v21 - xa;
				if (!((unsigned __int8)((v23 < 0) ^ v22) | (v23 == 0)))
					break;
			LABEL_33:
				v15 += 4;
				v13 += g_data.dword_1000E03D;
				v11 = (WORD*)((char *)v11 + a7 - 4);
				xa -= 2;
				if (!--g_data.dword_1000E041)
				{
				LABEL_34:
					v11 -= 307200;
					++g_data.dword_1000E034;
					v20 = g_data.dword_1000E045 == 0;
					g_data.dword_1000E041 = g_data.dword_1000E045;
					g_data.dword_1000E045 = 0;
					if (v20)
					{
						v11 += 307200;
						goto LABEL_36;
					}
				}
			}
			v45 = v11;
			v43 = v13;
			v41 = v15;
			if (v23 < v15)
				v15 = v23;
			v24 = (unsigned __int16)g_data.rect.left - xa;
			if ((unsigned __int16)g_data.rect.left > xa)
			{
				if (v24 >= v15)
				{
				LABEL_32:
					v15 = v41;
					v13 = v43;
					v11 = v45;
					goto LABEL_33;
				}
				v11 = (WORD*)((char *)v11 + v24 + v24);
				v15 -= v24;
				do
				{
					LOWORD(v13) = v12 + v13;
					--v24;
				} while (v24);
			}
			if ((unsigned int)v11 >= g_data.dword_1000E038)
				v11 -= 307200;
			if ((unsigned int)v11 < a8)
				v11 += 307200;
			do
			{
				LOWORD(v10) = BYTE1(v13);
				if (BYTE1(v13) < 0x20u)
				{
					if ((BYTE)v10)
					{
						WORD2(v10) = *v11;
						v25 = HIDWORD(v10) << 16;
						LOWORD(v25) = *v11;
						v26 = g_data.dword_1000E030 & ((g_data.dword_1000E030 & v25) * (unsigned int)BYTE1(v13) >> 5);
						HIDWORD(v10) = v26 >> 16;
						LODWORD(v10) = ((unsigned int)v10 >> 16) | v10;
					}
					*v11 = v10;
				}
				++v11;
				LOWORD(v13) = v12 + v13;
				--v15;
			} while (v15);
			goto LABEL_32;
		}
	LABEL_36:
		g_data.byte_1000E049 ^= 0x20u;
		v27 = v15 - 6;
		v28 = (char *)(v11 + 3);
		xb = xa + 3;
		v29 = (unsigned __int16)g_data.rect.bottom + 1;
		v22 = __OFSUB__(v29, y);
		result = v29 - y;
		if ((result < 0) ^ v22)
			return result;
		if (result >= 16)
			result = 16;
		g_data.dword_1000E041 = result;
		g_data.dword_1000E03D = 16 * (a4 - a1);
		v30 = g_data.dword_1000E03D + (a1 << 8);
	}
	result = g_data.dword_1000E041;
	if (g_data.dword_1000E041 > 0)
	{
		if ((unsigned int)g_data.dword_1000E034 < 2)
		{
			g_data.dword_1000E045 = g_data.dword_1000E041;
			v31 = y + g_data.dword_1000E041 - g_result.surfaceHeight;
			if (y + g_data.dword_1000E041 < g_result.surfaceHeight)
				v31 = 0;
			v18 = g_data.dword_1000E041 < v31;
			v20 = g_data.dword_1000E041 == v31;
			g_data.dword_1000E041 -= v31;
			if (v18 || v20)
				goto LABEL_61;
			g_data.dword_1000E045 = v31;
		}
		while (1)
		{
			v46 = v28;
			v44 = v30;
			v42 = v27;
			v32 = (unsigned __int16)g_data.rect.right + 1;
			v22 = __OFSUB__(v32, xb);
			v33 = v32 - xb;
			if (!((unsigned __int8)((v33 < 0) ^ v22) | (v33 == 0)))
			{
				if (v33 < v27)
					v27 = v33;
				v34 = (unsigned __int16)g_data.rect.left - xb;
				if ((unsigned __int16)g_data.rect.left <= xb)
					goto LABEL_54;
				if (v34 < v27)
					break;
			}
			v35 = v42;
		LABEL_60:
			v27 = v35 - 4;
			v30 += g_data.dword_1000E03D;
			v28 = &v46[a7 + 4];
			xb += 2;
			if (!--g_data.dword_1000E041)
			{
			LABEL_61:
				v28 -= 614400;
				result = g_data.dword_1000E045;
				v20 = g_data.dword_1000E045 == 0;
				g_data.dword_1000E041 = g_data.dword_1000E045;
				g_data.dword_1000E045 = 0;
				if (v20)
					return result;
			}
		}
		v28 += v34 + v34;
		v27 -= v34;
		do
		{
			LOWORD(v30) = v12 + v30;
			--v34;
		} while (v34);
		do
		{
		LABEL_54:
			LOWORD(v10) = BYTE1(v30);
			if (BYTE1(v30) < 32u)
			{
				if ((BYTE)v10)
				{
					WORD2(v10) = *(WORD*)v28;
					v36 = HIDWORD(v10) << 16;
					LOWORD(v36) = *(WORD*)v28;
					v37 = g_data.dword_1000E030 & ((g_data.dword_1000E030 & v36) * (unsigned int)BYTE1(v30) >> 5);
					HIDWORD(v10) = v37 >> 16;
					LODWORD(v10) = ((unsigned int)v10 >> 16) | v10;
				}
				*(WORD*)v28 = v10;
			}
			v28 += 2;
			LOWORD(v30) = v12 + v30;
			--v27;
		} while (v27);
		v35 = v42;
		v30 = v44;
		goto LABEL_60;
	}
	return result;
}

//----- (10003D18) --------------------------------------------------------
int _cdecl sub_10003D18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9)
{
	int result; // eax@1
	BYTE *v10; // esi@5
	WORD*v11; // edi@5
	int v12; // edx@5
	int v13; // ebx@6
	int v14; // eax@6
	signed int v15; // ecx@8
	int v16; // eax@8
	unsigned int v17; // eax@12
	bool v18; // cf@12
	unsigned int v19; // eax@12
	bool v20; // zf@14
	int v21; // eax@16
	unsigned __int8 v22; // of@16
	int v23; // eax@16
	int v24; // eax@19
	int v25; // ecx@34
	char *v26; // edi@34
	int v27; // eax@34
	int v28; // ebx@37
	unsigned int v29; // eax@40
	int v30; // eax@44
	int v31; // eax@44
	int v32; // eax@47
	int v33; // ecx@49
	int v34; // eax@59
	int v35; // eax@59
	int v36; // eax@61
	signed int v37; // [sp-10h] [bp-1Ch]@17
	int v38; // [sp-10h] [bp-1Ch]@44
	int v39; // [sp-Ch] [bp-18h]@17
	int v40; // [sp-Ch] [bp-18h]@44
	WORD*v41; // [sp-8h] [bp-14h]@17
	char *v42; // [sp-8h] [bp-14h]@44
	BYTE *v43; // [sp-4h] [bp-10h]@17
	BYTE *v44; // [sp-4h] [bp-10h]@44
	int v45; // [sp+24h] [bp+18h]@5
	int v46; // [sp+24h] [bp+18h]@34

	g_data.dword_1000E038 = a9 + g_result.offset % 0x500u + 614400;
	g_data.rect.left = LOWORD(g_result.screen.left) + 33;
	g_data.rect.right = LOWORD(g_result.screen.right) + 33;
	g_data.rect.top = g_result.screen.top;
	g_data.rect.bottom = g_result.screen.bottom;
	g_data.dword_1000E034 = 0;
	result = (unsigned __int16)(LOWORD(g_result.screen.right) + 33) + 1;
	if (result < a5)
		return result;
	result = (unsigned __int16)g_data.rect.left - 64;
	if (result > a5)
		return result;
	result = (unsigned __int16)g_data.rect.bottom + 1;
	if (result < a6)
		return result;
	result = (unsigned __int16)g_data.rect.top - 32;
	if (result > a6)
		return result;
	v10 = (BYTE *)a8;
	v11 = (WORD*)(g_result.offset + a9 + a5 + a5 + a7 * a6 - 2);
	v45 = a5 + 32;
	v12 = 4 * (a2 - a1);
	if ((unsigned __int16)g_data.rect.top - 16 > a6)
	{
		v34 = 16 * (a4 - a1);
		g_data.dword_1000E03D = v34;
		v28 = v34 + (a1 << 8);
		v26 = (char *)&v11[8 * a7 - 29];
		v46 = v45 - 29;
		v25 = 61;
		v10 = (BYTE *)(a8 + 528);
		a6 += 16;
		v35 = (unsigned __int16)g_data.rect.bottom + 1 - a6;
		if (v35 >= 16)
			v35 = 16;
		g_data.dword_1000E041 = v35;
		v36 = (unsigned __int16)g_data.rect.top - a6;
		if ((unsigned __int16)g_data.rect.top > a6)
		{
			a6 = (unsigned __int16)g_data.rect.top;
			g_data.dword_1000E041 -= v36;
			do
			{
				v10 += v25;
				v28 += g_data.dword_1000E03D;
				v25 -= 4;
				v26 += a7 + 4;
				v46 += 2;
				--v36;
			} while (v36);
		}
	}
	else
	{
		g_data.dword_1000E03D = 16 * (a1 - a3);
		v13 = v12 + g_data.dword_1000E03D + (a3 << 8);
		v14 = (unsigned __int16)g_data.rect.bottom + 1 - a6;
		if (v14 >= 16)
			v14 = 16;
		g_data.dword_1000E041 = v14;
		v15 = 3;
		v16 = (unsigned __int16)g_data.rect.top - a6;
		if ((unsigned __int16)g_data.rect.top > a6)
		{
			g_data.dword_1000E041 -= v16;
			a6 = (unsigned __int16)g_data.rect.top;
			do
			{
				v10 += v15;
				v13 += g_data.dword_1000E03D;
				v15 += 4;
				v45 -= 2;
				v11 = (WORD*)((char *)v11 + a7 - 4);
				--v16;
			} while (v16);
		}
		g_data.dword_1000E045 = g_data.dword_1000E041;
		if (g_data.dword_1000E041 > 0)
		{
			v17 = a6 + g_data.dword_1000E041;
			a6 = v17;
			v18 = v17 < g_result.surfaceHeight;
			v19 = v17 - g_result.surfaceHeight;
			if (v18)
				v19 = 0;
			v18 = g_data.dword_1000E041 < v19;
			v20 = g_data.dword_1000E041 == v19;
			g_data.dword_1000E041 -= v19;
			if (v18 || v20)
				goto LABEL_32;
			g_data.dword_1000E045 = v19;
			while (1)
			{
				v21 = (unsigned __int16)g_data.rect.right + 1;
				v22 = __OFSUB__(v21, v45);
				v23 = v21 - v45;
				if (!((unsigned __int8)((v23 < 0) ^ v22) | (v23 == 0)))
					break;
			LABEL_31:
				v10 += v15;
				v15 += 4;
				v13 += g_data.dword_1000E03D;
				v11 = (WORD*)((char *)v11 + a7 - 4);
				v45 -= 2;
				if (!--g_data.dword_1000E041)
				{
				LABEL_32:
					v11 -= 307200;
					++g_data.dword_1000E034;
					v20 = g_data.dword_1000E045 == 0;
					g_data.dword_1000E041 = g_data.dword_1000E045;
					g_data.dword_1000E045 = 0;
					if (v20)
					{
						v11 += 307200;
						goto LABEL_34;
					}
				}
			}
			v43 = v10;
			v41 = v11;
			v39 = v13;
			v37 = v15;
			if (v23 < v15)
				v15 = v23;
			v24 = (unsigned __int16)g_data.rect.left - v45;
			if ((unsigned __int16)g_data.rect.left > v45)
			{
				if (v24 >= v15)
				{
				LABEL_30:
					v15 = v37;
					v13 = v39;
					v11 = v41;
					v10 = v43;
					goto LABEL_31;
				}
				v10 += v24;
				v11 = (WORD*)((char *)v11 + v24 + v24);
				v15 -= v24;
				do
				{
					v13 += v12;
					--v24;
				} while (v24);
			}
			if ((unsigned int)v11 >= g_data.dword_1000E038)
				v11 -= 307200;
			if ((unsigned int)v11 < a9)
				v11 += 307200;
			do
			{
				if (*v10)
					*v11 = 0;
				++v10;
				++v11;
				v13 += v12;
				--v15;
			} while (v15);
			goto LABEL_30;
		}
	LABEL_34:
		g_data.byte_1000E049 ^= 0x20u;
		v25 = v15 - 6;
		v26 = (char *)(v11 + 3);
		v46 = v45 + 3;
		v27 = (unsigned __int16)g_data.rect.bottom + 1;
		v22 = __OFSUB__(v27, a6);
		result = v27 - a6;
		if ((result < 0) ^ v22)
			return result;
		if (result >= 16)
			result = 16;
		g_data.dword_1000E041 = result;
		g_data.dword_1000E03D = 16 * (a4 - a1);
		v28 = g_data.dword_1000E03D + (a1 << 8);
	}
	result = g_data.dword_1000E041;
	if (g_data.dword_1000E041 > 0)
	{
		if ((unsigned int)g_data.dword_1000E034 < 2)
		{
			g_data.dword_1000E045 = g_data.dword_1000E041;
			v29 = a6 + g_data.dword_1000E041 - g_result.surfaceHeight;
			if (a6 + g_data.dword_1000E041 < g_result.surfaceHeight)
				v29 = 0;
			v18 = g_data.dword_1000E041 < v29;
			v20 = g_data.dword_1000E041 == v29;
			g_data.dword_1000E041 -= v29;
			if (v18 || v20)
				goto LABEL_57;
			g_data.dword_1000E045 = v29;
		}
		while (1)
		{
			v44 = v10;
			v42 = v26;
			v40 = v28;
			v38 = v25;
			v30 = (unsigned __int16)g_data.rect.right + 1;
			v22 = __OFSUB__(v30, v46);
			v31 = v30 - v46;
			if (!((unsigned __int8)((v31 < 0) ^ v22) | (v31 == 0)))
			{
				if (v31 < v25)
					v25 = v31;
				v32 = (unsigned __int16)g_data.rect.left - v46;
				if ((unsigned __int16)g_data.rect.left <= v46)
					goto LABEL_52;
				if (v32 < v25)
					break;
			}
			v33 = v38;
		LABEL_56:
			v10 = &v44[v33];
			v25 = v33 - 4;
			v28 += g_data.dword_1000E03D;
			v26 = &v42[a7 + 4];
			v46 += 2;
			if (!--g_data.dword_1000E041)
			{
			LABEL_57:
				v26 -= 614400;
				result = g_data.dword_1000E045;
				v20 = g_data.dword_1000E045 == 0;
				g_data.dword_1000E041 = g_data.dword_1000E045;
				g_data.dword_1000E045 = 0;
				if (v20)
					return result;
			}
		}
		v10 += v32;
		v26 += v32 + v32;
		v25 -= v32;
		do
		{
			v28 += v12;
			--v32;
		} while (v32);
		do
		{
		LABEL_52:
			if (*v10)
				*(WORD*)v26 = 0;
			++v10;
			v26 += 2;
			v28 += v12;
			--v25;
		} while (v25);
		v33 = v38;
		v28 = v40;
		goto LABEL_56;
	}
	return result;
}

//----- (100040E6) --------------------------------------------------------
int _cdecl sub_100040E6(int a1, int a2, int a3, int a4, unsigned int a5)
{
	int v5; // eax@1
	int result; // eax@1
	WORD*v7; // edi@5
	int v8; // eax@6
	signed int v9; // ecx@8
	int v10; // eax@8
	unsigned int v11; // eax@12
	bool v12; // cf@12
	unsigned int v13; // eax@12
	bool v14; // zf@14
	int v15; // eax@16
	unsigned __int8 v16; // of@16
	int v17; // eax@16
	int v18; // eax@19
	unsigned int v19; // eax@27
	int v20; // ecx@33
	char *v21; // edi@33
	int v22; // eax@33
	int v23; // ebx@36
	unsigned int v24; // eax@39
	int v25; // eax@43
	int v26; // eax@43
	int v27; // eax@46
	int v28; // ecx@48
	unsigned int v29; // eax@51
	int v30; // eax@57
	int v31; // eax@59
	signed int v32; // [sp-Ch] [bp-18h]@17
	int v33; // [sp-Ch] [bp-18h]@43
	WORD*v34; // [sp-4h] [bp-10h]@17
	char *v35; // [sp-4h] [bp-10h]@43
	int v36; // [sp+14h] [bp+8h]@5
	int v37; // [sp+14h] [bp+8h]@33

	v5 = (unsigned __int16)g_result.greenMask << 16;
	LOWORD(v5) = g_result.blueMask | g_result.redMask;
	g_data.dword_1000E030 = v5;
	g_data.dword_1000E038 = a5 + g_result.offset % 0x500u + 614400;
	g_data.rect.left = LOWORD(g_result.screen.left) + 33;
	g_data.rect.right = LOWORD(g_result.screen.right) + 33;
	g_data.rect.top = g_result.screen.top;
	g_data.rect.bottom = g_result.screen.bottom;
	g_data.dword_1000E034 = 0;
	result = (unsigned __int16)(LOWORD(g_result.screen.right) + 33) + 1;
	if (result < a1)
		return result;
	result = (unsigned __int16)g_data.rect.left - 64;
	if (result > a1)
		return result;
	result = (unsigned __int16)g_data.rect.bottom + 1;
	if (result < a2)
		return result;
	result = (unsigned __int16)g_data.rect.top - 32;
	if (result > a2)
		return result;
	v7 = (WORD*)(g_result.offset + a5 + a1 + a1 + a3 * a2 - 2);
	v36 = a1 + 32;
	if ((unsigned __int16)g_data.rect.top - 16 > a2)
	{
		v23 = a4;
		v21 = (char *)&v7[8 * a3 - 29];
		v37 = v36 - 29;
		v20 = 61;
		a2 += 16;
		v30 = (unsigned __int16)g_data.rect.bottom + 1 - a2;
		if (v30 >= 16)
			v30 = 16;
		g_data.dword_1000E041 = v30;
		v31 = (unsigned __int16)g_data.rect.top - a2;
		if ((unsigned __int16)g_data.rect.top > a2)
		{
			a2 = (unsigned __int16)g_data.rect.top;
			g_data.dword_1000E041 -= v31;
			do
			{
				v20 -= 4;
				v21 += a3 + 4;
				v37 += 2;
				--v31;
			} while (v31);
		}
	}
	else
	{
		v8 = (unsigned __int16)g_data.rect.bottom + 1 - a2;
		if (v8 >= 16)
			v8 = 16;
		g_data.dword_1000E041 = v8;
		v9 = 3;
		v10 = (unsigned __int16)g_data.rect.top - a2;
		if ((unsigned __int16)g_data.rect.top > a2)
		{
			g_data.dword_1000E041 -= v10;
			a2 = (unsigned __int16)g_data.rect.top;
			do
			{
				v9 += 4;
				v36 -= 2;
				v7 = (WORD*)((char *)v7 + a3 - 4);
				--v10;
			} while (v10);
		}
		g_data.dword_1000E045 = g_data.dword_1000E041;
		if (g_data.dword_1000E041 > 0)
		{
			v11 = a2 + g_data.dword_1000E041;
			a2 = v11;
			v12 = v11 < g_result.surfaceHeight;
			v13 = v11 - g_result.surfaceHeight;
			if (v12)
				v13 = 0;
			v12 = g_data.dword_1000E041 < v13;
			v14 = g_data.dword_1000E041 == v13;
			g_data.dword_1000E041 -= v13;
			if (v12 || v14)
				goto LABEL_31;
			g_data.dword_1000E045 = v13;
			while (1)
			{
				v15 = (unsigned __int16)g_data.rect.right + 1;
				v16 = __OFSUB__(v15, v36);
				v17 = v15 - v36;
				if (!((unsigned __int8)((v17 < 0) ^ v16) | (v17 == 0)))
					break;
			LABEL_30:
				v9 += 4;
				v7 = (WORD*)((char *)v7 + a3 - 4);
				v36 -= 2;
				if (!--g_data.dword_1000E041)
				{
				LABEL_31:
					v7 -= 307200;
					++g_data.dword_1000E034;
					v14 = g_data.dword_1000E045 == 0;
					g_data.dword_1000E041 = g_data.dword_1000E045;
					g_data.dword_1000E045 = 0;
					if (v14)
					{
						v7 += 307200;
						goto LABEL_33;
					}
				}
			}
			v34 = v7;
			v32 = v9;
			if (v17 < v9)
				v9 = v17;
			v18 = (unsigned __int16)g_data.rect.left - v36;
			if ((unsigned __int16)g_data.rect.left > v36)
			{
				if (v18 >= v9)
				{
				LABEL_29:
					v9 = v32;
					v7 = v34;
					goto LABEL_30;
				}
				v7 = (WORD*)((char *)v7 + v18 + v18);
				v9 -= v18;
				do
					--v18;
				while (v18);
			}
			if ((unsigned int)v7 >= g_data.dword_1000E038)
				v7 -= 307200;
			if ((unsigned int)v7 < a5)
				v7 += 307200;
			HIWORD(v19) = 0;
			do
			{
				LOWORD(v19) = *v7;
				v19 = a4 + ((g_result.dword_1000E468 & v19) >> 1);
				*v7 = v19;
				++v7;
				--v9;
			} while (v9);
			goto LABEL_29;
		}
	LABEL_33:
		g_data.byte_1000E049 ^= 0x20u;
		v20 = v9 - 6;
		v21 = (char *)(v7 + 3);
		v37 = v36 + 3;
		v22 = (unsigned __int16)g_data.rect.bottom + 1;
		v16 = __OFSUB__(v22, a2);
		result = v22 - a2;
		if ((result < 0) ^ v16)
			return result;
		if (result >= 16)
			result = 16;
		g_data.dword_1000E041 = result;
		v23 = a4;
	}
	result = g_data.dword_1000E041;
	if (g_data.dword_1000E041 > 0)
	{
		if ((unsigned int)g_data.dword_1000E034 < 2)
		{
			g_data.dword_1000E045 = g_data.dword_1000E041;
			v24 = a2 + g_data.dword_1000E041 - g_result.surfaceHeight;
			if (a2 + g_data.dword_1000E041 < g_result.surfaceHeight)
				v24 = 0;
			v12 = g_data.dword_1000E041 < v24;
			v14 = g_data.dword_1000E041 == v24;
			g_data.dword_1000E041 -= v24;
			if (v12 || v14)
				goto LABEL_55;
			g_data.dword_1000E045 = v24;
		}
		while (1)
		{
			v35 = v21;
			v33 = v20;
			v25 = (unsigned __int16)g_data.rect.right + 1;
			v16 = __OFSUB__(v25, v37);
			v26 = v25 - v37;
			if (!((unsigned __int8)((v26 < 0) ^ v16) | (v26 == 0)))
			{
				if (v26 < v20)
					v20 = v26;
				v27 = (unsigned __int16)g_data.rect.left - v37;
				if ((unsigned __int16)g_data.rect.left <= v37)
					goto LABEL_51;
				if (v27 < v20)
					break;
			}
			v28 = v33;
		LABEL_54:
			v20 = v28 - 4;
			v21 = &v35[a3 + 4];
			v37 += 2;
			if (!--g_data.dword_1000E041)
			{
			LABEL_55:
				v21 -= 614400;
				result = g_data.dword_1000E045;
				v14 = g_data.dword_1000E045 == 0;
				g_data.dword_1000E041 = g_data.dword_1000E045;
				g_data.dword_1000E045 = 0;
				if (v14)
					return result;
			}
		}
		v21 += v27 + v27;
		v20 -= v27;
		do
			--v27;
		while (v27);
	LABEL_51:
		HIWORD(v29) = 0;
		do
		{
			LOWORD(v29) = *(WORD*)v21;
			v29 = v23 + ((g_result.dword_1000E468 & v29) >> 1);
			*(WORD*)v21 = v29;
			v21 += 2;
			--v20;
		} while (v20);
		v28 = v33;
		goto LABEL_54;
	}
	return result;
}

//----- (10004460) --------------------------------------------------------
// TODO: previous signature is "int __usercall sub_10004460@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7)".
int sub_10004460(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
	int v7; // edx@1
	WORD*v8; // esi@1
	int result; // eax@1
	int v10; // edx@1
	int v11; // edx@2
	bool v12; // sf@2
	unsigned __int8 v13; // of@2
	int v14; // ecx@3
	int v15; // edx@5
	unsigned int v16; // edi@7
	unsigned int v17; // eax@7
	unsigned int v18; // edi@7
	unsigned int v19; // eax@9
	bool v20; // cf@11
	unsigned __int16 v21; // ax@13
	char *v22; // esi@13
	unsigned int v23; // ebp@13
	char v24; // al@15
	int v25; // ecx@16
	int v26; // ecx@17
	char *v27; // esi@17
	char v28; // al@17
	int v29; // ecx@19
	char v30; // al@22
	char v31; // cl@23
	char v32; // cl@27
	unsigned int v33; // eax@27
	bool v34; // zf@29
	unsigned __int8 v35; // pf@29
	char v36; // cl@29
	int v37; // ecx@29
	int v38; // eax@31
	int v39; // eax@33
	int v40; // eax@37
	WORD*v41; // edi@37
	int v42; // [sp+8h] [bp+8h]@1
	int v43; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v42 = *(WORD*)a7 + a5;
	v43 = *(WORD*)(a7 + 2) + a6;
	v7 = *(WORD*)(a7 + 4) + 1;
	v8 = (WORD*)(a7 + 9);
	g_data.dword_1000E09A = *(WORD*)(a7 + 6);
	g_data.dword_1000E064 = v7;
	result = LOWORD(g_result.screen.top);
	v10 = v43 - LOWORD(g_result.screen.top);
	if (v43 < LOWORD(g_result.screen.top))
	{
		v43 = LOWORD(g_result.screen.top);
		v11 = -v10;
		v13 = __OFSUB__(g_data.dword_1000E09A, v11);
		v34 = g_data.dword_1000E09A == v11;
		v12 = g_data.dword_1000E09A - v11 < 0;
		g_data.dword_1000E09A -= v11;
		if ((unsigned __int8)(v12 ^ v13) | v34)
			return result;
		v14 = v11;
		do
		{
			LOWORD(result) = *v8;
			v8 = (WORD*)((char *)v8 + result + 2);
			--v14;
		} while (v14);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v15 = v43 + g_data.dword_1000E09A - result;
	if (v43 + g_data.dword_1000E09A <= result
		|| (v13 = __OFSUB__(g_data.dword_1000E09A, v15),
			v34 = g_data.dword_1000E09A == v15,
			v12 = g_data.dword_1000E09A - v15 < 0,
			g_data.dword_1000E09A -= v15,
			!((unsigned __int8)(v12 ^ v13) | v34)))
	{
		v16 = ((unsigned int)g_result.a_buffer2 + g_result.offset) >> 1;
		v17 = (unsigned int)(v43 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v16 + v17 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v16 + (unsigned __int16)g_data.smallRect.Right + v17 + 1;
		v18 = v42 + v17 + v16;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10004635;
		if (g_data.dword_1000E064 + v18 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10004641;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v19 = v43 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v43 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v19 = 0;
		v20 = g_data.dword_1000E09A < v19;
		v34 = g_data.dword_1000E09A == v19;
		g_data.dword_1000E09A -= v19;
		if (v20 || v34)
			goto LABEL_42;
		g_data.dword_1000E09E = v19;
		while (1)
		{
			g_data.dword_1000E07C = v18;
			v21 = *v8;
			v22 = (char *)(v8 + 1);
			v23 = (unsigned int)&v22[v21];
			if (v18 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v18 < g_data.dword_1000E060 && (unsigned int)v22 < v23)
				{
					v28 = *v22;
					v27 = v22 + 1;
				LABEL_27:
					v32 = v28;
					v33 = v18 + (v28 & 0x3F);
					if (v33 > g_data.dword_1000E060)
						v33 = g_data.dword_1000E060;
					v36 = v32 & 0xC0;
					v34 = v36 == 0;
					v35 = __SETP__(v36, 0);
					v12 = v36 < 0;
					v37 = v33 - v18;
					if (v12)
					{
						if (v35)
						{
							result = g_data.dword_1000E06C(v42, v43);
						}
						else
						{
							v40 = *(DWORD*)((char *)&unk_10018984 + 2 * (unsigned __int8)*v27);
							v41 = (WORD*)(2 * v18);
							while (v37)
							{
								*v41 = v40;
								++v41;
								--v37;
							}
							result = g_data.dword_1000E06C(v42, v43);
						}
					}
					else if (v34)
					{
						do
						{
							v38 = (unsigned __int8)*v27++;
							*(WORD*)(2 * v18++) = *(DWORD*)((char *)&unk_10018984 + 2 * v38);
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v42, v43);
					}
					else
					{
						do
						{
							v39 = (unsigned __int8)*v27++;
							*(WORD*)(2 * v18) = (*(DWORD*)(2 * v18)
								+ *(DWORD*)((char *)&unk_10018984 + 2 * v39)
								- (g_result.dword_1000E460 & (unsigned int)(*(DWORD*)(2 * v18) ^ *(DWORD*)((char *)&unk_10018984 + 2 * v39)))) >> 1;
							++v18;
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v42, v43);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v22 < v23)
				{
					v24 = *v22++;
					if (v24 < 0)
					{
						v29 = v24 & 0x3F;
						if (v24 & 0x40)
						{
							v18 += v29;
							if (v18 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v30 = *v22++;
							v18 += v29;
							if (v18 > g_data.dword_1000E05C)
							{
								v31 = v18;
								v18 = g_data.dword_1000E05C;
								v28 = (v31 - g_data.dword_1000E05C) | 0x80;
								v27 = v22 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v25 = v24 & 0x3F;
						v22 += v25;
						v18 += v25;
						if (v18 > g_data.dword_1000E05C)
						{
							v26 = v18 - g_data.dword_1000E05C;
							v18 -= v18 - g_data.dword_1000E05C;
							v27 = &v22[-v26];
							v34 = (v24 & 0x40) == 0;
							v28 = v26;
							if (!v34)
								v28 = v26 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v8 = (WORD*)v23;
			v18 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_42:
				v18 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: previous signature is "int __usercall sub_10004786@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7)".
int sub_10004786(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
	int v7; // edx@1
	WORD*v8; // esi@1
	int result; // eax@1
	int v10; // edx@1
	int v11; // edx@2
	bool v12; // sf@2
	unsigned __int8 v13; // of@2
	int v14; // ecx@3
	int v15; // edx@5
	unsigned int v16; // edi@7
	unsigned int v17; // eax@7
	unsigned int v18; // edi@7
	unsigned int v19; // eax@9
	bool v20; // cf@11
	unsigned __int16 v21; // ax@13
	char *v22; // esi@13
	unsigned int v23; // ebp@13
	char v24; // al@15
	int v25; // ecx@16
	int v26; // ecx@17
	char *v27; // esi@17
	char v28; // al@17
	int v29; // ecx@19
	char v30; // al@22
	char v31; // cl@23
	char v32; // cl@27
	unsigned int v33; // eax@27
	bool v34; // zf@29
	unsigned __int8 v35; // pf@29
	char v36; // cl@29
	int v37; // ecx@29
	int v38; // eax@31
	int v39; // eax@33
	int v40; // eax@37
	WORD*v41; // edi@37
	int v42; // [sp+8h] [bp+8h]@1
	int v43; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v42 = *(WORD*)a7 + a5;
	v43 = *(WORD*)(a7 + 2) + a6;
	v7 = *(WORD*)(a7 + 4) + 1;
	v8 = (WORD*)(a7 + 9);
	g_data.dword_1000E09A = *(WORD*)(a7 + 6);
	g_data.dword_1000E064 = v7;
	result = LOWORD(g_result.screen.top);
	v10 = v43 - LOWORD(g_result.screen.top);
	if (v43 < LOWORD(g_result.screen.top))
	{
		v43 = LOWORD(g_result.screen.top);
		v11 = -v10;
		v13 = __OFSUB__(g_data.dword_1000E09A, v11);
		v34 = g_data.dword_1000E09A == v11;
		v12 = g_data.dword_1000E09A - v11 < 0;
		g_data.dword_1000E09A -= v11;
		if ((unsigned __int8)(v12 ^ v13) | v34)
			return result;
		v14 = v11;
		do
		{
			LOWORD(result) = *v8;
			v8 = (WORD*)((char *)v8 + result + 2);
			--v14;
		} while (v14);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v15 = v43 + g_data.dword_1000E09A - result;
	if (v43 + g_data.dword_1000E09A <= result
		|| (v13 = __OFSUB__(g_data.dword_1000E09A, v15),
			v34 = g_data.dword_1000E09A == v15,
			v12 = g_data.dword_1000E09A - v15 < 0,
			g_data.dword_1000E09A -= v15,
			!((unsigned __int8)(v12 ^ v13) | v34)))
	{
		v16 = ((unsigned int)g_result.a_buffer2 + g_result.offset) >> 1;
		v17 = (unsigned int)(v43 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v16 + v17 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v16 + (unsigned __int16)g_data.smallRect.Right + v17 + 1;
		v18 = v42 + v17 + v16;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000495B;
		if (g_data.dword_1000E064 + v18 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10004967;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v19 = v43 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v43 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v19 = 0;
		v20 = g_data.dword_1000E09A < v19;
		v34 = g_data.dword_1000E09A == v19;
		g_data.dword_1000E09A -= v19;
		if (v20 || v34)
			goto LABEL_42;
		g_data.dword_1000E09E = v19;
		while (1)
		{
			g_data.dword_1000E07C = v18;
			v21 = *v8;
			v22 = (char *)(v8 + 1);
			v23 = (unsigned int)&v22[v21];
			if (v18 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v18 < g_data.dword_1000E060 && (unsigned int)v22 < v23)
				{
					v28 = *v22;
					v27 = v22 + 1;
				LABEL_27:
					v32 = v28;
					v33 = v18 + (v28 & 0x3F);
					if (v33 > g_data.dword_1000E060)
						v33 = g_data.dword_1000E060;
					v36 = v32 & 0xC0;
					v34 = v36 == 0;
					v35 = __SETP__(v36, 0);
					v12 = v36 < 0;
					v37 = v33 - v18;
					if (v12)
					{
						if (v35)
						{
							result = g_data.dword_1000E06C(v42, v43);
						}
						else
						{
							v40 = *(DWORD*)((char *)&unk_10018B84 + 2 * (unsigned __int8)*v27);
							v41 = (WORD*)(2 * v18);
							while (v37)
							{
								*v41 = v40;
								++v41;
								--v37;
							}
							result = g_data.dword_1000E06C(v42, v43);
						}
					}
					else if (v34)
					{
						do
						{
							v38 = (unsigned __int8)*v27++;
							*(WORD*)(2 * v18++) = *(DWORD*)((char *)&unk_10018B84 + 2 * v38);
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v42, v43);
					}
					else
					{
						do
						{
							v39 = (unsigned __int8)*v27++;
							*(WORD*)(2 * v18) = (*(DWORD*)(2 * v18)
								+ *(DWORD*)((char *)&unk_10018B84 + 2 * v39)
								- (g_result.dword_1000E460 & (unsigned int)(*(DWORD*)(2 * v18) ^ *(DWORD*)((char *)&unk_10018B84 + 2 * v39)))) >> 1;
							++v18;
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v42, v43);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v22 < v23)
				{
					v24 = *v22++;
					if (v24 < 0)
					{
						v29 = v24 & 0x3F;
						if (v24 & 0x40)
						{
							v18 += v29;
							if (v18 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v30 = *v22++;
							v18 += v29;
							if (v18 > g_data.dword_1000E05C)
							{
								v31 = v18;
								v18 = g_data.dword_1000E05C;
								v28 = (v31 - g_data.dword_1000E05C) | 0x80;
								v27 = v22 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v25 = v24 & 0x3F;
						v22 += v25;
						v18 += v25;
						if (v18 > g_data.dword_1000E05C)
						{
							v26 = v18 - g_data.dword_1000E05C;
							v18 -= v18 - g_data.dword_1000E05C;
							v27 = &v22[-v26];
							v34 = (v24 & 0x40) == 0;
							v28 = v26;
							if (!v34)
								v28 = v26 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v8 = (WORD*)v23;
			v18 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_42:
				v18 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

//----- (10004AB6) --------------------------------------------------------
// TODO: previous signature is "int __usercall sub_10004AB6@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8)".
int sub_10004AB6(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8)
{
	int v8; // ebp@1
	int v9; // edx@1
	WORD *v10; // esi@1
	int result; // eax@1
	int v12; // edx@1
	int v13; // edx@2
	bool v14; // sf@2
	unsigned __int8 v15; // of@2
	int v16; // ecx@3
	int v17; // edx@5
	unsigned int v18; // edi@7
	unsigned int v19; // eax@7
	unsigned int v20; // edi@7
	unsigned int v21; // eax@9
	bool v22; // cf@11
	unsigned __int16 v23; // ax@13
	char *v24; // esi@13
	char v25; // al@15
	int v26; // ecx@16
	int v27; // ecx@17
	char *v28; // esi@17
	char v29; // al@17
	int v30; // ecx@19
	char v31; // al@22
	char v32; // cl@23
	char v33; // cl@27
	unsigned int v34; // eax@27
	bool v35; // zf@29
	unsigned __int8 v36; // pf@29
	char v37; // cl@29
	int v38; // ecx@29
	int v39; // eax@31
	unsigned int v40; // eax@31
	int v41; // edx@31
	int v42; // eax@35
	unsigned int v43; // eax@35
	int v44; // edx@35
	unsigned int v45; // eax@41
	int v46; // edx@42
	int v47; // [sp+8h] [bp+8h]@1
	int v48; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v8 = a2 << 16;
	LOWORD(v8) = 32 * (a7 + 1088);
	v47 = *(WORD*)a8 + a5;
	v48 = *(WORD*)(a8 + 2) + a6;
	v9 = *(WORD*)(a8 + 4) + 1;
	v10 = (WORD*)(a8 + 9);
	g_data.dword_1000E09A = *(WORD*)(a8 + 6);
	g_data.dword_1000E064 = v9;
	result = LOWORD(g_result.screen.top);
	v12 = v48 - LOWORD(g_result.screen.top);
	if (v48 < LOWORD(g_result.screen.top))
	{
		v48 = LOWORD(g_result.screen.top);
		v13 = -v12;
		v15 = __OFSUB__(g_data.dword_1000E09A, v13);
		v35 = g_data.dword_1000E09A == v13;
		v14 = g_data.dword_1000E09A - v13 < 0;
		g_data.dword_1000E09A -= v13;
		if ((unsigned __int8)(v14 ^ v15) | v35)
			return result;
		v16 = v13;
		do
		{
			LOWORD(result) = *v10;
			v10 = (WORD*)((char *)v10 + result + 2);
			--v16;
		} while (v16);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v17 = v48 + g_data.dword_1000E09A - result;
	if (v48 + g_data.dword_1000E09A <= result
		|| (v15 = __OFSUB__(g_data.dword_1000E09A, v17),
			v35 = g_data.dword_1000E09A == v17,
			v14 = g_data.dword_1000E09A - v17 < 0,
			g_data.dword_1000E09A -= v17,
			!((unsigned __int8)(v14 ^ v15) | v35)))
	{
		v18 = ((unsigned int)g_result.a_buffer2 + g_result.offset) >> 1;
		v19 = (unsigned int)(v48 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v18 + v19 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v18 + (unsigned __int16)g_data.smallRect.Right + v19 + 1;
		v20 = v47 + v19 + v18;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10004CA9;
		if (g_data.dword_1000E064 + v20 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10004CB5;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v21 = v48 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v48 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v21 = 0;
		v22 = g_data.dword_1000E09A < v21;
		v35 = g_data.dword_1000E09A == v21;
		g_data.dword_1000E09A -= v21;
		if (v22 || v35)
			goto LABEL_47;
		g_data.dword_1000E09E = v21;
		while (1)
		{
			g_data.dword_1000E07C = v20;
			v23 = *v10;
			v24 = (char *)(v10 + 1);
			g_data.dword_1000E080 = (int)&v24[v23];
			if (v20 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v20 < g_data.dword_1000E060 && (unsigned int)v24 < g_data.dword_1000E080)
				{
					v29 = *v24;
					v28 = v24 + 1;
				LABEL_27:
					v33 = v29;
					v34 = v20 + (v29 & 0x3F);
					if (v34 > g_data.dword_1000E060)
						v34 = g_data.dword_1000E060;
					v37 = v33 & 0xC0;
					v35 = v37 == 0;
					v36 = __SETP__(v37, 0);
					v14 = v37 < 0;
					v38 = v34 - v20;
					if (v14)
					{
						if (v36)
						{
							result = g_data.dword_1000E06C(v47, v48);
						}
						else
						{
							v45 = *(DWORD*)((char *)&unk_10018784 + 2 * (unsigned __int8)*v28);
							do
							{
								v46 = v8 | *(DWORD*)(2 * v20 + 0x96524) & 3;
								*(WORD*)(2 * v20 + 0x96524) = v46;
								if (v46 & 2)
									v45 = g_result.dword_1000E480 + ((g_result.dword_1000E468 & v45) >> 1);
								*(WORD*)(2 * v20++) = v45;
								--v38;
							} while (v38);
							result = g_data.dword_1000E06C(v47, v48);
						}
					}
					else if (v35)
					{
						do
						{
							v39 = (unsigned __int8)*v28++;
							v40 = *(DWORD*)((char *)&unk_10018784 + 2 * v39);
							v41 = v8 | *(DWORD*)(2 * v20 + 0x96524) & 3;
							*(WORD*)(2 * v20 + 0x96524) = v41;
							if (v41 & 2)
								LOWORD(v40) = g_result.dword_1000E480 + ((g_result.dword_1000E468 & v40) >> 1);
							*(WORD*)(2 * v20++) = v40;
							--v38;
						} while (v38);
						result = g_data.dword_1000E06C(v47, v48);
					}
					else
					{
						do
						{
							v42 = (unsigned __int8)*v28++;
							v43 = (*(DWORD*)(2 * v20)
								+ *(DWORD*)((char *)&unk_10018784 + 2 * v42)
								- (g_result.dword_1000E460 & (unsigned int)(*(DWORD*)(2 * v20) ^ *(DWORD*)((char *)&unk_10018784 + 2 * v42)))) >> 1;
							v44 = v8 | *(DWORD*)(2 * v20 + 0x96524) & 3;
							*(WORD*)(2 * v20 + 0x96524) = v44;
							if (v44 & 2)
								LOWORD(v43) = g_result.dword_1000E480 + ((g_result.dword_1000E468 & v43) >> 1);
							*(WORD*)(2 * v20++) = v43;
							--v38;
						} while (v38);
						result = g_data.dword_1000E06C(v47, v48);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v24 < g_data.dword_1000E080)
				{
					v25 = *v24++;
					if (v25 < 0)
					{
						v30 = v25 & 0x3F;
						if (v25 & 0x40)
						{
							v20 += v30;
							if (v20 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v31 = *v24++;
							v20 += v30;
							if (v20 > g_data.dword_1000E05C)
							{
								v32 = v20;
								v20 = g_data.dword_1000E05C;
								v29 = (v32 - g_data.dword_1000E05C) | 0x80;
								v28 = v24 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v26 = v25 & 0x3F;
						v24 += v26;
						v20 += v26;
						if (v20 > g_data.dword_1000E05C)
						{
							v27 = v20 - g_data.dword_1000E05C;
							v20 -= v20 - g_data.dword_1000E05C;
							v28 = &v24[-v27];
							v35 = (v25 & 0x40) == 0;
							v29 = v27;
							if (!v35)
								v29 = v27 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v10 = (WORD*)g_data.dword_1000E080;
			v20 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_47:
				v20 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

//----- (10004E80) --------------------------------------------------------
// TODO: previous signature is "int __usercall sub_10004E80@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8, int a9)".
int sub_10004E80(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9)
{
	unsigned int v9; // ebp@1
	int v10; // edx@1
	WORD*v11; // esi@1
	int result; // eax@1
	int v13; // edx@1
	int v14; // edx@2
	bool v15; // zf@2
	bool v16; // sf@2
	unsigned __int8 v17; // of@2
	int v18; // ecx@3
	int v19; // edx@5
	unsigned int v20; // edi@7
	unsigned int v21; // eax@7
	unsigned int v22; // edi@7
	unsigned int v23; // eax@9
	bool v24; // cf@11
	unsigned __int16 v25; // ax@13
	BYTE *v26; // esi@13
	unsigned __int8 v27; // al@15
	BYTE *v28; // esi@15
	int v29; // ecx@17
	BYTE *v30; // esi@17
	char v31; // al@17
	int v32; // ecx@18
	char v33; // al@18
	char v34; // cl@22
	char v35; // cl@26
	unsigned int v36; // eax@26
	int v37; // ecx@28
	int v38; // eax@30
	int v39; // eax@36
	int v40; // [sp+8h] [bp+8h]@1
	int v41; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v9 = a2 << 16;
	LOWORD(v9) = 32 * (a7 + 1088);
	v40 = *(WORD*)a9 + a5;
	v41 = *(WORD*)(a9 + 2) + a6;
	v10 = *(WORD*)(a9 + 4) + 1;
	v11 = (WORD*)(a9 + 9);
	g_data.dword_1000E09A = *(WORD*)(a9 + 6);
	g_data.dword_1000E064 = v10;
	result = LOWORD(g_result.screen.top);
	v13 = v41 - LOWORD(g_result.screen.top);
	if (v41 < LOWORD(g_result.screen.top))
	{
		v41 = LOWORD(g_result.screen.top);
		v14 = -v13;
		v17 = __OFSUB__(g_data.dword_1000E09A, v14);
		v15 = g_data.dword_1000E09A == v14;
		v16 = g_data.dword_1000E09A - v14 < 0;
		g_data.dword_1000E09A -= v14;
		if ((unsigned __int8)(v16 ^ v17) | v15)
			return result;
		v18 = v14;
		do
		{
			LOWORD(result) = *v11;
			v11 = (WORD*)((char *)v11 + result + 2);
			--v18;
		} while (v18);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v19 = v41 + g_data.dword_1000E09A - result;
	if (v41 + g_data.dword_1000E09A <= result
		|| (v17 = __OFSUB__(g_data.dword_1000E09A, v19),
			v15 = g_data.dword_1000E09A == v19,
			v16 = g_data.dword_1000E09A - v19 < 0,
			g_data.dword_1000E09A -= v19,
			!((unsigned __int8)(v16 ^ v17) | v15)))
	{
		v20 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v21 = (unsigned int)(v41 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v20 + v21 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v20 + (unsigned __int16)g_data.smallRect.Right + v21 + 1;
		v22 = v40 + v21 + v20;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10005069;
		if (g_data.dword_1000E064 + v22 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10005075;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v23 = v41 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v41 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v23 = 0;
		v24 = g_data.dword_1000E09A < v23;
		v15 = g_data.dword_1000E09A == v23;
		g_data.dword_1000E09A -= v23;
		if (v24 || v15)
			goto LABEL_43;
		g_data.dword_1000E09E = v23;
		while (1)
		{
			g_data.dword_1000E07C = v22;
			v25 = *v11;
			v26 = v11 + 1;
			g_data.dword_1000E080 = (int)&v26[v25];
			if (v22 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v22 < g_data.dword_1000E060 && (unsigned int)v26 < g_data.dword_1000E080)
				{
					v31 = *v26;
					v30 = v26 + 1;
				LABEL_26:
					v35 = v31;
					v36 = v22 + (v31 & 0x7F);
					if (v36 > g_data.dword_1000E060)
						v36 = g_data.dword_1000E060;
					v16 = (char)(v35 & 0xC0) < 0;
					v37 = v36 - v22;
					if (v16)
					{
						if (*v30)
						{
							v39 = *(DWORD*)(a8 + 2 * *v30);
							do
							{
								while (*(DWORD*)(2 * v22 + 0x12CA46) < v9)
								{
									*(WORD*)(2 * v22++) = v39;
									if (!--v37)
										return g_data.dword_1000E06C(v40, v41);
								}
								++v22;
								--v37;
							} while (v37);
							result = g_data.dword_1000E06C(v40, v41);
						}
						else
						{
							result = g_data.dword_1000E06C(v40, v41);
						}
					}
					else
					{
						do
						{
							while (*(DWORD*)(2 * v22 + 0x12CA46) < v9)
							{
								v38 = *v30++;
								*(WORD*)(2 * v22++) = *(DWORD*)(a8 + 2 * v38);
								if (!--v37)
									return g_data.dword_1000E06C(v40, v41);
							}
							++v30;
							++v22;
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v40, v41);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v26 < g_data.dword_1000E080)
				{
					v27 = *v26;
					v28 = v26 + 1;
					if ((v27 & 0x80u) != 0)
					{
						v32 = v27 & 0x7F;
						v33 = *v28;
						v26 = v28 + 1;
						if (v33)
						{
							v22 += v32;
							if (v22 > g_data.dword_1000E05C)
							{
								v34 = v22;
								v22 = g_data.dword_1000E05C;
								v31 = (v34 - g_data.dword_1000E05C) | 0x80;
								v30 = v26 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v22 += v32;
							if (v22 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v26 = &v28[v27];
						v22 += v27;
						if (v22 > g_data.dword_1000E05C)
						{
							v29 = v22 - g_data.dword_1000E05C;
							v22 -= v22 - g_data.dword_1000E05C;
							v30 = &v26[-v29];
							v31 = v29;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v11 = (WORD*)g_data.dword_1000E080;
			v22 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_43:
				v22 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

//----- (100051AF) --------------------------------------------------------
// TODO: previous signature is "int __usercall sub_100051AF@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7, int a8)".
int sub_100051AF(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
	int v8; // edx@1
	WORD*v9; // esi@1
	int result; // eax@1
	int v11; // edx@1
	int v12; // edx@2
	bool v13; // zf@2
	bool v14; // sf@2
	unsigned __int8 v15; // of@2
	int v16; // ecx@3
	int v17; // edx@5
	unsigned int v18; // edi@7
	unsigned int v19; // eax@7
	unsigned int v20; // edi@7
	unsigned int v21; // eax@9
	bool v22; // cf@11
	unsigned __int16 v23; // ax@13
	BYTE *v24; // esi@13
	unsigned int v25; // ebp@13
	unsigned __int8 v26; // al@15
	BYTE *v27; // esi@15
	int v28; // ecx@17
	BYTE *v29; // esi@17
	char v30; // al@17
	int v31; // ecx@18
	char v32; // al@18
	char v33; // cl@22
	char v34; // cl@26
	unsigned int v35; // eax@26
	int v36; // ecx@28
	int v37; // eax@29
	int v38; // eax@33
	WORD*v39; // edi@33
	int v40; // [sp+8h] [bp+8h]@1
	int v41; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v40 = *(WORD*)a8 + a5;
	v41 = *(WORD*)(a8 + 2) + a6;
	v8 = *(WORD*)(a8 + 4) + 1;
	v9 = (WORD*)(a8 + 9);
	g_data.dword_1000E09A = *(WORD*)(a8 + 6);
	g_data.dword_1000E064 = v8;
	result = LOWORD(g_result.screen.top);
	v11 = v41 - LOWORD(g_result.screen.top);
	if (v41 < LOWORD(g_result.screen.top))
	{
		v41 = LOWORD(g_result.screen.top);
		v12 = -v11;
		v15 = __OFSUB__(g_data.dword_1000E09A, v12);
		v13 = g_data.dword_1000E09A == v12;
		v14 = g_data.dword_1000E09A - v12 < 0;
		g_data.dword_1000E09A -= v12;
		if ((unsigned __int8)(v14 ^ v15) | v13)
			return result;
		v16 = v12;
		do
		{
			LOWORD(result) = *v9;
			v9 = (WORD*)((char *)v9 + result + 2);
			--v16;
		} while (v16);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v17 = v41 + g_data.dword_1000E09A - result;
	if (v41 + g_data.dword_1000E09A <= result
		|| (v15 = __OFSUB__(g_data.dword_1000E09A, v17),
			v13 = g_data.dword_1000E09A == v17,
			v14 = g_data.dword_1000E09A - v17 < 0,
			g_data.dword_1000E09A -= v17,
			!((unsigned __int8)(v14 ^ v15) | v13)))
	{
		v18 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v19 = (unsigned int)(v41 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v18 + v19 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v18 + (unsigned __int16)g_data.smallRect.Right + v19 + 1;
		v20 = v40 + v19 + v18;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000537A;
		if (g_data.dword_1000E064 + v20 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10005386;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v21 = v41 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v41 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v21 = 0;
		v22 = g_data.dword_1000E09A < v21;
		v13 = g_data.dword_1000E09A == v21;
		g_data.dword_1000E09A -= v21;
		if (v22 || v13)
			goto LABEL_38;
		g_data.dword_1000E09E = v21;
		while (1)
		{
			g_data.dword_1000E07C = v20;
			v23 = *v9;
			v24 = v9 + 1;
			v25 = (unsigned int)&v24[v23];
			if (v20 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v20 < g_data.dword_1000E060 && (unsigned int)v24 < v25)
				{
					v30 = *v24;
					v29 = v24 + 1;
				LABEL_26:
					v34 = v30;
					v35 = v20 + (v30 & 0x7F);
					if (v35 > g_data.dword_1000E060)
						v35 = g_data.dword_1000E060;
					v14 = (char)(v34 & 0xC0) < 0;
					v36 = v35 - v20;
					if (v14)
					{
						if (*v29)
						{
							v38 = *(DWORD*)(a7 + 2 * *v29);
							v39 = (WORD*)(2 * v20);
							while (v36)
							{
								*v39 = v38;
								++v39;
								--v36;
							}
							result = g_data.dword_1000E06C(v40, v41);
						}
						else
						{
							result = g_data.dword_1000E06C(v40, v41);
						}
					}
					else
					{
						do
						{
							v37 = *v29++;
							*(WORD*)(2 * v20++) = *(DWORD*)(a7 + 2 * v37);
							--v36;
						} while (v36);
						result = g_data.dword_1000E06C(v40, v41);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v24 < v25)
				{
					v26 = *v24;
					v27 = v24 + 1;
					if ((v26 & 0x80u) != 0)
					{
						v31 = v26 & 0x7F;
						v32 = *v27;
						v24 = v27 + 1;
						if (v32)
						{
							v20 += v31;
							if (v20 > g_data.dword_1000E05C)
							{
								v33 = v20;
								v20 = g_data.dword_1000E05C;
								v30 = (v33 - g_data.dword_1000E05C) | 0x80;
								v29 = v24 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v20 += v31;
							if (v20 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v24 = &v27[v26];
						v20 += v26;
						if (v20 > g_data.dword_1000E05C)
						{
							v28 = v20 - g_data.dword_1000E05C;
							v20 -= v20 - g_data.dword_1000E05C;
							v29 = &v24[-v28];
							v30 = v28;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v9 = (WORD*)v25;
			v20 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_38:
				v20 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

//----- (10005493) --------------------------------------------------------
// TODO: original signature is "int __usercall sub_10005493@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7, int a8, int a9)".
int sub_10005493(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
	int v9; // eax@1
	int v10; // edx@1
	WORD*v11; // esi@1
	int result; // eax@1
	int v13; // edx@1
	int v14; // edx@2
	bool v15; // zf@2
	bool v16; // sf@2
	unsigned __int8 v17; // of@2
	int v18; // ecx@3
	int v19; // edx@5
	unsigned int v20; // edi@7
	unsigned int v21; // eax@7
	int v22; // edx@7
	unsigned int v23; // edi@7
	unsigned int v24; // eax@9
	bool v25; // cf@11
	unsigned __int16 v26; // ax@13
	BYTE *v27; // esi@13
	unsigned int v28; // ebp@13
	unsigned __int8 v29; // al@15
	BYTE *v30; // esi@15
	int v31; // ecx@17
	BYTE *v32; // esi@17
	char v33; // al@17
	int v34; // ecx@18
	char v35; // al@18
	char v36; // cl@22
	char v37; // cl@26
	unsigned int v38; // eax@26
	int v39; // ecx@28
	int v40; // eax@29
	int v41; // edx@29
	unsigned int v42; // ST00_4@29
	unsigned int v43; // eax@29
	unsigned int v44; // eax@29
	int v45; // eax@33
	int v46; // edx@34
	int v47; // ST04_4@34
	unsigned int v48; // ST00_4@34
	int v49; // eax@34
	unsigned int v50; // eax@34
	int v51; // [sp+8h] [bp+8h]@1
	int v52; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E068 = a7;
	v9 = (unsigned __int16)g_result.greenMask << 16;
	LOWORD(v9) = g_result.blueMask | g_result.redMask;
	g_data.dword_1000E084 = v9;
	g_data.dword_1000E088 = v9 | 2 * v9;
	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v51 = *(WORD*)a9 + a5;
	v52 = *(WORD*)(a9 + 2) + a6;
	v10 = *(WORD*)(a9 + 4) + 1;
	v11 = (WORD*)(a9 + 9);
	g_data.dword_1000E09A = *(WORD*)(a9 + 6);
	g_data.dword_1000E064 = v10;
	result = LOWORD(g_result.screen.top);
	v13 = v52 - LOWORD(g_result.screen.top);
	if (v52 < LOWORD(g_result.screen.top))
	{
		v52 = LOWORD(g_result.screen.top);
		v14 = -v13;
		v17 = __OFSUB__(g_data.dword_1000E09A, v14);
		v15 = g_data.dword_1000E09A == v14;
		v16 = g_data.dword_1000E09A - v14 < 0;
		g_data.dword_1000E09A -= v14;
		if ((unsigned __int8)(v16 ^ v17) | v15)
			return result;
		v18 = v14;
		do
		{
			LOWORD(result) = *v11;
			v11 = (WORD*)((char *)v11 + result + 2);
			--v18;
		} while (v18);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v19 = v52 + g_data.dword_1000E09A - result;
	if (v52 + g_data.dword_1000E09A <= result
		|| (v17 = __OFSUB__(g_data.dword_1000E09A, v19),
			v15 = g_data.dword_1000E09A == v19,
			v16 = g_data.dword_1000E09A - v19 < 0,
			g_data.dword_1000E09A -= v19,
			!((unsigned __int8)(v16 ^ v17) | v15)))
	{
		v20 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v21 = (unsigned int)(v52 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v20 + v21 + (unsigned __int16)g_data.smallRect.Left;
		v22 = v20 + (unsigned __int16)g_data.smallRect.Right + v21 + 1;
		g_data.dword_1000E060 = v20 + (unsigned __int16)g_data.smallRect.Right + v21 + 1;
		v23 = v51 + v21 + v20;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000568F;
		if (g_data.dword_1000E064 + v23 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000569B;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v24 = v52 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v52 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v24 = 0;
		v25 = g_data.dword_1000E09A < v24;
		v15 = g_data.dword_1000E09A == v24;
		g_data.dword_1000E09A -= v24;
		if (v25 || v15)
			goto LABEL_37;
		g_data.dword_1000E09E = v24;
		while (1)
		{
			g_data.dword_1000E07C = v23;
			v26 = *v11;
			v27 = v11 + 1;
			v28 = (unsigned int)&v27[v26];
			if (v23 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v23 < g_data.dword_1000E060 && (unsigned int)v27 < v28)
				{
					v33 = *v27;
					v32 = v27 + 1;
				LABEL_26:
					v37 = v33;
					v38 = v23 + (v33 & 0x7F);
					if (v38 > g_data.dword_1000E060)
						v38 = g_data.dword_1000E060;
					v16 = (char)(v37 & 0xC0) < 0;
					v39 = v38 - v23;
					if (v16)
					{
						if (*v32)
						{
							v45 = *(DWORD*)(a8 + 2 * *v32);
							do
							{
								LOWORD(v22) = *(WORD*)(2 * v23);
								v46 = v22 << 16;
								LOWORD(v46) = *(WORD*)(2 * v23);
								v47 = v45;
								v48 = g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v46) * g_data.dword_1000E068 >> 5) | ((g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v46) * g_data.dword_1000E068 >> 5)) >> 16);
								LOWORD(v46) = v45;
								v49 = v45 << 16;
								LOWORD(v49) = v46;
								v50 = g_data.dword_1000E084 & ((31 - g_data.dword_1000E068) * (g_data.dword_1000E084 & (unsigned int)v49) >> 5);
								v22 = v50 | (v50 >> 16);
								*(WORD*)(2 * v23) = v48 + v22;
								v45 = v47;
								++v23;
								--v39;
							} while (v39);
							result = g_data.dword_1000E06C(v51, v52);
						}
						else
						{
							result = g_data.dword_1000E06C(v51, v52);
						}
					}
					else
					{
						do
						{
							v40 = *v32++;
							LOWORD(v22) = *(WORD*)(2 * v23);
							v41 = v22 << 16;
							LOWORD(v41) = *(WORD*)(2 * v23);
							v42 = g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v41) * g_data.dword_1000E068 >> 5) | ((g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v41) * g_data.dword_1000E068 >> 5)) >> 16);
							LOWORD(v41) = *(DWORD*)(a8 + 2 * v40);
							v43 = *(DWORD*)(a8 + 2 * v40) << 16;
							LOWORD(v43) = v41;
							v44 = g_data.dword_1000E084 & ((31 - g_data.dword_1000E068) * (g_data.dword_1000E084 & v43) >> 5);
							v22 = v44 | (v44 >> 16);
							*(WORD*)(2 * v23++) = v42 + v22;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v51, v52);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v27 < v28)
				{
					v29 = *v27;
					v30 = v27 + 1;
					if ((v29 & 0x80u) != 0)
					{
						v34 = v29 & 0x7F;
						v35 = *v30;
						v27 = v30 + 1;
						if (v35)
						{
							v23 += v34;
							if (v23 > g_data.dword_1000E05C)
							{
								v36 = v23;
								v23 = g_data.dword_1000E05C;
								v33 = (v36 - g_data.dword_1000E05C) | 0x80;
								v32 = v27 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v23 += v34;
							if (v23 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v27 = &v30[v29];
						v23 += v29;
						if (v23 > g_data.dword_1000E05C)
						{
							v31 = v23 - g_data.dword_1000E05C;
							v23 -= v23 - g_data.dword_1000E05C;
							v32 = &v27[-v31];
							v33 = v31;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v11 = (WORD*)v28;
			v23 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			v22 = g_data.dword_1000E09A-- - 1;
			if (!g_data.dword_1000E09A)
			{
			LABEL_37:
				v23 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: original signature is "int __usercall sub_1000586C@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7, int a8)".
int sub_1000586C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
	int v8; // edx@1
	WORD*v9; // esi@1
	int result; // eax@1
	int v11; // edx@1
	int v12; // edx@2
	bool v13; // sf@2
	unsigned __int8 v14; // of@2
	int v15; // ecx@3
	int v16; // edx@5
	unsigned int v17; // edi@7
	unsigned int v18; // eax@7
	unsigned int v19; // edi@7
	unsigned int v20; // eax@9
	bool v21; // cf@11
	unsigned __int16 v22; // ax@13
	char *v23; // esi@13
	unsigned int v24; // ebp@13
	char v25; // al@15
	int v26; // ecx@16
	int v27; // ecx@17
	char *v28; // esi@17
	char v29; // al@17
	int v30; // ecx@19
	char v31; // al@22
	char v32; // cl@23
	char v33; // cl@27
	unsigned int v34; // eax@27
	bool v35; // zf@29
	unsigned __int8 v36; // pf@29
	char v37; // cl@29
	int v38; // ecx@29
	int v39; // eax@31
	int v40; // eax@33
	int v41; // eax@37
	WORD*v42; // edi@37
	int v43; // [sp+8h] [bp+8h]@1
	int v44; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v43 = *(WORD*)a8 + a5;
	v44 = *(WORD*)(a8 + 2) + a6;
	v8 = *(WORD*)(a8 + 4) + 1;
	v9 = (WORD*)(a8 + 9);
	g_data.dword_1000E09A = *(WORD*)(a8 + 6);
	g_data.dword_1000E064 = v8;
	result = LOWORD(g_result.screen.top);
	v11 = v44 - LOWORD(g_result.screen.top);
	if (v44 < LOWORD(g_result.screen.top))
	{
		v44 = LOWORD(g_result.screen.top);
		v12 = -v11;
		v14 = __OFSUB__(g_data.dword_1000E09A, v12);
		v35 = g_data.dword_1000E09A == v12;
		v13 = g_data.dword_1000E09A - v12 < 0;
		g_data.dword_1000E09A -= v12;
		if ((unsigned __int8)(v13 ^ v14) | v35)
			return result;
		v15 = v12;
		do
		{
			LOWORD(result) = *v9;
			v9 = (WORD*)((char *)v9 + result + 2);
			--v15;
		} while (v15);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v16 = v44 + g_data.dword_1000E09A - result;
	if (v44 + g_data.dword_1000E09A <= result
		|| (v14 = __OFSUB__(g_data.dword_1000E09A, v16),
			v35 = g_data.dword_1000E09A == v16,
			v13 = g_data.dword_1000E09A - v16 < 0,
			g_data.dword_1000E09A -= v16,
			!((unsigned __int8)(v13 ^ v14) | v35)))
	{
		v17 = ((unsigned int)g_result.a_buffer2 + g_result.offset) >> 1;
		v18 = (unsigned int)(v44 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v17 + v18 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v17 + (unsigned __int16)g_data.smallRect.Right + v18 + 1;
		v19 = v43 + v18 + v17;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10005A40;
		if (g_data.dword_1000E064 + v19 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10005A4C;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v20 = v44 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v44 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v20 = 0;
		v21 = g_data.dword_1000E09A < v20;
		v35 = g_data.dword_1000E09A == v20;
		g_data.dword_1000E09A -= v20;
		if (v21 || v35)
			goto LABEL_42;
		g_data.dword_1000E09E = v20;
		while (1)
		{
			g_data.dword_1000E07C = v19;
			v22 = *v9;
			v23 = (char *)(v9 + 1);
			v24 = (unsigned int)&v23[v22];
			if (v19 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v19 < g_data.dword_1000E060 && (unsigned int)v23 < v24)
				{
					v29 = *v23;
					v28 = v23 + 1;
				LABEL_27:
					v33 = v29;
					v34 = v19 + (v29 & 0x3F);
					if (v34 > g_data.dword_1000E060)
						v34 = g_data.dword_1000E060;
					v37 = v33 & 0xC0;
					v35 = v37 == 0;
					v36 = __SETP__(v37, 0);
					v13 = v37 < 0;
					v38 = v34 - v19;
					if (v13)
					{
						if (v36)
						{
							result = g_data.dword_1000E06C(v43, v44);
						}
						else
						{
							v41 = *(DWORD*)(a7 + 2 * (unsigned __int8)*v28);
							v42 = (WORD*)(2 * v19);
							while (v38)
							{
								*v42 = v41;
								++v42;
								--v38;
							}
							result = g_data.dword_1000E06C(v43, v44);
						}
					}
					else if (v35)
					{
						do
						{
							v39 = (unsigned __int8)*v28++;
							*(WORD*)(2 * v19++) = *(DWORD*)(a7 + 2 * v39);
							--v38;
						} while (v38);
						result = g_data.dword_1000E06C(v43, v44);
					}
					else
					{
						do
						{
							v40 = (unsigned __int8)*v28++;
							*(WORD*)(2 * v19) = (*(DWORD*)(2 * v19)
								+ *(DWORD*)(a7 + 2 * v40)
								- (g_result.dword_1000E460 & (unsigned int)(*(DWORD*)(2 * v19) ^ *(DWORD*)(a7 + 2 * v40)))) >> 1;
							++v19;
							--v38;
						} while (v38);
						result = g_data.dword_1000E06C(v43, v44);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v23 < v24)
				{
					v25 = *v23++;
					if (v25 < 0)
					{
						v30 = v25 & 0x3F;
						if (v25 & 0x40)
						{
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v31 = *v23++;
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
							{
								v32 = v19;
								v19 = g_data.dword_1000E05C;
								v29 = (v32 - g_data.dword_1000E05C) | 0x80;
								v28 = v23 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v26 = v25 & 0x3F;
						v23 += v26;
						v19 += v26;
						if (v19 > g_data.dword_1000E05C)
						{
							v27 = v19 - g_data.dword_1000E05C;
							v19 -= v19 - g_data.dword_1000E05C;
							v28 = &v23[-v27];
							v35 = (v25 & 0x40) == 0;
							v29 = v27;
							if (!v35)
								v29 = v27 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v9 = (WORD*)v24;
			v19 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_42:
				v19 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: original signature is "int __usercall sub_10005B96@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8, int a9)".
int sub_10005B96(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9)
{
	__int16 v9; // bp@1
	int v10; // edx@1
	WORD*v11; // esi@1
	int result; // eax@1
	int v13; // edx@1
	int v14; // edx@2
	bool v15; // sf@2
	unsigned __int8 v16; // of@2
	int v17; // ecx@3
	int v18; // edx@5
	unsigned int v19; // edi@7
	unsigned int v20; // eax@7
	unsigned int v21; // edi@7
	unsigned int v22; // eax@9
	bool v23; // cf@11
	unsigned __int16 v24; // ax@13
	char *v25; // esi@13
	char v26; // al@15
	int v27; // ecx@16
	int v28; // ecx@17
	char *v29; // esi@17
	char v30; // al@17
	int v31; // ecx@19
	char v32; // al@22
	char v33; // cl@23
	char v34; // cl@27
	unsigned int v35; // eax@27
	bool v36; // zf@29
	unsigned __int8 v37; // pf@29
	char v38; // cl@29
	int v39; // ecx@29
	int v40; // eax@31
	int v41; // eax@31
	int v42; // eax@33
	unsigned int v43; // eax@33
	int v44; // eax@37
	int v45; // [sp+8h] [bp+8h]@1
	int v46; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v9 = 32 * (a7 + 1088);
	v45 = *(WORD*)a9 + a5;
	v46 = *(WORD*)(a9 + 2) + a6;
	v10 = *(WORD*)(a9 + 4) + 1;
	v11 = (WORD*)(a9 + 9);
	g_data.dword_1000E09A = *(WORD*)(a9 + 6);
	g_data.dword_1000E064 = v10;
	result = LOWORD(g_result.screen.top);
	v13 = v46 - LOWORD(g_result.screen.top);
	if (v46 < LOWORD(g_result.screen.top))
	{
		v46 = LOWORD(g_result.screen.top);
		v14 = -v13;
		v16 = __OFSUB__(g_data.dword_1000E09A, v14);
		v36 = g_data.dword_1000E09A == v14;
		v15 = g_data.dword_1000E09A - v14 < 0;
		g_data.dword_1000E09A -= v14;
		if ((unsigned __int8)(v15 ^ v16) | v36)
			return result;
		v17 = v14;
		do
		{
			LOWORD(result) = *v11;
			v11 = (WORD*)((char *)v11 + result + 2);
			--v17;
		} while (v17);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v18 = v46 + g_data.dword_1000E09A - result;
	if (v46 + g_data.dword_1000E09A <= result
		|| (v16 = __OFSUB__(g_data.dword_1000E09A, v18),
			v36 = g_data.dword_1000E09A == v18,
			v15 = g_data.dword_1000E09A - v18 < 0,
			g_data.dword_1000E09A -= v18,
			!((unsigned __int8)(v15 ^ v16) | v36)))
	{
		v19 = ((unsigned int)g_result.a_buffer2 + g_result.offset) >> 1;
		v20 = (unsigned int)(v46 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v19 + v20 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v19 + (unsigned __int16)g_data.smallRect.Right + v20 + 1;
		v21 = v45 + v20 + v19;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10005D88;
		if (g_data.dword_1000E064 + v21 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10005D94;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v22 = v46 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v46 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v22 = 0;
		v23 = g_data.dword_1000E09A < v22;
		v36 = g_data.dword_1000E09A == v22;
		g_data.dword_1000E09A -= v22;
		if (v23 || v36)
			goto LABEL_41;
		g_data.dword_1000E09E = v22;
		while (1)
		{
			g_data.dword_1000E07C = v21;
			v24 = *v11;
			v25 = (char *)(v11 + 1);
			g_data.dword_1000E080 = (int)&v25[v24];
			if (v21 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v21 < g_data.dword_1000E060 && (unsigned int)v25 < g_data.dword_1000E080)
				{
					v30 = *v25;
					v29 = v25 + 1;
				LABEL_27:
					v34 = v30;
					v35 = v21 + (v30 & 0x3F);
					if (v35 > g_data.dword_1000E060)
						v35 = g_data.dword_1000E060;
					v38 = v34 & 0xC0;
					v36 = v38 == 0;
					v37 = __SETP__(v38, 0);
					v15 = v38 < 0;
					v39 = v35 - v21;
					if (v15)
					{
						if (v37)
						{
							result = g_data.dword_1000E06C(v45, v46);
						}
						else
						{
							v44 = *(DWORD*)(a8 + 2 * (unsigned __int8)*v29);
							do
							{
								*(WORD*)(2 * v21 + 0x96524) = v9;
								*(WORD*)(2 * v21++) = v44;
								--v39;
							} while (v39);
							result = g_data.dword_1000E06C(v45, v46);
						}
					}
					else if (v36)
					{
						do
						{
							v40 = (unsigned __int8)*v29++;
							v41 = *(DWORD*)(a8 + 2 * v40);
							*(WORD*)(2 * v21 + 0x96524) = v9;
							*(WORD*)(2 * v21++) = v41;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v45, v46);
					}
					else
					{
						do
						{
							v42 = (unsigned __int8)*v29++;
							v43 = *(DWORD*)(2 * v21)
								+ *(DWORD*)(a8 + 2 * v42)
								- (g_result.dword_1000E460 & (*(DWORD*)(2 * v21) ^ *(DWORD*)(a8 + 2 * v42)));
							*(WORD*)(2 * v21 + 0x96524) = v9;
							*(WORD*)(2 * v21++) = v43 >> 1;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v45, v46);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v25 < g_data.dword_1000E080)
				{
					v26 = *v25++;
					if (v26 < 0)
					{
						v31 = v26 & 0x3F;
						if (v26 & 0x40)
						{
							v21 += v31;
							if (v21 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v32 = *v25++;
							v21 += v31;
							if (v21 > g_data.dword_1000E05C)
							{
								v33 = v21;
								v21 = g_data.dword_1000E05C;
								v30 = (v33 - g_data.dword_1000E05C) | 0x80;
								v29 = v25 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v27 = v26 & 0x3F;
						v25 += v27;
						v21 += v27;
						if (v21 > g_data.dword_1000E05C)
						{
							v28 = v21 - g_data.dword_1000E05C;
							v21 -= v21 - g_data.dword_1000E05C;
							v29 = &v25[-v28];
							v36 = (v26 & 0x40) == 0;
							v30 = v28;
							if (!v36)
								v30 = v28 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v11 = (WORD*)g_data.dword_1000E080;
			v21 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_41:
				v21 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: original signature is "int __usercall sub_10005F01@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8, int a9)".
int sub_10005F01(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9)
{
	int v9; // ebp@1
	int v10; // edx@1
	WORD*v11; // esi@1
	int result; // eax@1
	int v13; // edx@1
	int v14; // edx@2
	bool v15; // zf@2
	bool v16; // sf@2
	unsigned __int8 v17; // of@2
	int v18; // ecx@3
	int v19; // edx@5
	unsigned int v20; // edi@7
	unsigned int v21; // eax@7
	unsigned int v22; // edi@7
	unsigned int v23; // eax@9
	bool v24; // cf@11
	unsigned __int16 v25; // ax@13
	BYTE *v26; // esi@13
	unsigned __int8 v27; // al@15
	BYTE *v28; // esi@15
	int v29; // ecx@17
	BYTE *v30; // esi@17
	char v31; // al@17
	int v32; // ecx@18
	char v33; // al@18
	char v34; // cl@22
	char v35; // cl@26
	unsigned int v36; // eax@26
	int v37; // ecx@28
	int v38; // eax@29
	unsigned int v39; // eax@29
	int v40; // edx@29
	unsigned int v41; // eax@35
	int v42; // edx@36
	int v43; // [sp+8h] [bp+8h]@1
	int v44; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v9 = a2 << 16;
	LOWORD(v9) = 32 * (a7 + 1088);
	v43 = *(WORD*)a9 + a5;
	v44 = *(WORD*)(a9 + 2) + a6;
	v10 = *(WORD*)(a9 + 4) + 1;
	v11 = (WORD*)(a9 + 9);
	g_data.dword_1000E09A = *(WORD*)(a9 + 6);
	g_data.dword_1000E064 = v10;
	result = LOWORD(g_result.screen.top);
	v13 = v44 - LOWORD(g_result.screen.top);
	if (v44 < LOWORD(g_result.screen.top))
	{
		v44 = LOWORD(g_result.screen.top);
		v14 = -v13;
		v17 = __OFSUB__(g_data.dword_1000E09A, v14);
		v15 = g_data.dword_1000E09A == v14;
		v16 = g_data.dword_1000E09A - v14 < 0;
		g_data.dword_1000E09A -= v14;
		if ((unsigned __int8)(v16 ^ v17) | v15)
			return result;
		v18 = v14;
		do
		{
			LOWORD(result) = *v11;
			v11 = (WORD*)((char *)v11 + result + 2);
			--v18;
		} while (v18);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v19 = v44 + g_data.dword_1000E09A - result;
	if (v44 + g_data.dword_1000E09A <= result
		|| (v17 = __OFSUB__(g_data.dword_1000E09A, v19),
			v15 = g_data.dword_1000E09A == v19,
			v16 = g_data.dword_1000E09A - v19 < 0,
			g_data.dword_1000E09A -= v19,
			!((unsigned __int8)(v16 ^ v17) | v15)))
	{
		v20 = ((unsigned int)g_result.a_buffer2 + g_result.offset) >> 1;
		v21 = (unsigned int)(v44 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v20 + v21 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v20 + (unsigned __int16)g_data.smallRect.Right + v21 + 1;
		v22 = v43 + v21 + v20;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_100060EA;
		if (g_data.dword_1000E064 + v22 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_100060F6;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v23 = v44 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v44 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v23 = 0;
		v24 = g_data.dword_1000E09A < v23;
		v15 = g_data.dword_1000E09A == v23;
		g_data.dword_1000E09A -= v23;
		if (v24 || v15)
			goto LABEL_41;
		g_data.dword_1000E09E = v23;
		while (1)
		{
			g_data.dword_1000E07C = v22;
			v25 = *v11;
			v26 = v11 + 1;
			g_data.dword_1000E080 = (int)&v26[v25];
			if (v22 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v22 < g_data.dword_1000E060 && (unsigned int)v26 < g_data.dword_1000E080)
				{
					v31 = *v26;
					v30 = v26 + 1;
				LABEL_26:
					v35 = v31;
					v36 = v22 + (v31 & 0x7F);
					if (v36 > g_data.dword_1000E060)
						v36 = g_data.dword_1000E060;
					v16 = (char)(v35 & 0xC0) < 0;
					v37 = v36 - v22;
					if (v16)
					{
						if (*v30)
						{
							v41 = *(DWORD*)(a8 + 2 * *v30);
							do
							{
								v42 = v9 | *(DWORD*)(2 * v22 + 0x96524) & 3;
								*(WORD*)(2 * v22 + 0x96524) = v42;
								if (v42 & 2)
									v41 = g_result.dword_1000E480 + ((g_result.dword_1000E468 & v41) >> 1);
								*(WORD*)(2 * v22++) = v41;
								--v37;
							} while (v37);
							result = g_data.dword_1000E06C(v43, v44);
						}
						else
						{
							result = g_data.dword_1000E06C(v43, v44);
						}
					}
					else
					{
						do
						{
							v38 = *v30++;
							v39 = *(DWORD*)(a8 + 2 * v38);
							v40 = v9 | *(DWORD*)(2 * v22 + 0x96524) & 3;
							*(WORD*)(2 * v22 + 0x96524) = v40;
							if (v40 & 2)
								LOWORD(v39) = g_result.dword_1000E480 + ((g_result.dword_1000E468 & v39) >> 1);
							*(WORD*)(2 * v22++) = v39;
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v43, v44);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v26 < g_data.dword_1000E080)
				{
					v27 = *v26;
					v28 = v26 + 1;
					if ((v27 & 128u) != 0)
					{
						v32 = v27 & 127;
						v33 = *v28;
						v26 = v28 + 1;
						if (v33)
						{
							v22 += v32;
							if (v22 > g_data.dword_1000E05C)
							{
								v34 = v22;
								v22 = g_data.dword_1000E05C;
								v31 = (v34 - g_data.dword_1000E05C) | 0x80;
								v30 = v26 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v22 += v32;
							if (v22 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v26 = &v28[v27];
						v22 += v27;
						if (v22 > g_data.dword_1000E05C)
						{
							v29 = v22 - g_data.dword_1000E05C;
							v22 -= v22 - g_data.dword_1000E05C;
							v30 = &v26[-v29];
							v31 = v29;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v11 = (WORD*)g_data.dword_1000E080;
			v22 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_41:
				v22 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

//TODO: original signature is "int __usercall sub_1000625D@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7, int a8)".
int sub_1000625D(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
	int v8; // edx@1
	WORD*v9; // esi@1
	int result; // eax@1
	int v11; // edx@1
	int v12; // edx@2
	bool v13; // sf@2
	unsigned __int8 v14; // of@2
	int v15; // ecx@3
	int v16; // edx@5
	unsigned int v17; // edi@7
	unsigned int v18; // eax@7
	unsigned int v19; // edi@7
	unsigned int v20; // eax@9
	bool v21; // cf@11
	unsigned __int16 v22; // ax@13
	char *v23; // esi@13
	unsigned int v24; // ebp@13
	char v25; // al@15
	int v26; // ecx@16
	int v27; // ecx@17
	char *v28; // esi@17
	char v29; // al@17
	int v30; // ecx@19
	char v31; // al@22
	char v32; // cl@23
	char v33; // cl@27
	unsigned int v34; // eax@27
	bool v35; // zf@29
	unsigned __int8 v36; // pf@29
	char v37; // cl@29
	int v38; // ecx@29
	int v39; // eax@31
	int v40; // eax@33
	int v41; // eax@37
	WORD*v42; // edi@37
	int v43; // [sp+8h] [bp+8h]@1
	int v44; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v43 = *(WORD*)a8 + a5;
	v44 = *(WORD*)(a8 + 2) + a6;
	v8 = *(WORD*)(a8 + 4) + 1;
	v9 = (WORD*)(a8 + 9);
	g_data.dword_1000E09A = *(WORD*)(a8 + 6);
	g_data.dword_1000E064 = v8;
	result = LOWORD(g_result.screen.top);
	v11 = v44 - LOWORD(g_result.screen.top);
	if (v44 < LOWORD(g_result.screen.top))
	{
		v44 = LOWORD(g_result.screen.top);
		v12 = -v11;
		v14 = __OFSUB__(g_data.dword_1000E09A, v12);
		v35 = g_data.dword_1000E09A == v12;
		v13 = g_data.dword_1000E09A - v12 < 0;
		g_data.dword_1000E09A -= v12;
		if ((unsigned __int8)(v13 ^ v14) | v35)
			return result;
		v15 = v12;
		do
		{
			LOWORD(result) = *v9;
			v9 = (WORD*)((char *)v9 + result + 2);
			--v15;
		} while (v15);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v16 = v44 + g_data.dword_1000E09A - result;
	if (v44 + g_data.dword_1000E09A <= result
		|| (v14 = __OFSUB__(g_data.dword_1000E09A, v16),
			v35 = g_data.dword_1000E09A == v16,
			v13 = g_data.dword_1000E09A - v16 < 0,
			g_data.dword_1000E09A -= v16,
			!((unsigned __int8)(v13 ^ v14) | v35)))
	{
		v17 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v18 = (unsigned int)(v44 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v17 + v18 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v17 + (unsigned __int16)g_data.smallRect.Right + v18 + 1;
		v19 = v43 + v18 + v17;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10006431;
		if (g_data.dword_1000E064 + v19 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000643D;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v20 = v44 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v44 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v20 = 0;
		v21 = g_data.dword_1000E09A < v20;
		v35 = g_data.dword_1000E09A == v20;
		g_data.dword_1000E09A -= v20;
		if (v21 || v35)
			goto LABEL_42;
		g_data.dword_1000E09E = v20;
		while (1)
		{
			g_data.dword_1000E07C = v19;
			v22 = *v9;
			v23 = (char *)(v9 + 1);
			v24 = (unsigned int)&v23[v22];
			if (v19 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v19 < g_data.dword_1000E060 && (unsigned int)v23 < v24)
				{
					v29 = *v23;
					v28 = v23 + 1;
				LABEL_27:
					v33 = v29;
					v34 = v19 + (v29 & 0x3F);
					if (v34 > g_data.dword_1000E060)
						v34 = g_data.dword_1000E060;
					v37 = v33 & 0xC0;
					v35 = v37 == 0;
					v36 = __SETP__(v37, 0);
					v13 = v37 < 0;
					v38 = v34 - v19;
					if (v13)
					{
						if (v36)
						{
							result = g_data.dword_1000E06C(v43, v44);
						}
						else
						{
							v41 = *(DWORD*)(a7 + 2 * (unsigned __int8)*v28);
							v42 = (WORD*)(2 * v19);
							while (v38)
							{
								*v42 = v41;
								++v42;
								--v38;
							}
							result = g_data.dword_1000E06C(v43, v44);
						}
					}
					else if (v35)
					{
						do
						{
							v39 = (unsigned __int8)*v28++;
							*(WORD*)(2 * v19++) = *(DWORD*)(a7 + 2 * v39);
							--v38;
						} while (v38);
						result = g_data.dword_1000E06C(v43, v44);
					}
					else
					{
						do
						{
							v40 = (unsigned __int8)*v28++;
							*(WORD*)(2 * v19) = (*(DWORD*)(2 * v19)
								+ *(DWORD*)(a7 + 2 * v40)
								- (g_result.dword_1000E460 & (unsigned int)(*(DWORD*)(2 * v19) ^ *(DWORD*)(a7 + 2 * v40)))) >> 1;
							++v19;
							--v38;
						} while (v38);
						result = g_data.dword_1000E06C(v43, v44);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v23 < v24)
				{
					v25 = *v23++;
					if (v25 < 0)
					{
						v30 = v25 & 0x3F;
						if (v25 & 0x40)
						{
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v31 = *v23++;
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
							{
								v32 = v19;
								v19 = g_data.dword_1000E05C;
								v29 = (v32 - g_data.dword_1000E05C) | 0x80;
								v28 = v23 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v26 = v25 & 0x3F;
						v23 += v26;
						v19 += v26;
						if (v19 > g_data.dword_1000E05C)
						{
							v27 = v19 - g_data.dword_1000E05C;
							v19 -= v19 - g_data.dword_1000E05C;
							v28 = &v23[-v27];
							v35 = (v25 & 0x40) == 0;
							v29 = v27;
							if (!v35)
								v29 = v27 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v9 = (WORD*)v24;
			v19 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_42:
				v19 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: previous signature is "int __usercall sub_10006586@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7)".
int sub_10006586(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
	int v7; // edx@1
	WORD*v8; // esi@1
	int result; // eax@1
	int v10; // edx@1
	int v11; // edx@2
	bool v12; // zf@2
	bool v13; // sf@2
	unsigned __int8 v14; // of@2
	int v15; // ecx@3
	int v16; // edx@5
	unsigned int v17; // edi@7
	unsigned int v18; // eax@7
	unsigned int v19; // edi@7
	unsigned int v20; // eax@9
	bool v21; // cf@11
	unsigned __int16 v22; // ax@13
	char *v23; // esi@13
	unsigned int v24; // ebp@13
	char v25; // al@15
	DWORD *v26; // esi@15
	int v27; // ecx@17
	char *v28; // esi@17
	char v29; // al@17
	int v30; // ecx@18
	int v31; // eax@18
	char v32; // cl@22
	char v33; // cl@26
	unsigned int v34; // eax@26
	int v35; // ecx@28
	int v36; // eax@29
	int v37; // eax@31
	WORD*v38; // edi@33
	int v39; // [sp+8h] [bp+8h]@1
	int v40; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v39 = *(WORD*)a7 + a5;
	v40 = *(WORD*)(a7 + 2) + a6;
	v7 = *(WORD*)(a7 + 4) + 1;
	v8 = (WORD*)(a7 + 9);
	g_data.dword_1000E09A = *(WORD*)(a7 + 6);
	g_data.dword_1000E064 = v7;
	result = LOWORD(g_result.screen.top);
	v10 = v40 - LOWORD(g_result.screen.top);
	if (v40 < LOWORD(g_result.screen.top))
	{
		v40 = LOWORD(g_result.screen.top);
		v11 = -v10;
		v14 = __OFSUB__(g_data.dword_1000E09A, v11);
		v12 = g_data.dword_1000E09A == v11;
		v13 = g_data.dword_1000E09A - v11 < 0;
		g_data.dword_1000E09A -= v11;
		if ((unsigned __int8)(v13 ^ v14) | v12)
			return result;
		v15 = v11;
		do
		{
			LOWORD(result) = *v8;
			v8 = (WORD*)((char *)v8 + result + 2);
			--v15;
		} while (v15);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v16 = v40 + g_data.dword_1000E09A - result;
	if (v40 + g_data.dword_1000E09A <= result
		|| (v14 = __OFSUB__(g_data.dword_1000E09A, v16),
			v12 = g_data.dword_1000E09A == v16,
			v13 = g_data.dword_1000E09A - v16 < 0,
			g_data.dword_1000E09A -= v16,
			!((unsigned __int8)(v13 ^ v14) | v12)))
	{
		v17 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v18 = (unsigned int)(v40 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v17 + v18 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v17 + (unsigned __int16)g_data.smallRect.Right + v18 + 1;
		v19 = v39 + v18 + v17;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10006758;
		if (g_data.dword_1000E064 + v19 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10006764;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v20 = v40 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v40 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v20 = 0;
		v21 = g_data.dword_1000E09A < v20;
		v12 = g_data.dword_1000E09A == v20;
		g_data.dword_1000E09A -= v20;
		if (v21 || v12)
			goto LABEL_38;
		g_data.dword_1000E09E = v20;
		while (1)
		{
			g_data.dword_1000E07C = v19;
			v22 = *v8;
			v23 = (char *)(v8 + 1);
			v24 = (unsigned int)&v23[v22];
			if (v19 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v19 < g_data.dword_1000E060 && (unsigned int)v23 < v24)
				{
					v29 = *v23;
					v28 = v23 + 1;
				LABEL_26:
					v33 = v29;
					v34 = v19 + (v29 & 0x7F);
					if (v34 > g_data.dword_1000E060)
						v34 = g_data.dword_1000E060;
					v13 = (char)(v33 & 0xC0) < 0;
					v35 = v34 - v19;
					if (v13)
					{
						v37 = *(DWORD*)v28;
						if ((unsigned __int16)*(DWORD*)v28 == -2017)
						{
							result = g_data.dword_1000E06C(v39, v40);
						}
						else
						{
							v38 = (WORD*)(2 * v19);
							while (v35)
							{
								*v38 = v37;
								++v38;
								--v35;
							}
							result = g_data.dword_1000E06C(v39, v40);
						}
					}
					else
					{
						do
						{
							v36 = *(DWORD*)v28;
							v28 += 2;
							*(WORD*)(2 * v19++) = v36;
							--v35;
						} while (v35);
						result = g_data.dword_1000E06C(v39, v40);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v23 < v24)
				{
					v25 = *v23;
					v26 = v23 + 1;
					if (v25 < 0)
					{
						v30 = v25 & 0x7F;
						v31 = *v26;
						v23 = (char *)v26 + 2;
						if ((WORD)v31 == -2017)
						{
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
						else
						{
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
							{
								v32 = v19;
								v19 = g_data.dword_1000E05C;
								v29 = (v32 - g_data.dword_1000E05C) | 0x80;
								v28 = v23 - 1;
								goto LABEL_26;
							}
						}
					}
					else
					{
						v23 = (char *)v26 + (unsigned __int8)v25 + (unsigned __int8)v25;
						v19 += (unsigned __int8)v25;
						if (v19 > g_data.dword_1000E05C)
						{
							v27 = v19 - g_data.dword_1000E05C;
							v19 -= v19 - g_data.dword_1000E05C;
							v28 = &v23[-v27];
							v29 = v27;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v8 = (WORD*)v24;
			v19 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_38:
				v19 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: original signature is "int __usercall sub_1000687D@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8, int a9)".
int sub_1000687D(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9)
{
	int v9; // eax@1
	unsigned int v10; // ebp@1
	int v11; // edx@1
	WORD*v12; // esi@1
	int result; // eax@1
	int v14; // edx@1
	int v15; // edx@2
	bool v16; // zf@2
	bool v17; // sf@2
	unsigned __int8 v18; // of@2
	int v19; // ecx@3
	int v20; // edx@5
	unsigned int v21; // edi@7
	unsigned int v22; // eax@7
	int v23; // edx@7
	unsigned int v24; // edi@7
	unsigned int v25; // eax@9
	bool v26; // cf@11
	unsigned __int16 v27; // ax@13
	BYTE *v28; // esi@13
	unsigned __int8 v29; // al@15
	BYTE *v30; // esi@15
	int v31; // ecx@17
	BYTE *v32; // esi@17
	char v33; // al@17
	int v34; // ecx@18
	char v35; // al@18
	char v36; // cl@22
	char v37; // cl@26
	unsigned int v38; // eax@26
	int v39; // ecx@28
	int v40; // eax@30
	unsigned int v41; // eax@30
	int v42; // edx@30
	unsigned int v43; // eax@30
	unsigned int v44; // eax@38
	int v45; // edx@40
	unsigned int v46; // eax@40
	__int16 v47; // [sp-4h] [bp-4h]@30
	unsigned int v48; // [sp-4h] [bp-4h]@40
	int v49; // [sp+8h] [bp+8h]@1
	int v50; // [sp+Ch] [bp+Ch]@1

	v9 = (unsigned __int16)g_result.greenMask << 16;
	LOWORD(v9) = g_result.blueMask | g_result.redMask;
	g_data.dword_1000E084 = v9;
	g_data.dword_1000E088 = v9 | 2 * v9;
	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v10 = a2 << 16;
	LOWORD(v10) = 32 * (a7 + 1088);
	v49 = *(WORD*)a9 + a5;
	v50 = *(WORD*)(a9 + 2) + a6;
	v11 = *(WORD*)(a9 + 4) + 1;
	v12 = (WORD*)(a9 + 9);
	g_data.dword_1000E09A = *(WORD*)(a9 + 6);
	g_data.dword_1000E064 = v11;
	result = LOWORD(g_result.screen.top);
	v14 = v50 - LOWORD(g_result.screen.top);
	if (v50 < LOWORD(g_result.screen.top))
	{
		v50 = LOWORD(g_result.screen.top);
		v15 = -v14;
		v18 = __OFSUB__(g_data.dword_1000E09A, v15);
		v16 = g_data.dword_1000E09A == v15;
		v17 = g_data.dword_1000E09A - v15 < 0;
		g_data.dword_1000E09A -= v15;
		if ((unsigned __int8)(v17 ^ v18) | v16)
			return result;
		v19 = v15;
		do
		{
			LOWORD(result) = *v12;
			v12 = (WORD*)((char *)v12 + result + 2);
			--v19;
		} while (v19);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v20 = v50 + g_data.dword_1000E09A - result;
	if (v50 + g_data.dword_1000E09A <= result
		|| (v18 = __OFSUB__(g_data.dword_1000E09A, v20),
			v16 = g_data.dword_1000E09A == v20,
			v17 = g_data.dword_1000E09A - v20 < 0,
			g_data.dword_1000E09A -= v20,
			!((unsigned __int8)(v17 ^ v18) | v16)))
	{
		v21 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v22 = (unsigned int)(v50 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v21 + v22 + (unsigned __int16)g_data.smallRect.Left;
		v23 = v21 + (unsigned __int16)g_data.smallRect.Right + v22 + 1;
		g_data.dword_1000E060 = v21 + (unsigned __int16)g_data.smallRect.Right + v22 + 1;
		v24 = v49 + v22 + v21;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10006A8E;
		if (g_data.dword_1000E064 + v24 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10006A9A;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v25 = v50 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v50 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v25 = 0;
		v26 = g_data.dword_1000E09A < v25;
		v16 = g_data.dword_1000E09A == v25;
		g_data.dword_1000E09A -= v25;
		if (v26 || v16)
			goto LABEL_47;
		g_data.dword_1000E09E = v25;
		while (1)
		{
			g_data.dword_1000E07C = v24;
			v27 = *v12;
			v28 = v12 + 1;
			g_data.dword_1000E080 = (int)&v28[v27];
			if (v24 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v24 < g_data.dword_1000E060 && (unsigned int)v28 < g_data.dword_1000E080)
				{
					v33 = *v28;
					v32 = v28 + 1;
				LABEL_26:
					v37 = v33;
					v38 = v24 + (v33 & 0x7F);
					if (v38 > g_data.dword_1000E060)
						v38 = g_data.dword_1000E060;
					v17 = (char)(v37 & 0xC0) < 0;
					v39 = v38 - v24;
					if (v17)
					{
						if (*v32)
						{
							v44 = *(DWORD*)(a8 + 4 * *v32);
							do
							{
								while (*(DWORD*)(2 * v24 + 0x12CA46) < v10)
								{
									LOWORD(v23) = *(WORD*)(2 * v24);
									v45 = v23 << 16;
									LOWORD(v45) = *(WORD*)(2 * v24);
									v23 = g_data.dword_1000E084 & v45;
									v48 = v44;
									v46 = v44 >> 19;
									if ((BYTE)v46 != 31)
									{
										v23 = g_data.dword_1000E084 & (v23 * v46 >> 5) | ((g_data.dword_1000E084 & (v23 * v46 >> 5)) >> 16);
										*(WORD*)(2 * v24) = v48 + v23;
									}
									v44 = v48;
									++v24;
									if (!--v39)
										return g_data.dword_1000E06C(v49, v50);
								}
								++v24;
								--v39;
							} while (v39);
							result = g_data.dword_1000E06C(v49, v50);
						}
						else
						{
							result = g_data.dword_1000E06C(v49, v50);
						}
					}
					else
					{
						do
						{
							while (*(DWORD*)(2 * v24 + 0x12CA46) < v10)
							{
								v40 = *v32++;
								v41 = *(DWORD*)(a8 + 4 * v40);
								LOWORD(v23) = *(WORD*)(2 * v24);
								v42 = v23 << 16;
								LOWORD(v42) = *(WORD*)(2 * v24);
								v23 = g_data.dword_1000E084 & v42;
								v47 = v41;
								v43 = v41 >> 19;
								if ((BYTE)v43 != 31)
								{
									v23 = g_data.dword_1000E084 & (v23 * v43 >> 5) | ((g_data.dword_1000E084 & (v23 * v43 >> 5)) >> 16);
									*(WORD*)(2 * v24) = v47 + v23;
								}
								++v24;
								if (!--v39)
									return g_data.dword_1000E06C(v49, v50);
							}
							++v32;
							++v24;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v49, v50);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v28 < g_data.dword_1000E080)
				{
					v29 = *v28;
					v30 = v28 + 1;
					if ((v29 & 0x80u) != 0)
					{
						v34 = v29 & 0x7F;
						v35 = *v30;
						v28 = v30 + 1;
						if (v35)
						{
							v24 += v34;
							if (v24 > g_data.dword_1000E05C)
							{
								v36 = v24;
								v24 = g_data.dword_1000E05C;
								v33 = (v36 - g_data.dword_1000E05C) | 0x80;
								v32 = v28 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v24 += v34;
							if (v24 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v28 = &v30[v29];
						v24 += v29;
						if (v24 > g_data.dword_1000E05C)
						{
							v31 = v24 - g_data.dword_1000E05C;
							v24 -= v24 - g_data.dword_1000E05C;
							v32 = &v28[-v31];
							v33 = v31;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v12 = (WORD*)g_data.dword_1000E080;
			v24 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			v23 = g_data.dword_1000E09A-- - 1;
			if (!g_data.dword_1000E09A)
			{
			LABEL_47:
				v24 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: "int __usercall sub_10006C48@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8, int a9)".
int sub_10006C48(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9)
{
	unsigned int v9; // ebp@1
	int v10; // edx@1
	WORD *v11; // esi@1
	int result; // eax@1
	int v13; // edx@1
	int v14; // edx@2
	bool v15; // sf@2
	unsigned __int8 v16; // of@2
	int v17; // ecx@3
	int v18; // edx@5
	unsigned int v19; // edi@7
	unsigned int v20; // eax@7
	unsigned int v21; // edi@7
	unsigned int v22; // eax@9
	bool v23; // cf@11
	unsigned __int16 v24; // ax@13
	char *v25; // esi@13
	char v26; // al@15
	int v27; // ecx@16
	int v28; // ecx@17
	char *v29; // esi@17
	char v30; // al@17
	int v31; // ecx@19
	char v32; // al@22
	char v33; // cl@23
	char v34; // cl@27
	unsigned int v35; // eax@27
	bool v36; // zf@29
	unsigned __int8 v37; // pf@29
	char v38; // cl@29
	int v39; // ecx@29
	int v40; // eax@32
	int v41; // eax@37
	int v42; // eax@43
	int v43; // [sp+8h] [bp+8h]@1
	int v44; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v9 = a2 << 16;
	LOWORD(v9) = 32 * (a7 + 1088);
	v43 = *(WORD *)a9 + a5;
	v44 = *(WORD *)(a9 + 2) + a6;
	v10 = *(WORD *)(a9 + 4) + 1;
	v11 = (WORD *)(a9 + 9);
	g_data.dword_1000E09A = *(WORD *)(a9 + 6);
	g_data.dword_1000E064 = v10;
	result = LOWORD(g_result.screen.top);
	v13 = v44 - LOWORD(g_result.screen.top);
	if (v44 < LOWORD(g_result.screen.top))
	{
		v44 = LOWORD(g_result.screen.top);
		v14 = -v13;
		v16 = __OFSUB__(g_data.dword_1000E09A, v14);
		v36 = g_data.dword_1000E09A == v14;
		v15 = g_data.dword_1000E09A - v14 < 0;
		g_data.dword_1000E09A -= v14;
		if ((unsigned __int8)(v15 ^ v16) | v36)
			return result;
		v17 = v14;
		do
		{
			LOWORD(result) = *v11;
			v11 = (WORD *)((char *)v11 + result + 2);
			--v17;
		} while (v17);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v18 = v44 + g_data.dword_1000E09A - result;
	if (v44 + g_data.dword_1000E09A <= result
		|| (v16 = __OFSUB__(g_data.dword_1000E09A, v18),
			v36 = g_data.dword_1000E09A == v18,
			v15 = g_data.dword_1000E09A - v18 < 0,
			g_data.dword_1000E09A -= v18,
			!((unsigned __int8)(v15 ^ v16) | v36)))
	{
		v19 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v20 = (unsigned int)(v44 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v19 + v20 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v19 + (unsigned __int16)g_data.smallRect.Right + v20 + 1;
		v21 = v43 + v20 + v19;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10006E3A;
		if (g_data.dword_1000E064 + v21 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10006E46;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v22 = v44 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v44 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v22 = 0;
		v23 = g_data.dword_1000E09A < v22;
		v36 = g_data.dword_1000E09A == v22;
		g_data.dword_1000E09A -= v22;
		if (v23 || v36)
			goto LABEL_50;
		g_data.dword_1000E09E = v22;
		while (1)
		{
			g_data.dword_1000E07C = v21;
			v24 = *v11;
			v25 = (char *)(v11 + 1);
			g_data.dword_1000E080 = (int)&v25[v24];
			if (v21 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v21 < g_data.dword_1000E060 && (unsigned int)v25 < g_data.dword_1000E080)
				{
					v30 = *v25;
					v29 = v25 + 1;
				LABEL_27:
					v34 = v30;
					v35 = v21 + (v30 & 0x3F);
					if (v35 > g_data.dword_1000E060)
						v35 = g_data.dword_1000E060;
					v38 = v34 & 0xC0;
					v36 = v38 == 0;
					v37 = __SETP__(v38, 0);
					v15 = v38 < 0;
					v39 = v35 - v21;
					if (v15)
					{
						if (v37)
						{
							result = g_data.dword_1000E06C(v43, v44);
						}
						else
						{
							v42 = *(DWORD *)(a8 + 2 * (unsigned __int8)*v29);
							do
							{
								while (*(DWORD*)(2 * v21 + 0x12CA46) < v9)
								{
									*(WORD *)(2 * v21++) = v42;
									if (!--v39)
										return g_data.dword_1000E06C(v43, v44);
								}
								++v21;
								--v39;
							} while (v39);
							result = g_data.dword_1000E06C(v43, v44);
						}
					}
					else if (v36)
					{
						do
						{
							while (*(DWORD *)(2 * v21 + 0x12CA46) < v9)
							{
								v40 = (unsigned __int8)*v29++;
								*(WORD *)(2 * v21++) = *(DWORD*)(a8 + 2 * v40);
								if (!--v39)
									return g_data.dword_1000E06C(v43, v44);
							}
							++v29;
							++v21;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v43, v44);
					}
					else
					{
						do
						{
							while (*(DWORD *)(2 * v21 + 0x12CA46) < v9)
							{
								v41 = (unsigned __int8)*v29++;
								*(WORD *)(2 * v21) = (*(DWORD*)(2 * v21)
									+ *(DWORD *)(a8 + 2 * v41)
									- (g_result.dword_1000E460 & (unsigned int)(*(DWORD *)(2 * v21) ^ *(DWORD *)(a8 + 2 * v41)))) >> 1;
								++v21;
								if (!--v39)
									return g_data.dword_1000E06C(v43, v44);
							}
							++v29;
							++v21;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v43, v44);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v25 < g_data.dword_1000E080)
				{
					v26 = *v25++;
					if (v26 < 0)
					{
						v31 = v26 & 0x3F;
						if (v26 & 0x40)
						{
							v21 += v31;
							if (v21 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v32 = *v25++;
							v21 += v31;
							if (v21 > g_data.dword_1000E05C)
							{
								v33 = v21;
								v21 = g_data.dword_1000E05C;
								v30 = (v33 - g_data.dword_1000E05C) | 0x80;
								v29 = v25 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v27 = v26 & 0x3F;
						v25 += v27;
						v21 += v27;
						if (v21 > g_data.dword_1000E05C)
						{
							v28 = v21 - g_data.dword_1000E05C;
							v21 -= v21 - g_data.dword_1000E05C;
							v29 = &v25[-v28];
							v36 = (v26 & 0x40) == 0;
							v30 = v28;
							if (!v36)
								v30 = v28 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v11 = (WORD *)g_data.dword_1000E080;
			v21 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_50:
				v21 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: original sinature is "int __usercall sub_10006FE2@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8, int a9)".
int sub_10006FE2(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9)
{
	unsigned int v9; // ebp@1
	int v10; // edx@1
	WORD*v11; // esi@1
	int result; // eax@1
	int v13; // edx@1
	int v14; // edx@2
	bool v15; // sf@2
	unsigned __int8 v16; // of@2
	int v17; // ecx@3
	int v18; // edx@5
	unsigned int v19; // edi@7
	unsigned int v20; // eax@7
	unsigned int v21; // edi@7
	unsigned int v22; // eax@9
	bool v23; // cf@11
	unsigned __int16 v24; // ax@13
	char *v25; // esi@13
	char v26; // al@15
	int v27; // ecx@16
	int v28; // ecx@17
	char *v29; // esi@17
	char v30; // al@17
	int v31; // ecx@19
	char v32; // al@22
	char v33; // cl@23
	char v34; // cl@27
	unsigned int v35; // eax@27
	bool v36; // zf@29
	unsigned __int8 v37; // pf@29
	char v38; // cl@29
	int v39; // ecx@29
	int v40; // eax@33
	int v41; // eax@39
	int v42; // eax@45
	int v43; // [sp+8h] [bp+8h]@1
	int v44; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v9 = a2 << 16;
	LOWORD(v9) = 32 * (a7 + 1088);
	v43 = *(WORD*)a9 + a5;
	v44 = *(WORD*)(a9 + 2) + a6;
	dword_1000E054 = v44;
	v10 = *(WORD*)(a9 + 4) + 1;
	v11 = (WORD*)(a9 + 9);
	g_data.dword_1000E09A = *(WORD*)(a9 + 6);
	g_data.dword_1000E064 = v10;
	result = LOWORD(g_result.screen.top);
	v13 = v44 - LOWORD(g_result.screen.top);
	if (v44 < LOWORD(g_result.screen.top))
	{
		v44 = LOWORD(g_result.screen.top);
		v14 = -v13;
		dword_1000E054 += v14;
		v16 = __OFSUB__(g_data.dword_1000E09A, v14);
		v36 = g_data.dword_1000E09A == v14;
		v15 = g_data.dword_1000E09A - v14 < 0;
		g_data.dword_1000E09A -= v14;
		if ((unsigned __int8)(v15 ^ v16) | v36)
			return result;
		v17 = v14;
		do
		{
			LOWORD(result) = *v11;
			v11 = (WORD*)((char *)v11 + result + 2);
			--v17;
		} while (v17);
	}
	dword_1000E054 &= 1u;
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v18 = v44 + g_data.dword_1000E09A - result;
	if (v44 + g_data.dword_1000E09A <= result
		|| (v16 = __OFSUB__(g_data.dword_1000E09A, v18),
			v36 = g_data.dword_1000E09A == v18,
			v15 = g_data.dword_1000E09A - v18 < 0,
			g_data.dword_1000E09A -= v18,
			!((unsigned __int8)(v15 ^ v16) | v36)))
	{
		v19 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v20 = (unsigned int)(v44 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v19 + v20 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v19 + (unsigned __int16)g_data.smallRect.Right + v20 + 1;
		v21 = v43 + v20 + v19;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_100071F1;
		if (g_data.dword_1000E064 + v21 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_100071FD;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v22 = v44 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v44 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v22 = 0;
		v23 = g_data.dword_1000E09A < v22;
		v36 = g_data.dword_1000E09A == v22;
		g_data.dword_1000E09A -= v22;
		if (v23 || v36)
			goto LABEL_53;
		g_data.dword_1000E09E = v22;
		while (1)
		{
			dword_1000E054 ^= 1u;
			g_data.dword_1000E07C = v21;
			v24 = *v11;
			v25 = (char *)(v11 + 1);
			g_data.dword_1000E080 = (int)&v25[v24];
			if (v21 >= g_data.dword_1000E05C)
			{
			LABEL_24:
				if (v21 < g_data.dword_1000E060 && (unsigned int)v25 < g_data.dword_1000E080)
				{
					v30 = *v25;
					v29 = v25 + 1;
				LABEL_27:
					v34 = v30;
					v35 = v21 + (v30 & 0x3F);
					if (v35 > g_data.dword_1000E060)
						v35 = g_data.dword_1000E060;
					v38 = v34 & 0xC0;
					v36 = v38 == 0;
					v37 = __SETP__(v38, 0);
					v15 = v38 < 0;
					v39 = v35 - v21;
					if (v15)
					{
						if (v37)
						{
							result = g_data.dword_1000E06C(v43, v44);
						}
						else
						{
							v42 = *(DWORD*)(a8 + 2 * (unsigned __int8)*v29);
							do
							{
								while ((v21 ^ dword_1000E054) & 1 || *(DWORD*)(2 * v21 + 0x12CA46) < v9)
								{
									*(WORD*)(2 * v21++) = v42;
									if (!--v39)
										return g_data.dword_1000E06C(v43, v44);
								}
								++v21;
								--v39;
							} while (v39);
							result = g_data.dword_1000E06C(v43, v44);
						}
					}
					else if (v36)
					{
						do
						{
							while ((v21 ^ dword_1000E054) & 1 || *(DWORD*)(2 * v21 + 0x12CA46) < v9)
							{
								v40 = (unsigned __int8)*v29++;
								*(WORD*)(2 * v21++) = *(DWORD*)(a8 + 2 * v40);
								if (!--v39)
									return g_data.dword_1000E06C(v43, v44);
							}
							++v29;
							++v21;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v43, v44);
					}
					else
					{
						do
						{
							while ((v21 ^ dword_1000E054) & 1 || *(DWORD*)(2 * v21 + 0x12CA46) < v9)
							{
								v41 = (unsigned __int8)*v29++;
								*(WORD*)(2 * v21) = (*(DWORD*)(2 * v21)
									+ *(DWORD*)(a8 + 2 * v41)
									- (g_result.dword_1000E460 & (unsigned int)(*(DWORD*)(2 * v21) ^ *(DWORD*)(a8 + 2 * v41)))) >> 1;
								++v21;
								if (!--v39)
									return g_data.dword_1000E06C(v43, v44);
							}
							++v29;
							++v21;
							--v39;
						} while (v39);
						result = g_data.dword_1000E06C(v43, v44);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v25 < g_data.dword_1000E080)
				{
					v26 = *v25++;
					if (v26 < 0)
					{
						v31 = v26 & 0x3F;
						if (v26 & 0x40)
						{
							v21 += v31;
							if (v21 > g_data.dword_1000E05C)
								goto LABEL_24;
						}
						else
						{
							v32 = *v25++;
							v21 += v31;
							if (v21 > g_data.dword_1000E05C)
							{
								v33 = v21;
								v21 = g_data.dword_1000E05C;
								v30 = (v33 - g_data.dword_1000E05C) | 0x80;
								v29 = v25 - 1;
								goto LABEL_27;
							}
						}
					}
					else
					{
						v27 = v26 & 0x3F;
						v25 += v27;
						v21 += v27;
						if (v21 > g_data.dword_1000E05C)
						{
							v28 = v21 - g_data.dword_1000E05C;
							v21 -= v21 - g_data.dword_1000E05C;
							v29 = &v25[-v28];
							v36 = (v26 & 0x40) == 0;
							v30 = v28;
							if (!v36)
								v30 = v28 | 0x40;
							goto LABEL_27;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v11 = (WORD*)g_data.dword_1000E080;
			v21 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_53:
				v21 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: "int __usercall sub_100073B2@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7, int a8)".
int sub_100073B2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
	int v8; // edx@1
	WORD*v9; // esi@1
	int result; // eax@1
	int v11; // edx@1
	int v12; // edx@2
	bool v13; // zf@2
	bool v14; // sf@2
	unsigned __int8 v15; // of@2
	int v16; // ecx@3
	int v17; // edx@5
	unsigned int v18; // edi@7
	unsigned int v19; // eax@7
	unsigned int v20; // edi@7
	unsigned int v21; // eax@9
	bool v22; // cf@11
	unsigned __int16 v23; // ax@13
	char *v24; // esi@13
	unsigned int v25; // ebp@13
	unsigned __int8 v26; // al@15
	char v27; // cl@17
	char v28; // al@17
	char v29; // cl@22
	unsigned int v30; // eax@22
	int v31; // ecx@24
	int v32; // eax@25
	__int16 v33; // dx@26
	int v34; // [sp+8h] [bp+8h]@1
	int v35; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v34 = *(WORD *)a8 + a5;
	v35 = *(WORD *)(a8 + 2) + a6;
	v8 = *(WORD *)(a8 + 4) + 1;
	v9 = (WORD *)(a8 + 9);
	g_data.dword_1000E09A = *(WORD *)(a8 + 6);
	g_data.dword_1000E064 = v8;
	result = LOWORD(g_result.screen.top);
	v11 = v35 - LOWORD(g_result.screen.top);
	if (v35 < LOWORD(g_result.screen.top))
	{
		v35 = LOWORD(g_result.screen.top);
		v12 = -v11;
		v15 = __OFSUB__(g_data.dword_1000E09A, v12);
		v13 = g_data.dword_1000E09A == v12;
		v14 = g_data.dword_1000E09A - v12 < 0;
		g_data.dword_1000E09A -= v12;
		if ((unsigned __int8)(v14 ^ v15) | v13)
			return result;
		v16 = v12;
		do
		{
			LOWORD(result) = *v9;
			v9 = (WORD *)((char *)v9 + result + 2);
			--v16;
		} while (v16);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v17 = v35 + g_data.dword_1000E09A - result;
	if (v35 + g_data.dword_1000E09A <= result
		|| (v15 = __OFSUB__(g_data.dword_1000E09A, v17),
			v13 = g_data.dword_1000E09A == v17,
			v14 = g_data.dword_1000E09A - v17 < 0,
			g_data.dword_1000E09A -= v17,
			!((unsigned __int8)(v14 ^ v15) | v13)))
	{
		v18 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v19 = (unsigned int)(v35 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v18 + v19 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v18 + (unsigned __int16)g_data.smallRect.Right + v19 + 1;
		v20 = v34 + v19 + v18;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10007556;
		if (g_data.dword_1000E064 + v20 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10007562;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v21 = v35 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v35 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v21 = 0;
		v22 = g_data.dword_1000E09A < v21;
		v13 = g_data.dword_1000E09A == v21;
		g_data.dword_1000E09A -= v21;
		if (v22 || v13)
			goto LABEL_31;
		g_data.dword_1000E09E = v21;
		while (1)
		{
			g_data.dword_1000E07C = v20;
			v23 = *v9;
			v24 = (char *)(v9 + 1);
			v25 = (unsigned int)&v24[v23];
			if (v20 >= g_data.dword_1000E05C)
			{
			LABEL_19:
				if (v20 < g_data.dword_1000E060 && (unsigned int)v24 < v25)
				{
					v28 = *v24;
				LABEL_22:
					v29 = v28;
					v30 = v20 + (v28 & 0x7F);
					if (v30 > g_data.dword_1000E060)
						v30 = g_data.dword_1000E060;
					v14 = (char)(v29 & 0xC0) < 0;
					v31 = v30 - v20;
					if (v14)
					{
						result = g_data.dword_1000E06C(v34, v35);
					}
					else
					{
						do
						{
							v32 = *(DWORD *)(2 * v20 + 0x12CA48);
							if (!(v32 & 0x8007))
							{
								v33 = g_result.dword_1000E480 + (((unsigned int)g_result.dword_1000E468 & *(DWORD *)(2 * v20)) >> 1);
								*(DWORD *)(2 * v20 + 0x12CA48) = a7 | v32;
								*(WORD *)(2 * v20) = v33;
							}
							++v20;
							--v31;
						} while (v31);
						result = g_data.dword_1000E06C(v34, v35);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v24 < v25)
				{
					v26 = *v24++;
					if ((v26 & 0x80u) != 0)
					{
						v20 += v26 & 0x7F;
						if (v20 > g_data.dword_1000E05C)
							goto LABEL_19;
					}
					else
					{
						v20 += v26;
						if (v20 > g_data.dword_1000E05C)
						{
							v27 = v20 - g_data.dword_1000E05C;
							v20 -= v20 - g_data.dword_1000E05C;
							v28 = v27;
							goto LABEL_22;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v9 = (WORD *)v25;
			v20 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_31:
				v20 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// "int __usercall sub_10007678@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, int a7, int a8)"
int sub_10007678(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
	int v8; // edx@1
	WORD *v9; // esi@1
	int result; // eax@1
	int v11; // edx@1
	int v12; // edx@2
	bool v13; // zf@2
	bool v14; // sf@2
	unsigned __int8 v15; // of@2
	int v16; // ecx@3
	int v17; // edx@5
	unsigned int v18; // edi@7
	unsigned int v19; // eax@7
	unsigned int v20; // edi@7
	unsigned int v21; // eax@9
	bool v22; // cf@11
	unsigned __int16 v23; // ax@13
	char *v24; // esi@13
	unsigned int v25; // ebp@13
	unsigned __int8 v26; // al@15
	char v27; // cl@17
	char v28; // al@17
	char v29; // cl@22
	unsigned int v30; // eax@22
	int v31; // ecx@24
	int v32; // eax@25
	__int16 v33; // dx@26
	int v34; // [sp+8h] [bp+8h]@1
	int v35; // [sp+Ch] [bp+Ch]@1

	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	v34 = *(WORD *)a8 + a5;
	v35 = *(WORD *)(a8 + 2) + a6;
	v8 = *(WORD *)(a8 + 4) + 1;
	v9 = (WORD *)(a8 + 9);
	g_data.dword_1000E09A = *(WORD *)(a8 + 6);
	g_data.dword_1000E064 = v8;
	result = LOWORD(g_result.screen.top);
	v11 = v35 - LOWORD(g_result.screen.top);
	if (v35 < LOWORD(g_result.screen.top))
	{
		v35 = LOWORD(g_result.screen.top);
		v12 = -v11;
		v15 = __OFSUB__(g_data.dword_1000E09A, v12);
		v13 = g_data.dword_1000E09A == v12;
		v14 = g_data.dword_1000E09A - v12 < 0;
		g_data.dword_1000E09A -= v12;
		if ((unsigned __int8)(v14 ^ v15) | v13)
			return result;
		v16 = v12;
		do
		{
			LOWORD(result) = *v9;
			v9 = (WORD *)((char *)v9 + result + 2);
			--v16;
		} while (v16);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v17 = v35 + g_data.dword_1000E09A - result;
	if (v35 + g_data.dword_1000E09A <= result
		|| (v15 = __OFSUB__(g_data.dword_1000E09A, v17),
			v13 = g_data.dword_1000E09A == v17,
			v14 = g_data.dword_1000E09A - v17 < 0,
			g_data.dword_1000E09A -= v17,
			!((unsigned __int8)(v14 ^ v15) | v13)))
	{
		v18 = ((unsigned int)g_result.a_buffer2 + g_result.offset) >> 1;
		v19 = (unsigned int)(v35 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v18 + v19 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v18 + (unsigned __int16)g_data.smallRect.Right + v19 + 1;
		v20 = v34 + v19 + v18;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000781C;
		if (g_data.dword_1000E064 + v20 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10007828;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v21 = v35 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v35 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v21 = 0;
		v22 = g_data.dword_1000E09A < v21;
		v13 = g_data.dword_1000E09A == v21;
		g_data.dword_1000E09A -= v21;
		if (v22 || v13)
			goto LABEL_31;
		g_data.dword_1000E09E = v21;
		while (1)
		{
			g_data.dword_1000E07C = v20;
			v23 = *v9;
			v24 = (char *)(v9 + 1);
			v25 = (unsigned int)&v24[v23];
			if (v20 >= g_data.dword_1000E05C)
			{
			LABEL_19:
				if (v20 < g_data.dword_1000E060 && (unsigned int)v24 < v25)
				{
					v28 = *v24;
				LABEL_22:
					v29 = v28;
					v30 = v20 + (v28 & 0x7F);
					if (v30 > g_data.dword_1000E060)
						v30 = g_data.dword_1000E060;
					v14 = (char)(v29 & 0xC0) < 0;
					v31 = v30 - v20;
					if (v14)
					{
						result = g_data.dword_1000E06C(v34, v35);
					}
					else
					{
						do
						{
							v32 = *(DWORD*)(2 * v20 + 0x96524);
							if (!(v32 & 0x8007))
							{
								v33 = g_result.dword_1000E480 + (((unsigned int)g_result.dword_1000E468 & *(DWORD*)(2 * v20)) >> 1);
								*(DWORD*)(2 * v20 + 0x96524) = a7 | v32;
								*(WORD*)(2 * v20) = v33;
							}
							++v20;
							--v31;
						} while (v31);
						result = g_data.dword_1000E06C(v34, v35);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v24 < v25)
				{
					v26 = *v24++;
					if ((v26 & 0x80u) != 0)
					{
						v20 += v26 & 0x7F;
						if (v20 > g_data.dword_1000E05C)
							goto LABEL_19;
					}
					else
					{
						v20 += v26;
						if (v20 > g_data.dword_1000E05C)
						{
							v27 = v20 - g_data.dword_1000E05C;
							v20 -= v20 - g_data.dword_1000E05C;
							v28 = v27;
							goto LABEL_22;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v9 = (WORD *)v25;
			v20 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_31:
				v20 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: "int __usercall sub_10007938@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8)"
int sub_10007938(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8)
{
	int v8; // eax@1
	unsigned int v9; // ebp@1
	int v10; // edx@1
	WORD*v11; // esi@1
	int result; // eax@1
	int v13; // edx@1
	int v14; // edx@2
	bool v15; // zf@2
	bool v16; // sf@2
	unsigned __int8 v17; // of@2
	int v18; // ecx@3
	int v19; // edx@5
	unsigned int v20; // edi@7
	unsigned int v21; // eax@7
	unsigned int v22; // edi@7
	unsigned int v23; // eax@9
	bool v24; // cf@11
	unsigned __int16 v25; // ax@13
	BYTE *v26; // esi@13
	unsigned __int8 v27; // al@15
	BYTE *v28; // esi@15
	int v29; // ecx@17
	char *v30; // esi@17
	char v31; // al@17
	int v32; // ecx@18
	char v33; // al@18
	char v34; // cl@22
	char v35; // cl@26
	unsigned int v36; // eax@26
	int v37; // ecx@28
	char v38; // al@30
	int v39; // edx@30
	unsigned int v40; // eax@30
	int v41; // eax@34
	int v42; // edx@38
	int v43; // ST00_4@38
	unsigned int v44; // eax@38
	int v45; // [sp+8h] [bp+8h]@1
	int v46; // [sp+Ch] [bp+Ch]@1

	v8 = (unsigned __int16)g_result.greenMask << 16;
	LOWORD(v8) = g_result.blueMask | g_result.redMask;
	g_data.dword_1000E084 = v8;
	g_data.dword_1000E088 = v8 | 2 * v8;
	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v9 = a2 << 16;
	LOWORD(v9) = 32 * (a7 + 1088);
	v45 = *(WORD*)a8 + a5;
	v46 = *(WORD*)(a8 + 2) + a6;
	v10 = *(WORD*)(a8 + 4) + 1;
	v11 = (WORD*)(a8 + 9);
	g_data.dword_1000E09A = *(WORD*)(a8 + 6);
	g_data.dword_1000E064 = v10;
	result = LOWORD(g_result.screen.top);
	v13 = v46 - LOWORD(g_result.screen.top);
	if (v46 < LOWORD(g_result.screen.top))
	{
		v46 = LOWORD(g_result.screen.top);
		v14 = -v13;
		v17 = __OFSUB__(g_data.dword_1000E09A, v14);
		v15 = g_data.dword_1000E09A == v14;
		v16 = g_data.dword_1000E09A - v14 < 0;
		g_data.dword_1000E09A -= v14;
		if ((unsigned __int8)(v16 ^ v17) | v15)
			return result;
		v18 = v14;
		do
		{
			LOWORD(result) = *v11;
			v11 = (WORD*)((char *)v11 + result + 2);
			--v18;
		} while (v18);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v19 = v46 + g_data.dword_1000E09A - result;
	if (v46 + g_data.dword_1000E09A <= result
		|| (v17 = __OFSUB__(g_data.dword_1000E09A, v19),
			v15 = g_data.dword_1000E09A == v19,
			v16 = g_data.dword_1000E09A - v19 < 0,
			g_data.dword_1000E09A -= v19,
			!((unsigned __int8)(v16 ^ v17) | v15)))
	{
		v20 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v21 = (unsigned int)(v46 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v20 + v21 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v20 + (unsigned __int16)g_data.smallRect.Right + v21 + 1;
		v22 = v45 + v21 + v20;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10007B4A;
		if (g_data.dword_1000E064 + v22 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10007B56;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v23 = v46 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v46 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v23 = 0;
		v24 = g_data.dword_1000E09A < v23;
		v15 = g_data.dword_1000E09A == v23;
		g_data.dword_1000E09A -= v23;
		if (v24 || v15)
			goto LABEL_43;
		g_data.dword_1000E09E = v23;
		while (1)
		{
			g_data.dword_1000E07C = v22;
			v25 = *v11;
			v26 = v11 + 1;
			g_data.dword_1000E080 = (int)&v26[v25];
			if (v22 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v22 < g_data.dword_1000E060 && (unsigned int)v26 < g_data.dword_1000E080)
				{
					v31 = *v26;
					v30 = v26 + 1;
				LABEL_26:
					v35 = v31;
					v36 = v22 + (v31 & 0x7F);
					if (v36 > g_data.dword_1000E060)
						v36 = g_data.dword_1000E060;
					v16 = (char)(v35 & 0xC0) < 0;
					v37 = v36 - v22;
					if (v16)
					{
						LOBYTE(v41) = *v30;
						if (*v30)
						{
							v41 = (unsigned __int8)v41;
							do
							{
								while (*(DWORD*)(2 * v22 + 0x12CA46) < v9)
								{
									v42 = g_data.dword_1000E084 & ((*(WORD*)(2 * v22) << 16) | *(WORD*)(2 * v22));
									v43 = v41;
									LOBYTE(v41) = v41 & 0x1F;
									v44 = g_data.dword_1000E084 & (((g_data.dword_1000E084 - (g_data.dword_1000E088 & ((unsigned int)(v42 * v41) >> 4))) >> 5) | g_data.dword_1000E088 & ((unsigned int)(v42 * v41) >> 4));
									*(WORD*)(2 * v22++) = HIWORD(v44) | v44;
									v41 = v43;
									if (!--v37)
										return g_data.dword_1000E06C(v45, v46);
								}
								++v22;
								--v37;
							} while (v37);
							result = g_data.dword_1000E06C(v45, v46);
						}
						else
						{
							result = g_data.dword_1000E06C(v45, v46);
						}
					}
					else
					{
						do
						{
							while (*(DWORD*)(2 * v22 + 0x12CA46) < v9)
							{
								v38 = *v30++;
								v39 = g_data.dword_1000E084 & ((*(WORD*)(2 * v22) << 16) | *(WORD*)(2 * v22));
								v40 = g_data.dword_1000E084 & (((g_data.dword_1000E084 - (g_data.dword_1000E088 & (v39 * (v38 & 0x1Fu) >> 4))) >> 5) | g_data.dword_1000E088 & (v39 * (v38 & 0x1Fu) >> 4));
								*(WORD*)(2 * v22++) = HIWORD(v40) | v40;
								if (!--v37)
									return g_data.dword_1000E06C(v45, v46);
							}
							++v30;
							++v22;
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v45, v46);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v26 < g_data.dword_1000E080)
				{
					v27 = *v26;
					v28 = v26 + 1;
					if ((v27 & 0x80u) != 0)
					{
						v32 = v27 & 0x7F;
						v33 = *v28;
						v26 = v28 + 1;
						if (v33)
						{
							v22 += v32;
							if (v22 > g_data.dword_1000E05C)
							{
								v34 = v22;
								v22 = g_data.dword_1000E05C;
								v31 = (v34 - g_data.dword_1000E05C) | 0x80;
								v30 = v26 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v22 += v32;
							if (v22 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v26 = &v28[v27];
						v22 += v27;
						if (v22 > g_data.dword_1000E05C)
						{
							v29 = v22 - g_data.dword_1000E05C;
							v22 -= v22 - g_data.dword_1000E05C;
							v30 = &v26[-v29];
							v31 = v29;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v11 = (WORD *)g_data.dword_1000E080;
			v22 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_43:
				v22 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: "int __usercall sub_10007D0C@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6, __int16 a7, int a8, int a9)"
int sub_10007D0C(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9)
{
	int v9; // eax@1
	unsigned int v10; // ebp@1
	int v11; // edx@1
	WORD*v12; // esi@1
	int result; // eax@1
	int v14; // edx@1
	int v15; // edx@2
	bool v16; // zf@2
	bool v17; // sf@2
	unsigned __int8 v18; // of@2
	int v19; // ecx@3
	int v20; // edx@5
	unsigned int v21; // edi@7
	unsigned int v22; // eax@7
	unsigned int v23; // edi@7
	unsigned int v24; // eax@9
	bool v25; // cf@11
	unsigned __int16 v26; // ax@13
	BYTE *v27; // esi@13
	unsigned __int8 v28; // al@15
	BYTE *v29; // esi@15
	int v30; // ecx@17
	BYTE *v31; // esi@17
	char v32; // al@17
	int v33; // ecx@18
	char v34; // al@18
	char v35; // cl@22
	char v36; // cl@26
	unsigned int v37; // eax@26
	int v38; // ecx@28
	int v39; // eax@30
	unsigned int v40; // eax@30
	int v41; // edx@30
	unsigned __int16 v42; // ax@30
	__int16 v43; // dx@30
	unsigned int v44; // eax@42
	int v45; // edx@44
	unsigned __int16 v46; // ax@44
	__int16 v47; // dx@44
	unsigned int v48; // [sp-4h] [bp-4h]@44
	int v49; // [sp+8h] [bp+8h]@1
	int v50; // [sp+Ch] [bp+Ch]@1

	v9 = (unsigned __int16)g_result.greenMask << 16;
	LOWORD(v9) = g_result.blueMask | g_result.redMask;
	g_data.dword_1000E084 = v9;
	g_data.dword_1000E088 = v9 | 2 * v9;
	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	g_data.smallRect.Left = g_result.screen.left;
	g_data.smallRect.Right = g_result.screen.right;
	g_data.smallRect.Top = g_result.screen.top;
	g_data.smallRect.Bottom = g_result.screen.bottom;
	LOWORD(a2) = 32 * (a7 + 1088);
	v10 = a2 << 16;
	LOWORD(v10) = 32 * (a7 + 1088);
	v49 = *(WORD *)a9 + a5;
	v50 = *(WORD *)(a9 + 2) + a6;
	v11 = *(WORD *)(a9 + 4) + 1;
	v12 = (WORD *)(a9 + 9);
	g_data.dword_1000E09A = *(WORD*)(a9 + 6);
	g_data.dword_1000E064 = v11;
	result = LOWORD(g_result.screen.top);
	v14 = v50 - LOWORD(g_result.screen.top);
	if (v50 < LOWORD(g_result.screen.top))
	{
		v50 = LOWORD(g_result.screen.top);
		v15 = -v14;
		v18 = __OFSUB__(g_data.dword_1000E09A, v15);
		v16 = g_data.dword_1000E09A == v15;
		v17 = g_data.dword_1000E09A - v15 < 0;
		g_data.dword_1000E09A -= v15;
		if ((unsigned __int8)(v17 ^ v18) | v16)
			return result;
		v19 = v15;
		do
		{
			LOWORD(result) = *v12;
			v12 = (WORD*)((char *)v12 + result + 2);
			--v19;
		} while (v19);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v20 = v50 + g_data.dword_1000E09A - result;
	if (v50 + g_data.dword_1000E09A <= result
		|| (v18 = __OFSUB__(g_data.dword_1000E09A, v20),
			v16 = g_data.dword_1000E09A == v20,
			v17 = g_data.dword_1000E09A - v20 < 0,
			g_data.dword_1000E09A -= v20,
			!((unsigned __int8)(v17 ^ v18) | v16)))
	{
		v21 = ((unsigned int)g_result.a_buffer1 + g_result.offset) >> 1;
		v22 = (unsigned int)(v50 * g_result.widthInBytes) >> 1;
		g_data.dword_1000E05C = v21 + v22 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = v21 + (unsigned __int16)g_data.smallRect.Right + v22 + 1;
		v23 = v49 + v22 + v21;
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10007F1D;
		if (g_data.dword_1000E064 + v23 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10007F29;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v24 = v50 + g_data.dword_1000E09A - g_result.surfaceHeight;
		if (v50 + g_data.dword_1000E09A < (unsigned int)g_result.surfaceHeight)
			v24 = 0;
		v25 = g_data.dword_1000E09A < v24;
		v16 = g_data.dword_1000E09A == v24;
		g_data.dword_1000E09A -= v24;
		if (v25 || v16)
			goto LABEL_55;
		g_data.dword_1000E09E = v24;
		while (1)
		{
			g_data.dword_1000E07C = v23;
			v26 = *v12;
			v27 = v12 + 1;
			g_data.dword_1000E080 = (int)&v27[v26];
			if (v23 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v23 < g_data.dword_1000E060 && (unsigned int)v27 < g_data.dword_1000E080)
				{
					v32 = *v27;
					v31 = v27 + 1;
				LABEL_26:
					v36 = v32;
					v37 = v23 + (v32 & 0x7F);
					if (v37 > g_data.dword_1000E060)
						v37 = g_data.dword_1000E060;
					v17 = (char)(v36 & 0xC0) < 0;
					v38 = v37 - v23;
					if (v17)
					{
						if (*v31)
						{
							v44 = *(DWORD *)(a8 + 2 * *v31);
							do
							{
								while (*(DWORD *)(2 * v23 + 0x12CA46) < v10)
								{
									v48 = v44;
									v44 = (unsigned __int16)v44;
									v45 = (unsigned __int16)v44 + *(WORD *)(2 * v23);
									LOWORD(v44) = *(WORD *)(2 * v23) ^ v44;
									v46 = g_result.dword_1000E464 & ((v45 ^ v44) >> 1);
									v47 = v45 - v46;
									if (v46 & (unsigned __int16)g_result.redMask)
										v47 |= g_result.redMask;
									if (v46 & (unsigned __int16)g_result.greenMask)
										v47 |= g_result.greenMask;
									if (v46 & (unsigned __int16)g_result.blueMask)
										v47 |= g_result.blueMask;
									*(WORD*)(2 * v23++) = v47;
									v44 = v48;
									if (!--v38)
										return g_data.dword_1000E06C(v49, v50);
								}
								++v23;
								--v38;
							} while (v38);
							result = g_data.dword_1000E06C(v49, v50);
						}
						else
						{
							result = g_data.dword_1000E06C(v49, v50);
						}
					}
					else
					{
						do
						{
							while (*(DWORD*)(2 * v23 + 0x12CA46) < v10)
							{
								v39 = *v31++;
								v40 = (unsigned __int16)*(DWORD*)(a8 + 2 * v39);
								v41 = (unsigned __int16)v40 + *(WORD*)(2 * v23);
								LOWORD(v40) = *(WORD*)(2 * v23) ^ v40;
								v42 = g_result.dword_1000E464 & ((v41 ^ v40) >> 1);
								v43 = v41 - v42;
								if (v42 & (unsigned __int16)g_result.redMask)
									v43 |= g_result.redMask;
								if (v42 & (unsigned __int16)g_result.greenMask)
									v43 |= g_result.greenMask;
								if (v42 & (unsigned __int16)g_result.blueMask)
									v43 |= g_result.blueMask;
								*(WORD*)(2 * v23++) = v43;
								if (!--v38)
									return g_data.dword_1000E06C(v49, v50);
							}
							++v31;
							++v23;
							--v38;
						} while (v38);
						result = g_data.dword_1000E06C(v49, v50);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v27 < g_data.dword_1000E080)
				{
					v28 = *v27;
					v29 = v27 + 1;
					if ((v28 & 0x80u) != 0)
					{
						v33 = v28 & 0x7F;
						v34 = *v29;
						v27 = v29 + 1;
						if (v34)
						{
							v23 += v33;
							if (v23 > g_data.dword_1000E05C)
							{
								v35 = v23;
								v23 = g_data.dword_1000E05C;
								v32 = (v35 - g_data.dword_1000E05C) | 0x80;
								v31 = v27 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v23 += v33;
							if (v23 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v27 = &v29[v28];
						v23 += v28;
						if (v23 > g_data.dword_1000E05C)
						{
							v30 = v23 - g_data.dword_1000E05C;
							v23 -= v23 - g_data.dword_1000E05C;
							v31 = &v27[-v30];
							v32 = v30;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_result.widthInBytes >> 1;
			g_data.dword_1000E060 += (unsigned int)g_result.widthInBytes >> 1;
			v12 = (WORD*)g_data.dword_1000E080;
			v23 = ((unsigned int)g_result.widthInBytes >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_55:
				v23 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// int __usercall x_sub_100088E9_DrawStruct@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6)
int x_sub_100088E9_DrawStruct(int a1, int a2, int a3, int a4, int a5, int a6)
{
	int v6; // eax@1
	char v7; // al@1
	int v8; // ebx@5
	int v9; // edx@5
	WORD *v10; // esi@5
	int result; // eax@5
	int v12; // edx@5
	int v13; // edx@6
	bool v14; // sf@6
	unsigned __int8 v15; // of@6
	int v16; // ecx@7
	int v17; // edx@9
	unsigned int v18; // eax@11
	unsigned int v19; // edi@11
	unsigned int v20; // eax@13
	bool v21; // cf@15
	unsigned __int16 v22; // ax@17
	BYTE *v23; // esi@17
	unsigned int v24; // ebp@17
	unsigned __int8 v25; // al@19
	BYTE *v26; // esi@19
	int v27; // ecx@21
	BYTE *v28; // esi@21
	char v29; // al@21
	int v30; // ecx@22
	char v31; // al@22
	char v32; // cl@26
	char v33; // cl@30
	unsigned int v34; // eax@30
	int v35; // ecx@32
	int v36; // eax@33
	int v37; // eax@37
	WORD*v38; // edi@37
	int v39; // eax@44
	int v40; // ebx@44
	int v41; // edx@44
	WORD*v42; // esi@44
	int v43; // edx@44
	int v44; // edx@45
	int v45; // ecx@46
	int v46; // edx@48
	unsigned int v47; // eax@50
	unsigned int v48; // edx@50
	unsigned int v49; // edi@50
	unsigned int v50; // eax@52
	unsigned __int16 v51; // ax@56
	BYTE *v52; // esi@56
	unsigned int v53; // ebp@56
	unsigned __int8 v54; // al@58
	BYTE *v55; // esi@58
	int v56; // ecx@60
	BYTE *v57; // esi@60
	char v58; // al@60
	int v59; // ecx@61
	char v60; // al@61
	char v61; // cl@65
	char v62; // cl@69
	unsigned int v63; // eax@69
	int v64; // ecx@71
	int v65; // eax@72
	unsigned int v66; // eax@72
	unsigned int v67; // edx@72
	unsigned int v68; // eax@72
	unsigned int v69; // eax@78
	unsigned int v70; // edx@79
	unsigned int v71; // eax@79
	int v72; // ebx@86
	int v73; // edx@86
	WORD*v74; // esi@86
	int v75; // edx@86
	int v76; // edx@87
	int v77; // ecx@88
	int v78; // edx@90
	unsigned int v79; // eax@92
	unsigned int v80; // edi@92
	unsigned int v81; // eax@94
	unsigned __int16 v82; // ax@98
	char *v83; // esi@98
	unsigned int v84; // ebp@98
	char v85; // al@100
	int v86; // ecx@101
	int v87; // ecx@102
	char *v88; // esi@102
	char v89; // al@102
	int v90; // ecx@104
	char v91; // al@107
	char v92; // cl@108
	char v93; // cl@112
	unsigned int v94; // eax@112
	bool v95; // zf@114
	unsigned __int8 v96; // pf@114
	char v97; // cl@114
	int v98; // ecx@114
	int v99; // eax@116
	int v100; // eax@118
	int v101; // eax@122
	WORD*v102; // edi@122
	int v103; // edx@129
	WORD*v104; // esi@129
	int v105; // edx@129
	int v106; // edx@130
	int v107; // ecx@131
	int v108; // edx@133
	unsigned int v109; // eax@135
	unsigned int v110; // edi@135
	unsigned int v111; // eax@137
	unsigned __int16 v112; // ax@141
	char *v113; // esi@141
	unsigned int v114; // ebp@141
	unsigned __int8 v115; // al@143
	char v116; // cl@145
	char v117; // al@145
	char v118; // cl@150
	unsigned int v119; // eax@150
	int v120; // ecx@152
	int v121; // eax@153
	__int16 v122; // dx@154
	__int16 v123; // [sp-4h] [bp-4h]@72
	unsigned int v124; // [sp-4h] [bp-4h]@79
	int v125; // [sp+8h] [bp+8h]@5
	int v126; // [sp+8h] [bp+8h]@44
	int v127; // [sp+8h] [bp+8h]@86
	int v128; // [sp+8h] [bp+8h]@129
	int v129; // [sp+Ch] [bp+Ch]@5
	int v130; // [sp+Ch] [bp+Ch]@44
	int v131; // [sp+Ch] [bp+Ch]@86
	int v132; // [sp+Ch] [bp+Ch]@129

	v6 = *(DWORD*)(a2 + 24);
	g_data.dword_1000E0B6 = *(DWORD*)v6;
	g_data.dword_1000E0BA = 2 * *(DWORD*)(v6 + 4);
	g_data.dword_1000E0BE = *(DWORD*)(v6 + 8);
	g_data.dword_1000E0C2 = *(DWORD*)(v6 + 12);
	g_data.dword_1000E0C6 = *(DWORD*)(v6 + 16);
	g_data.dword_1000E0CA = *(DWORD*)(v6 + 20);
	g_data.dword_1000E0CE = *(DWORD*)(a2 + 20);
	g_data.dword_1000E0D2 = *(DWORD*)(a2 + 16);
	v7 = *(BYTE *)(g_data.dword_1000E0D2 + 8);
	if (v7 == -95)
	{
	LABEL_5:
		g_data.dword_1000E08C = a4;
		g_data.dword_1000E090 = a3;
		g_data.dword_1000E094 = a1;
		g_data.dword_1000E078 = a2;
		v8 = g_data.dword_1000E0CE;
		g_data.smallRect.Left = g_data.dword_1000E0BE;
		g_data.smallRect.Right = g_data.dword_1000E0C6;
		g_data.smallRect.Top = g_data.dword_1000E0C2;
		g_data.smallRect.Bottom = g_data.dword_1000E0CA;
		v125 = *(WORD*)g_data.dword_1000E0D2 + a5;
		v129 = *(WORD*)(g_data.dword_1000E0D2 + 2) + a6;
		v9 = *(WORD*)(g_data.dword_1000E0D2 + 4) + 1;
		v10 = (WORD*)(g_data.dword_1000E0D2 + 9);
		g_data.dword_1000E09A = *(WORD*)(g_data.dword_1000E0D2 + 6);
		g_data.dword_1000E064 = v9;
		result = (unsigned __int16)g_data.dword_1000E0C2;
		v12 = v129 - (unsigned __int16)g_data.dword_1000E0C2;
		if (v129 < (unsigned __int16)g_data.dword_1000E0C2)
		{
			v129 = (unsigned __int16)g_data.dword_1000E0C2;
			v13 = -v12;
			v15 = __OFSUB__(g_data.dword_1000E09A, v13);
			v95 = g_data.dword_1000E09A == v13;
			v14 = g_data.dword_1000E09A - v13 < 0;
			g_data.dword_1000E09A -= v13;
			if ((unsigned __int8)(v14 ^ v15) | v95)
				return result;
			v16 = v13;
			do
			{
				LOWORD(result) = *v10;
				v10 = (WORD*)((char *)v10 + result + 2);
				--v16;
			} while (v16);
		}
		result = (unsigned __int16)g_data.smallRect.Bottom + 1;
		v17 = v129 + g_data.dword_1000E09A - result;
		if (v129 + g_data.dword_1000E09A <= result
			|| (v15 = __OFSUB__(g_data.dword_1000E09A, v17),
				v95 = g_data.dword_1000E09A == v17,
				v14 = g_data.dword_1000E09A - v17 < 0,
				g_data.dword_1000E09A -= v17,
				!((unsigned __int8)(v14 ^ v15) | v95)))
		{
			v18 = (unsigned int)(v129 * g_data.dword_1000E0BA) >> 1;
			g_data.dword_1000E05C = ((unsigned int)g_data.dword_1000E0B6 >> 1) + v18 + (unsigned __int16)g_data.smallRect.Left;
			g_data.dword_1000E060 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v18 + 1;
			v19 = v125 + v18 + ((unsigned int)g_data.dword_1000E0B6 >> 1);
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10008B20;
			if (g_data.dword_1000E064 + v19 < g_data.dword_1000E060)
				g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10008B28;
			g_data.dword_1000E09E = g_data.dword_1000E09A;
			v20 = v129 + g_data.dword_1000E09A - 480;
			if ((unsigned int)(v129 + g_data.dword_1000E09A) < 0x1E0)
				v20 = 0;
			v21 = g_data.dword_1000E09A < v20;
			v95 = g_data.dword_1000E09A == v20;
			g_data.dword_1000E09A -= v20;
			if (v21 || v95)
				goto LABEL_42;
			g_data.dword_1000E09E = v20;
			while (1)
			{
				g_data.dword_1000E07C = v19;
				v22 = *v10;
				v23 = v10 + 1;
				v24 = (unsigned int)&v23[v22];
				if (v19 >= g_data.dword_1000E05C)
				{
				LABEL_27:
					if (v19 < g_data.dword_1000E060 && (unsigned int)v23 < v24)
					{
						v29 = *v23;
						v28 = v23 + 1;
					LABEL_30:
						v33 = v29;
						v34 = v19 + (v29 & 0x7F);
						if (v34 > g_data.dword_1000E060)
							v34 = g_data.dword_1000E060;
						v14 = (char)(v33 & 0xC0) < 0;
						v35 = v34 - v19;
						if (v14)
						{
							if (*v28)
							{
								v37 = *(DWORD*)(g_data.dword_1000E0CE + 2 * *v28);
								v38 = (WORD*)(2 * v19);
								while (v35)
								{
									*v38 = v37;
									++v38;
									--v35;
								}
								result = g_data.dword_1000E06C(v125, v129);
							}
							else
							{
								result = g_data.dword_1000E06C(v125, v129);
							}
						}
						else
						{
							do
							{
								v36 = *v28++;
								*(WORD*)(2 * v19++) = *(DWORD*)(v8 + 2 * v36);
								--v35;
							} while (v35);
							result = g_data.dword_1000E06C(v125, v129);
						}
						return result;
					}
				}
				else
				{
					while ((unsigned int)v23 < v24)
					{
						v25 = *v23;
						v26 = v23 + 1;
						if ((v25 & 0x80u) != 0)
						{
							v30 = v25 & 0x7F;
							v31 = *v26;
							v23 = v26 + 1;
							if (v31)
							{
								v19 += v30;
								if (v19 > g_data.dword_1000E05C)
								{
									v32 = v19;
									v19 = g_data.dword_1000E05C;
									v29 = (v32 - g_data.dword_1000E05C) | 0x80;
									v28 = v23 - 1;
									goto LABEL_30;
								}
							}
							else
							{
								v19 += v30;
								if (v19 > g_data.dword_1000E05C)
									goto LABEL_27;
							}
						}
						else
						{
							v23 = &v26[v25];
							v19 += v25;
							if (v19 > g_data.dword_1000E05C)
							{
								v27 = v19 - g_data.dword_1000E05C;
								v19 -= v19 - g_data.dword_1000E05C;
								v28 = &v23[-v27];
								v29 = v27;
								goto LABEL_30;
							}
						}
					}
				}
				g_data.dword_1000E05C += (unsigned int)g_data.dword_1000E0BA >> 1;
				g_data.dword_1000E060 += (unsigned int)g_data.dword_1000E0BA >> 1;
				v10 = (WORD*)v24;
				v19 = ((unsigned int)g_data.dword_1000E0BA >> 1) + g_data.dword_1000E07C;
				if (!--g_data.dword_1000E09A)
				{
				LABEL_42:
					v19 -= 307200;
					g_data.dword_1000E05C -= 307200;
					g_data.dword_1000E060 -= 307200;
					result = g_data.dword_1000E09E;
					g_data.dword_1000E09E = 0;
					g_data.dword_1000E09A = result;
					if (!result)
						return result;
				}
			}
		}
		return result;
	}
	if (v7 == -94)
	{
		g_data.dword_1000E08C = a4;
		g_data.dword_1000E090 = a3;
		g_data.dword_1000E094 = a1;
		g_data.dword_1000E078 = a2;
		v72 = g_data.dword_1000E0CE;
		g_data.smallRect.Left = g_data.dword_1000E0BE;
		g_data.smallRect.Right = g_data.dword_1000E0C6;
		g_data.smallRect.Top = g_data.dword_1000E0C2;
		g_data.smallRect.Bottom = g_data.dword_1000E0CA;
		v127 = *(WORD*)g_data.dword_1000E0D2 + a5;
		v131 = *(WORD*)(g_data.dword_1000E0D2 + 2) + a6;
		v73 = *(WORD*)(g_data.dword_1000E0D2 + 4) + 1;
		v74 = (WORD*)(g_data.dword_1000E0D2 + 9);
		g_data.dword_1000E09A = *(WORD*)(g_data.dword_1000E0D2 + 6);
		g_data.dword_1000E064 = v73;
		result = (unsigned __int16)g_data.dword_1000E0C2;
		v75 = v131 - (unsigned __int16)g_data.dword_1000E0C2;
		if (v131 < (unsigned __int16)g_data.dword_1000E0C2)
		{
			v131 = (unsigned __int16)g_data.dword_1000E0C2;
			v76 = -v75;
			v15 = __OFSUB__(g_data.dword_1000E09A, v76);
			v95 = g_data.dword_1000E09A == v76;
			v14 = g_data.dword_1000E09A - v76 < 0;
			g_data.dword_1000E09A -= v76;
			if ((unsigned __int8)(v14 ^ v15) | v95)
				return result;
			v77 = v76;
			do
			{
				LOWORD(result) = *v74;
				v74 = (WORD*)((char *)v74 + result + 2);
				--v77;
			} while (v77);
		}
		result = (unsigned __int16)g_data.smallRect.Bottom + 1;
		v78 = v131 + g_data.dword_1000E09A - result;
		if (v131 + g_data.dword_1000E09A <= result
			|| (v15 = __OFSUB__(g_data.dword_1000E09A, v78),
				v95 = g_data.dword_1000E09A == v78,
				v14 = g_data.dword_1000E09A - v78 < 0,
				g_data.dword_1000E09A -= v78,
				!((unsigned __int8)(v14 ^ v15) | v95)))
		{
			v79 = (unsigned int)(v131 * g_data.dword_1000E0BA) >> 1;
			g_data.dword_1000E05C = ((unsigned int)g_data.dword_1000E0B6 >> 1) + v79 + (unsigned __int16)g_data.smallRect.Left;
			g_data.dword_1000E060 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v79 + 1;
			v80 = v127 + v79 + ((unsigned int)g_data.dword_1000E0B6 >> 1);
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10009187;
			if (g_data.dword_1000E064 + v80 < g_data.dword_1000E060)
				g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10009193;
			g_data.dword_1000E09E = g_data.dword_1000E09A;
			v81 = v131 + g_data.dword_1000E09A - 480;
			if ((unsigned int)(v131 + g_data.dword_1000E09A) < 0x1E0)
				v81 = 0;
			v21 = g_data.dword_1000E09A < v81;
			v95 = g_data.dword_1000E09A == v81;
			g_data.dword_1000E09A -= v81;
			if (v21 || v95)
				goto LABEL_127;
			g_data.dword_1000E09E = v81;
			while (1)
			{
				g_data.dword_1000E07C = v80;
				v82 = *v74;
				v83 = (char *)(v74 + 1);
				v84 = (unsigned int)&v83[v82];
				if (v80 < g_data.dword_1000E05C)
					break;
			LABEL_109:
				if (v80 < g_data.dword_1000E060 && (unsigned int)v83 < v84)
				{
					v89 = *v83;
					v88 = v83 + 1;
					goto LABEL_112;
				}
			LABEL_126:
				g_data.dword_1000E05C += (unsigned int)g_data.dword_1000E0BA >> 1;
				g_data.dword_1000E060 += (unsigned int)g_data.dword_1000E0BA >> 1;
				v74 = (WORD*)v84;
				v80 = ((unsigned int)g_data.dword_1000E0BA >> 1) + g_data.dword_1000E07C;
				if (!--g_data.dword_1000E09A)
				{
				LABEL_127:
					v80 -= 307200;
					g_data.dword_1000E05C -= 307200;
					g_data.dword_1000E060 -= 307200;
					result = g_data.dword_1000E09E;
					g_data.dword_1000E09E = 0;
					g_data.dword_1000E09A = result;
					if (!result)
						return result;
				}
			}
			do
			{
				while (1)
				{
					while (1)
					{
						if ((unsigned int)v83 >= v84)
							goto LABEL_126;
						v85 = *v83++;
						if (v85 < 0)
							break;
						v86 = v85 & 0x3F;
						v83 += v86;
						v80 += v86;
						if (v80 > g_data.dword_1000E05C)
						{
							v87 = v80 - g_data.dword_1000E05C;
							v80 -= v80 - g_data.dword_1000E05C;
							v88 = &v83[-v87];
							v95 = (v85 & 0x40) == 0;
							v89 = v87;
							if (!v95)
								v89 = v87 | 0x40;
							goto LABEL_112;
						}
					}
					v90 = v85 & 0x3F;
					if (!(v85 & 0x40))
						break;
					v80 += v90;
					if (v80 > g_data.dword_1000E05C)
						goto LABEL_109;
				}
				v91 = *v83++;
				v80 += v90;
			} while (v80 <= g_data.dword_1000E05C);
			v92 = v80;
			v80 = g_data.dword_1000E05C;
			v89 = (v92 - g_data.dword_1000E05C) | 0x80;
			v88 = v83 - 1;
		LABEL_112:
			v93 = v89;
			v94 = v80 + (v89 & 0x3F);
			if (v94 > g_data.dword_1000E060)
				v94 = g_data.dword_1000E060;
			v97 = v93 & 0xC0;
			v95 = v97 == 0;
			v96 = __SETP__(v97, 0);
			v14 = v97 < 0;
			v98 = v94 - v80;
			if (v14)
			{
				if (v96)
				{
					result = g_data.dword_1000E06C(v127, v131);
				}
				else
				{
					v101 = *(DWORD*)(g_data.dword_1000E0CE + 2 * (unsigned __int8)*v88);
					v102 = (WORD*)(2 * v80);
					while (v98)
					{
						*v102 = v101;
						++v102;
						--v98;
					}
					result = g_data.dword_1000E06C(v127, v131);
				}
			}
			else if (v95)
			{
				do
				{
					v99 = (unsigned __int8)*v88++;
					*(WORD*)(2 * v80++) = *(DWORD*)(v72 + 2 * v99);
					--v98;
				} while (v98);
				result = g_data.dword_1000E06C(v127, v131);
			}
			else
			{
				do
				{
					v100 = (unsigned __int8)*v88++;
					*(WORD*)(2 * v80) = (*(DWORD*)(2 * v80)
						+ *(DWORD*)(v72 + 2 * v100)
						- (g_result.dword_1000E460 & (unsigned int)(*(DWORD*)(2 * v80) ^ *(DWORD*)(v72 + 2 * v100)))) >> 1;
					++v80;
					--v98;
				} while (v98);
				result = g_data.dword_1000E06C(v127, v131);
			}
			return result;
		}
	}
	else if (v7 == -93)
	{
		g_data.dword_1000E08C = a4;
		g_data.dword_1000E090 = a3;
		g_data.dword_1000E094 = a1;
		g_data.dword_1000E078 = a2;
		g_data.smallRect.Left = g_data.dword_1000E0BE;
		g_data.smallRect.Right = g_data.dword_1000E0C6;
		g_data.smallRect.Top = g_data.dword_1000E0C2;
		g_data.smallRect.Bottom = g_data.dword_1000E0CA;
		v128 = *(WORD*)g_data.dword_1000E0D2 + a5;
		v132 = *(WORD*)(g_data.dword_1000E0D2 + 2) + a6;
		v103 = *(WORD*)(g_data.dword_1000E0D2 + 4) + 1;
		v104 = (WORD*)(g_data.dword_1000E0D2 + 9);
		g_data.dword_1000E09A = *(WORD*)(g_data.dword_1000E0D2 + 6);
		g_data.dword_1000E064 = v103;
		result = (unsigned __int16)g_data.dword_1000E0C2;
		v105 = v132 - (unsigned __int16)g_data.dword_1000E0C2;
		if (v132 < (unsigned __int16)g_data.dword_1000E0C2)
		{
			v132 = (unsigned __int16)g_data.dword_1000E0C2;
			v106 = -v105;
			v15 = __OFSUB__(g_data.dword_1000E09A, v106);
			v95 = g_data.dword_1000E09A == v106;
			v14 = g_data.dword_1000E09A - v106 < 0;
			g_data.dword_1000E09A -= v106;
			if ((unsigned __int8)(v14 ^ v15) | v95)
				return result;
			v107 = v106;
			do
			{
				LOWORD(result) = *v104;
				v104 = (WORD*)((char *)v104 + result + 2);
				--v107;
			} while (v107);
		}
		result = (unsigned __int16)g_data.smallRect.Bottom + 1;
		v108 = v132 + g_data.dword_1000E09A - result;
		if (v132 + g_data.dword_1000E09A <= result
			|| (v15 = __OFSUB__(g_data.dword_1000E09A, v108),
				v95 = g_data.dword_1000E09A == v108,
				v14 = g_data.dword_1000E09A - v108 < 0,
				g_data.dword_1000E09A -= v108,
				!((unsigned __int8)(v14 ^ v15) | v95)))
		{
			v109 = (unsigned int)(v132 * g_data.dword_1000E0BA) >> 1;
			g_data.dword_1000E05C = ((unsigned int)g_data.dword_1000E0B6 >> 1) + v109 + (unsigned __int16)g_data.smallRect.Left;
			g_data.dword_1000E060 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v109 + 1;
			v110 = v128 + v109 + ((unsigned int)g_data.dword_1000E0B6 >> 1);
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000948B;
			if (g_data.dword_1000E064 + v110 < g_data.dword_1000E060)
				g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10009497;
			g_data.dword_1000E09E = g_data.dword_1000E09A;
			v111 = v132 + g_data.dword_1000E09A - 480;
			if ((unsigned int)(v132 + g_data.dword_1000E09A) < 0x1E0)
				v111 = 0;
			v21 = g_data.dword_1000E09A < v111;
			v95 = g_data.dword_1000E09A == v111;
			g_data.dword_1000E09A -= v111;
			if (v21 || v95)
				goto LABEL_159;
			g_data.dword_1000E09E = v111;
			while (1)
			{
				g_data.dword_1000E07C = v110;
				v112 = *v104;
				v113 = (char *)(v104 + 1);
				v114 = (unsigned int)&v113[v112];
				if (v110 < g_data.dword_1000E05C)
					break;
			LABEL_147:
				if (v110 < g_data.dword_1000E060 && (unsigned int)v113 < v114)
				{
					v117 = *v113;
					goto LABEL_150;
				}
			LABEL_158:
				g_data.dword_1000E05C += (unsigned int)g_data.dword_1000E0BA >> 1;
				g_data.dword_1000E060 += (unsigned int)g_data.dword_1000E0BA >> 1;
				v104 = (WORD*)v114;
				v110 = ((unsigned int)g_data.dword_1000E0BA >> 1) + g_data.dword_1000E07C;
				if (!--g_data.dword_1000E09A)
				{
				LABEL_159:
					v110 -= 307200;
					g_data.dword_1000E05C -= 307200;
					g_data.dword_1000E060 -= 307200;
					result = g_data.dword_1000E09E;
					g_data.dword_1000E09E = 0;
					g_data.dword_1000E09A = result;
					if (!result)
						return result;
				}
			}
			do
			{
				while (1)
				{
					if ((unsigned int)v113 >= v114)
						goto LABEL_158;
					v115 = *v113++;
					if ((v115 & 0x80u) == 0)
						break;
					v110 += v115 & 0x7F;
					if (v110 > g_data.dword_1000E05C)
						goto LABEL_147;
				}
				v110 += v115;
			} while (v110 <= g_data.dword_1000E05C);
			v116 = v110 - g_data.dword_1000E05C;
			v110 -= v110 - g_data.dword_1000E05C;
			v117 = v116;
		LABEL_150:
			v118 = v117;
			v119 = v110 + (v117 & 0x7F);
			if (v119 > g_data.dword_1000E060)
				v119 = g_data.dword_1000E060;
			v14 = (char)(v118 & 0xC0) < 0;
			v120 = v119 - v110;
			if (v14)
			{
				result = g_data.dword_1000E06C(v128, v132);
			}
			else
			{
				do
				{
					v121 = *(DWORD*)(2 * v110);
					if (!(v121 & 0x8007))
					{
						v122 = g_result.dword_1000E480 + (((unsigned int)g_result.dword_1000E468 & *(DWORD*)(2 * v110)) >> 1);
						*(DWORD*)(2 * v110) = v121;
						*(WORD*)(2 * v110) = v122;
					}
					++v110;
					--v120;
				} while (v120);
				result = g_data.dword_1000E06C(v128, v132);
			}
			return result;
		}
	}
	else
	{
		if (v7 != -87)
			goto LABEL_5;
		v39 = (unsigned __int16)g_result.greenMask << 16;
		LOWORD(v39) = g_result.blueMask | g_result.redMask;
		g_data.dword_1000E084 = v39;
		g_data.dword_1000E088 = v39 | 2 * v39;
		g_data.dword_1000E08C = a4;
		g_data.dword_1000E090 = a3;
		g_data.dword_1000E094 = a1;
		g_data.dword_1000E078 = a2;
		v40 = g_data.dword_1000E0CE;
		g_data.smallRect.Left = g_data.dword_1000E0BE;
		g_data.smallRect.Right = g_data.dword_1000E0C6;
		g_data.smallRect.Top = g_data.dword_1000E0C2;
		g_data.smallRect.Bottom = g_data.dword_1000E0CA;
		v126 = *(WORD*)g_data.dword_1000E0D2 + a5;
		v130 = *(WORD*)(g_data.dword_1000E0D2 + 2) + a6;
		v41 = *(WORD*)(g_data.dword_1000E0D2 + 4) + 1;
		v42 = (WORD*)(g_data.dword_1000E0D2 + 9);
		g_data.dword_1000E09A = *(WORD*)(g_data.dword_1000E0D2 + 6);
		g_data.dword_1000E064 = v41;
		result = (unsigned __int16)g_data.dword_1000E0C2;
		v43 = v130 - (unsigned __int16)g_data.dword_1000E0C2;
		if (v130 < (unsigned __int16)g_data.dword_1000E0C2)
		{
			v130 = (unsigned __int16)g_data.dword_1000E0C2;
			v44 = -v43;
			v15 = __OFSUB__(g_data.dword_1000E09A, v44);
			v95 = g_data.dword_1000E09A == v44;
			v14 = g_data.dword_1000E09A - v44 < 0;
			g_data.dword_1000E09A -= v44;
			if ((unsigned __int8)(v14 ^ v15) | v95)
				return result;
			v45 = v44;
			do
			{
				LOWORD(result) = *v42;
				v42 = (WORD*)((char *)v42 + result + 2);
				--v45;
			} while (v45);
		}
		result = (unsigned __int16)g_data.smallRect.Bottom + 1;
		v46 = v130 + g_data.dword_1000E09A - result;
		if (v130 + g_data.dword_1000E09A <= result
			|| (v15 = __OFSUB__(g_data.dword_1000E09A, v46),
				v95 = g_data.dword_1000E09A == v46,
				v14 = g_data.dword_1000E09A - v46 < 0,
				g_data.dword_1000E09A -= v46,
				!((unsigned __int8)(v14 ^ v15) | v95)))
		{
			v47 = (unsigned int)(v130 * g_data.dword_1000E0BA) >> 1;
			g_data.dword_1000E05C = ((unsigned int)g_data.dword_1000E0B6 >> 1) + v47 + (unsigned __int16)g_data.smallRect.Left;
			v48 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v47 + 1;
			g_data.dword_1000E060 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v47 + 1;
			v49 = v126 + v47 + ((unsigned int)g_data.dword_1000E0B6 >> 1);
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10008E28;
			if (g_data.dword_1000E064 + v49 < g_data.dword_1000E060)
				g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10008E34;
			g_data.dword_1000E09E = g_data.dword_1000E09A;
			v50 = v130 + g_data.dword_1000E09A - 480;
			if ((unsigned int)(v130 + g_data.dword_1000E09A) < 0x1E0)
				v50 = 0;
			v21 = g_data.dword_1000E09A < v50;
			v95 = g_data.dword_1000E09A == v50;
			g_data.dword_1000E09A -= v50;
			if (v21 || v95)
				goto LABEL_84;
			g_data.dword_1000E09E = v50;
			do
			{
				do
				{
					g_data.dword_1000E07C = v49;
					v51 = *v42;
					v52 = v42 + 1;
					v53 = (unsigned int)&v52[v51];
					if (v49 < g_data.dword_1000E05C)
					{
						while (1)
						{
							while (1)
							{
								if ((unsigned int)v52 >= v53)
									goto LABEL_83;
								v54 = *v52;
								v55 = v52 + 1;
								if ((v54 & 0x80u) != 0)
									break;
								v52 = &v55[v54];
								v49 += v54;
								if (v49 > g_data.dword_1000E05C)
								{
									v56 = v49 - g_data.dword_1000E05C;
									v49 -= v49 - g_data.dword_1000E05C;
									v57 = &v52[-v56];
									v58 = v56;
								LABEL_69:
									v62 = v58;
									v63 = v49 + (v58 & 0x7F);
									if (v63 > g_data.dword_1000E060)
										v63 = g_data.dword_1000E060;
									v14 = (char)(v62 & 0xC0) < 0;
									v64 = v63 - v49;
									if (v14)
									{
										if (*v57)
										{
											v69 = *(DWORD*)(g_data.dword_1000E0CE + 4 * *v57);
											do
											{
												LOWORD(v48) = *(WORD*)(2 * v49);
												v70 = v48 << 16;
												LOWORD(v70) = *(WORD*)(2 * v49);
												v48 = g_data.dword_1000E084 & v70;
												v124 = v69;
												v71 = v69 >> 19;
												if ((BYTE)v71 != 31)
												{
													v48 = g_data.dword_1000E084 & (v48 * v71 >> 5) | ((g_data.dword_1000E084 & (v48 * v71 >> 5)) >> 16);
													*(WORD*)(2 * v49) = v124 + v48;
												}
												v69 = v124;
												++v49;
												--v64;
											} while (v64);
											result = g_data.dword_1000E06C(v126, v130);
										}
										else
										{
											result = g_data.dword_1000E06C(v126, v130);
										}
									}
									else
									{
										do
										{
											v65 = *v57++;
											v66 = *(DWORD*)(v40 + 4 * v65);
											LOWORD(v48) = *(WORD*)(2 * v49);
											v67 = v48 << 16;
											LOWORD(v67) = *(WORD*)(2 * v49);
											v48 = g_data.dword_1000E084 & v67;
											v123 = v66;
											v68 = v66 >> 19;
											if ((BYTE)v68 != 31)
											{
												v48 = g_data.dword_1000E084 & (v48 * v68 >> 5) | ((g_data.dword_1000E084 & (v48 * v68 >> 5)) >> 16);
												*(WORD*)(2 * v49) = v123 + v48;
											}
											++v49;
											--v64;
										} while (v64);
										result = g_data.dword_1000E06C(v126, v130);
									}
									return result;
								}
							}
							v59 = v54 & 0x7F;
							v60 = *v55;
							v52 = v55 + 1;
							if (v60)
							{
								v49 += v59;
								if (v49 > g_data.dword_1000E05C)
								{
									v61 = v49;
									v49 = g_data.dword_1000E05C;
									v58 = (v61 - g_data.dword_1000E05C) | 0x80;
									v57 = v52 - 1;
									goto LABEL_69;
								}
							}
							else
							{
								v49 += v59;
								if (v49 > g_data.dword_1000E05C)
									break;
							}
						}
					}
					if (v49 < g_data.dword_1000E060 && (unsigned int)v52 < v53)
					{
						v58 = *v52;
						v57 = v52 + 1;
						goto LABEL_69;
					}
				LABEL_83:
					g_data.dword_1000E05C += (unsigned int)g_data.dword_1000E0BA >> 1;
					g_data.dword_1000E060 += (unsigned int)g_data.dword_1000E0BA >> 1;
					v42 = (WORD*)v53;
					v49 = ((unsigned int)g_data.dword_1000E0BA >> 1) + g_data.dword_1000E07C;
					v48 = g_data.dword_1000E09A-- - 1;
				} while (g_data.dword_1000E09A);
			LABEL_84:
				v49 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
			} while (result);
		}
	}
	return result;
}

//----- (100095A8) --------------------------------------------------------
// TODO: int __usercall x_sub_100095A8_DrawStruct@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6)
int x_sub_100095A8_DrawStruct(int a1, int a2, int a3, int a4, int a5, int a6)
{
	int v6; // eax@1
	int v7; // ebx@1
	int v8; // edx@1
	WORD*v9; // esi@1
	int result; // eax@1
	int v11; // edx@1
	int v12; // edx@2
	bool v13; // zf@2
	bool v14; // sf@2
	unsigned __int8 v15; // of@2
	int v16; // ecx@3
	int v17; // edx@5
	unsigned int v18; // eax@7
	unsigned int v19; // edi@7
	unsigned int v20; // eax@9
	bool v21; // cf@11
	unsigned __int16 v22; // ax@13
	BYTE *v23; // esi@13
	unsigned int v24; // ebp@13
	unsigned __int8 v25; // al@15
	BYTE *v26; // esi@15
	int v27; // ecx@17
	BYTE *v28; // esi@17
	char v29; // al@17
	int v30; // ecx@18
	char v31; // al@18
	char v32; // cl@22
	char v33; // cl@26
	unsigned int v34; // eax@26
	int v35; // ecx@28
	int v36; // eax@29
	int v37; // eax@33
	WORD*v38; // edi@33
	int v39; // [sp+8h] [bp+8h]@1
	int v40; // [sp+Ch] [bp+Ch]@1

	v6 = *(DWORD*)(a2 + 24);
	g_data.dword_1000E0B6 = *(DWORD*) v6;
	g_data.dword_1000E0BA = 2 * *(DWORD*) (v6 + 4);
	g_data.dword_1000E0BE = *(DWORD*) (v6 + 8);
	g_data.dword_1000E0C2 = *(DWORD*) (v6 + 12);
	g_data.dword_1000E0C6 = *(DWORD*) (v6 + 16);
	g_data.dword_1000E0CA = *(DWORD*) (v6 + 20);
	g_data.dword_1000E0CE = *(DWORD*) (a2 + 20);
	g_data.dword_1000E0D2 = *(DWORD*) (a2 + 16);
	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	v7 = g_data.dword_1000E0CE;
	g_data.smallRect.Left = g_data.dword_1000E0BE;
	g_data.smallRect.Right = g_data.dword_1000E0C6;
	g_data.smallRect.Top = g_data.dword_1000E0C2;
	g_data.smallRect.Bottom = g_data.dword_1000E0CA;
	v39 = *(WORD*)g_data.dword_1000E0D2 + a5;
	v40 = *(WORD*)(g_data.dword_1000E0D2 + 2) + a6;
	v8 = *(WORD*)(g_data.dword_1000E0D2 + 4) + 1;
	v9 = (WORD*)(g_data.dword_1000E0D2 + 9);
	g_data.dword_1000E09A = *(WORD*)(g_data.dword_1000E0D2 + 6);
	g_data.dword_1000E064 = v8;
	result = (unsigned __int16)g_data.dword_1000E0C2;
	v11 = v40 - (unsigned __int16)g_data.dword_1000E0C2;
	if (v40 < (unsigned __int16)g_data.dword_1000E0C2)
	{
		v40 = (unsigned __int16)g_data.dword_1000E0C2;
		v12 = -v11;
		v15 = __OFSUB__(g_data.dword_1000E09A, v12);
		v13 = g_data.dword_1000E09A == v12;
		v14 = g_data.dword_1000E09A - v12 < 0;
		g_data.dword_1000E09A -= v12;
		if ((unsigned __int8)(v14 ^ v15) | v13)
			return result;
		v16 = v12;
		do
		{
			LOWORD(result) = *v9;
			v9 = (WORD*)((char *)v9 + result + 2);
			--v16;
		} while (v16);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v17 = v40 + g_data.dword_1000E09A - result;
	if (v40 + g_data.dword_1000E09A <= result
		|| (v15 = __OFSUB__(g_data.dword_1000E09A, v17),
			v13 = g_data.dword_1000E09A == v17,
			v14 = g_data.dword_1000E09A - v17 < 0,
			g_data.dword_1000E09A -= v17,
			!((unsigned __int8)(v14 ^ v15) | v13)))
	{
		v18 = (unsigned int)(v40 * g_data.dword_1000E0BA) >> 1;
		g_data.dword_1000E05C = ((unsigned int)g_data.dword_1000E0B6 >> 1) + v18 + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v18 + 1;
		v19 = v39 + v18 + ((unsigned int)g_data.dword_1000E0B6 >> 1);
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_100097C0;
		if (g_data.dword_1000E064 + v19 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_100097C8;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v20 = v40 + g_data.dword_1000E09A - 480;
		if ((unsigned int)(v40 + g_data.dword_1000E09A) < 0x1E0)
			v20 = 0;
		v21 = g_data.dword_1000E09A < v20;
		v13 = g_data.dword_1000E09A == v20;
		g_data.dword_1000E09A -= v20;
		if (v21 || v13)
			goto LABEL_38;
		g_data.dword_1000E09E = v20;
		while (1)
		{
			g_data.dword_1000E07C = v19;
			v22 = *v9;
			v23 = v9 + 1;
			v24 = (unsigned int)&v23[v22];
			if (v19 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v19 < g_data.dword_1000E060 && (unsigned int)v23 < v24)
				{
					v29 = *v23;
					v28 = v23 + 1;
				LABEL_26:
					v33 = v29;
					v34 = v19 + (v29 & 0x7F);
					if (v34 > g_data.dword_1000E060)
						v34 = g_data.dword_1000E060;
					v14 = (char)(v33 & 0xC0) < 0;
					v35 = v34 - v19;
					if (v14)
					{
						if (*v28)
						{
							v37 = *(DWORD*)(g_data.dword_1000E0CE + 2 * *v28);
							v38 = (WORD*)(2 * v19);
							while (v35)
							{
								*v38 = v37;
								++v38;
								--v35;
							}
							result = g_data.dword_1000E06C(v39, v40);
						}
						else
						{
							result = g_data.dword_1000E06C(v39, v40);
						}
					}
					else
					{
						do
						{
							v36 = *v28++;
							*(WORD*)(2 * v19++) = *(DWORD*)(v7 + 2 * v36);
							--v35;
						} while (v35);
						result = g_data.dword_1000E06C(v39, v40);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v23 < v24)
				{
					v25 = *v23;
					v26 = v23 + 1;
					if ((v25 & 0x80u) != 0)
					{
						v30 = v25 & 0x7F;
						v31 = *v26;
						v23 = v26 + 1;
						if (v31)
						{
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
							{
								v32 = v19;
								v19 = g_data.dword_1000E05C;
								v29 = (v32 - g_data.dword_1000E05C) | 0x80;
								v28 = v23 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v19 += v30;
							if (v19 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v23 = &v26[v25];
						v19 += v25;
						if (v19 > g_data.dword_1000E05C)
						{
							v27 = v19 - g_data.dword_1000E05C;
							v19 -= v19 - g_data.dword_1000E05C;
							v28 = &v23[-v27];
							v29 = v27;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_data.dword_1000E0BA >> 1;
			g_data.dword_1000E060 += (unsigned int)g_data.dword_1000E0BA >> 1;
			v9 = (WORD*)v24;
			v19 = ((unsigned int)g_data.dword_1000E0BA >> 1) + g_data.dword_1000E07C;
			if (!--g_data.dword_1000E09A)
			{
			LABEL_38:
				v19 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

// TODO: int __usercall x_sub_100098D3_DrawStruct@<eax > (int a1@<ebx > , int a2@<ebp > , int a3@<edi > , int a4@<esi > , int a5, int a6)
int x_sub_100098D3_DrawStruct(int a1, int a2, int a3, int a4, int a5, int a6)
{
	int v6; // eax@1
	__int16 v7; // bx@1
	int v8; // edx@1
	WORD*v9; // esi@1
	int result; // eax@1
	int v11; // edx@1
	int v12; // edx@2
	bool v13; // zf@2
	bool v14; // sf@2
	unsigned __int8 v15; // of@2
	int v16; // ecx@3
	int v17; // edx@5
	WORD*v18; // edi@7
	unsigned int v19; // eax@9
	bool v20; // cf@11
	unsigned __int16 v21; // ax@13
	BYTE *v22; // esi@13
	unsigned int v23; // ebp@13
	unsigned __int8 v24; // al@15
	BYTE *v25; // esi@15
	int v26; // ecx@17
	char *v27; // esi@17
	char v28; // al@17
	int v29; // ecx@18
	char v30; // al@18
	char v31; // cl@22
	char v32; // cl@26
	unsigned int v33; // eax@26
	unsigned int v34; // ecx@28
	char v35; // t1@29
	int v36; // [sp+8h] [bp+8h]@1
	int v37; // [sp+Ch] [bp+Ch]@1

	v6 = *(DWORD *)(a2 + 24);
	g_data.dword_1000E0B6 = *(DWORD*)(a2 + 28);
	g_data.dword_1000E0BA = *(DWORD*)(v6 + 4);
	g_data.dword_1000E0BE = *(DWORD*)(v6 + 8);
	g_data.dword_1000E0C2 = *(DWORD*)(v6 + 12);
	g_data.dword_1000E0C6 = *(DWORD*)(v6 + 16);
	g_data.dword_1000E0CA = *(DWORD*)(v6 + 20);
	g_data.dword_1000E0CE = *(DWORD*)(a2 + 20);
	g_data.dword_1000E0D2 = *(DWORD*)(a2 + 16);
	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	v7 = g_data.dword_1000E0CE;
	g_data.smallRect.Left = g_data.dword_1000E0BE;
	g_data.smallRect.Right = g_data.dword_1000E0C6;
	g_data.smallRect.Top = g_data.dword_1000E0C2;
	g_data.smallRect.Bottom = g_data.dword_1000E0CA;
	v36 = *(WORD *)g_data.dword_1000E0D2 + a5;
	v37 = *(WORD *)(g_data.dword_1000E0D2 + 2) + a6;
	v8 = *(WORD *)(g_data.dword_1000E0D2 + 4) + 1;
	v9 = (WORD *)(g_data.dword_1000E0D2 + 9);
	g_data.dword_1000E09A = *(WORD*)(g_data.dword_1000E0D2 + 6);
	g_data.dword_1000E064 = v8;
	result = (unsigned __int16)g_data.dword_1000E0C2;
	v11 = v37 - (unsigned __int16)g_data.dword_1000E0C2;
	if (v37 < (unsigned __int16)g_data.dword_1000E0C2)
	{
		v37 = (unsigned __int16)g_data.dword_1000E0C2;
		v12 = -v11;
		v15 = __OFSUB__(g_data.dword_1000E09A, v12);
		v13 = g_data.dword_1000E09A == v12;
		v14 = g_data.dword_1000E09A - v12 < 0;
		g_data.dword_1000E09A -= v12;
		if ((unsigned __int8)(v14 ^ v15) | v13)
			return result;
		v16 = v12;
		do
		{
			LOWORD(result) = *v9;
			v9 = (WORD *)((char *)v9 + result + 2);
			--v16;
		} while (v16);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v17 = v37 + g_data.dword_1000E09A - result;
	if (v37 + g_data.dword_1000E09A <= result
		|| (v15 = __OFSUB__(g_data.dword_1000E09A, v17),
			v13 = g_data.dword_1000E09A == v17,
			v14 = g_data.dword_1000E09A - v17 < 0,
			g_data.dword_1000E09A -= v17,
			!((unsigned __int8)(v14 ^ v15) | v13)))
	{
		g_data.dword_1000E05C = g_data.dword_1000E0B6 + v37 * g_data.dword_1000E0BA + (unsigned __int16)g_data.smallRect.Left;
		g_data.dword_1000E060 = g_data.dword_1000E0B6 + (unsigned __int16)g_data.smallRect.Right + v37 * g_data.dword_1000E0BA + 1;
		v18 = (WORD*)(v36 + v37 * g_data.dword_1000E0BA + g_data.dword_1000E0B6);
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10009AE6;
		if ((unsigned int)v18 + g_data.dword_1000E064 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_10009AEE;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v19 = v37 + g_data.dword_1000E09A - 480;
		if ((unsigned int)(v37 + g_data.dword_1000E09A) < 0x1E0)
			v19 = 0;
		v20 = g_data.dword_1000E09A < v19;
		v13 = g_data.dword_1000E09A == v19;
		g_data.dword_1000E09A -= v19;
		if (v20 || v13)
			goto LABEL_35;
		g_data.dword_1000E09E = v19;
		while (1)
		{
			g_data.dword_1000E07C = (int)v18;
			v21 = *v9;
			v22 = v9 + 1;
			v23 = (unsigned int)&v22[v21];
			if ((unsigned int)v18 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if ((unsigned int)v18 < g_data.dword_1000E060 && (unsigned int)v22 < v23)
				{
					v28 = *v22;
					v27 = v22 + 1;
				LABEL_26:
					v32 = v28;
					v33 = (unsigned int)v18 + (v28 & 0x7F);
					if (v33 > g_data.dword_1000E060)
						v33 = g_data.dword_1000E060;
					v14 = (char)(v32 & 0xC0) < 0;
					v34 = v33 - (DWORD)v18;
					if (v14)
					{
						if (*v27)
						{
							memset(v18, g_data.dword_1000E0CE, v34);
							result = g_data.dword_1000E06C(v36, v37);
						}
						else
						{
							result = g_data.dword_1000E06C(v36, v37);
						}
					}
					else
					{
						do
						{
							v35 = *v27++;
							*v18 = v7;
							v18 = (WORD*)((char *)v18 + 1);
							--v34;
						} while (v34);
						result = g_data.dword_1000E06C(v36, v37);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v22 < v23)
				{
					v24 = *v22;
					v25 = v22 + 1;
					if ((v24 & 0x80u) != 0)
					{
						v29 = v24 & 0x7F;
						v30 = *v25;
						v22 = v25 + 1;
						if (v30)
						{
							v18 = (WORD*)((char *)v18 + v29);
							if ((unsigned int)v18 > g_data.dword_1000E05C)
							{
								v31 = (char)v18;
								v18 = (WORD*)g_data.dword_1000E05C;
								v28 = (v31 - g_data.dword_1000E05C) | 0x80;
								v27 = v22 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v18 = (WORD*)((char *)v18 + v29);
							if ((unsigned int)v18 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v22 = &v25[v24];
						v18 = (WORD*)((char *)v18 + v24);
						if ((unsigned int)v18 > g_data.dword_1000E05C)
						{
							v26 = (int)v18 - g_data.dword_1000E05C;
							v18 = (WORD*)((char *)v18 - ((unsigned int)v18 - g_data.dword_1000E05C));
							v27 = &v22[-v26];
							v28 = v26;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += g_data.dword_1000E0BA;
			g_data.dword_1000E060 += g_data.dword_1000E0BA;
			v9 = (WORD*)v23;
			v18 = (WORD*)(g_data.dword_1000E0BA + g_data.dword_1000E07C);
			if (!--g_data.dword_1000E09A)
			{
			LABEL_35:
				v18 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

int x_sub_10009F13_DrawStruct(int a1, int a2, int a3, int a4, int a5, int a6)
{
	int v6; // eax@1
	int v7; // eax@1
	int v8; // ebx@1
	int v9; // edx@1
	WORD* v10; // esi@1
	int result; // eax@1
	int v12; // edx@1
	int v13; // edx@2
	bool v14; // zf@2
	bool v15; // sf@2
	unsigned __int8 v16; // of@2
	int v17; // ecx@3
	int v18; // edx@5
	unsigned int v19; // eax@7
	int v20; // edx@7
	unsigned int v21; // edi@7
	unsigned int v22; // eax@9
	bool v23; // cf@11
	unsigned __int16 v24; // ax@13
	BYTE *v25; // esi@13
	unsigned int v26; // ebp@13
	unsigned __int8 v27; // al@15
	BYTE *v28; // esi@15
	int v29; // ecx@17
	BYTE *v30; // esi@17
	char v31; // al@17
	int v32; // ecx@18
	char v33; // al@18
	char v34; // cl@22
	char v35; // cl@26
	unsigned int v36; // eax@26
	int v37; // ecx@28
	int v38; // eax@29
	int v39; // edx@29
	unsigned int v40; // ST00_4@29
	unsigned int v41; // eax@29
	unsigned int v42; // eax@29
	int v43; // eax@33
	int v44; // edx@34
	int v45; // ST04_4@34
	unsigned int v46; // ST00_4@34
	int v47; // eax@34
	unsigned int v48; // eax@34
	int v49; // [sp+8h] [bp+8h]@1
	int v50; // [sp+Ch] [bp+Ch]@1

	v6 = *(DWORD*)(a2 + 28);
	g_data.dword_1000E0B6 = *(DWORD*)v6;
	g_data.dword_1000E0BA = 2 * *(DWORD*)(v6 + 4);
	g_data.dword_1000E0BE = *(DWORD*)(v6 + 8);
	g_data.dword_1000E0C2 = *(DWORD*)(v6 + 12);
	g_data.dword_1000E0C6 = *(DWORD*)(v6 + 16);
	g_data.dword_1000E0CA = *(DWORD*)(v6 + 20);
	g_data.dword_1000E0CE = *(DWORD*)(a2 + 20);
	g_data.dword_1000E0D2 = *(DWORD*)(a2 + 24);
	g_data.dword_1000E068 = *(DWORD*)(a2 + 16);
	v7 = (unsigned __int16)g_result.greenMask << 16;
	LOWORD(v7) = g_result.blueMask | g_result.redMask;
	g_data.dword_1000E084 = v7;
	g_data.dword_1000E088 = v7 | 2 * v7;
	g_data.dword_1000E08C = a4;
	g_data.dword_1000E090 = a3;
	g_data.dword_1000E094 = a1;
	g_data.dword_1000E078 = a2;
	v8 = g_data.dword_1000E0CE;
	g_data.smallRect.Left = g_data.dword_1000E0BE;
	g_data.smallRect.Right = g_data.dword_1000E0C6;
	g_data.smallRect.Top = g_data.dword_1000E0C2;
	g_data.smallRect.Bottom = g_data.dword_1000E0CA;
	v49 = *(WORD*)g_data.dword_1000E0D2 + a5;
	v50 = *(WORD*)(g_data.dword_1000E0D2 + 2) + a6;
	v9 = *(WORD*)(g_data.dword_1000E0D2 + 4) + 1;
	v10 = (WORD*)(g_data.dword_1000E0D2 + 9);
	g_data.dword_1000E09A = *(WORD*)(g_data.dword_1000E0D2 + 6);
	g_data.dword_1000E064 = v9;
	result = (unsigned __int16)g_data.dword_1000E0C2;
	v12 = v50 - (unsigned __int16)g_data.dword_1000E0C2;
	if (v50 < (unsigned __int16)g_data.dword_1000E0C2)
	{
		v50 = (unsigned __int16)g_data.dword_1000E0C2;
		v13 = -v12;
		v16 = __OFSUB__(g_data.dword_1000E09A, v13);
		v14 = g_data.dword_1000E09A == v13;
		v15 = g_data.dword_1000E09A - v13 < 0;
		g_data.dword_1000E09A -= v13;
		if ((unsigned __int8)(v15 ^ v16) | v14)
			return result;
		v17 = v13;
		do
		{
			LOWORD(result) = *v10;
			v10 = (WORD*)((char *)v10 + result + 2);
			--v17;
		} while (v17);
	}
	result = (unsigned __int16)g_data.smallRect.Bottom + 1;
	v18 = v50 + g_data.dword_1000E09A - result;
	if (v50 + g_data.dword_1000E09A <= result
		|| (v16 = __OFSUB__(g_data.dword_1000E09A, v18),
			v14 = g_data.dword_1000E09A == v18,
			v15 = g_data.dword_1000E09A - v18 < 0,
			g_data.dword_1000E09A -= v18,
			!((unsigned __int8)(v15 ^ v16) | v14)))
	{
		v19 = (unsigned int)(v50 * g_data.dword_1000E0BA) >> 1;
		g_data.dword_1000E05C = ((unsigned int)g_data.dword_1000E0B6 >> 1) + v19 + (unsigned __int16)g_data.smallRect.Left;
		v20 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v19 + 1;
		g_data.dword_1000E060 = ((unsigned int)g_data.dword_1000E0B6 >> 1) + (unsigned __int16)g_data.smallRect.Right + v19 + 1;
		v21 = v49 + v19 + ((unsigned int)g_data.dword_1000E0B6 >> 1);
		g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000A15C;
		if (g_data.dword_1000E064 + v21 < g_data.dword_1000E060)
			g_data.dword_1000E06C = (int(_cdecl *)(DWORD, DWORD))loc_1000A168;
		g_data.dword_1000E09E = g_data.dword_1000E09A;
		v22 = v50 + g_data.dword_1000E09A - 480;
		if ((unsigned int)(v50 + g_data.dword_1000E09A) < 0x1E0)
			v22 = 0;
		v23 = g_data.dword_1000E09A < v22;
		v14 = g_data.dword_1000E09A == v22;
		g_data.dword_1000E09A -= v22;
		if (v23 || v14)
			goto LABEL_37;
		g_data.dword_1000E09E = v22;
		while (1)
		{
			g_data.dword_1000E07C = v21;
			v24 = *v10;
			v25 = v10 + 1;
			v26 = (unsigned int)&v25[v24];
			if (v21 >= g_data.dword_1000E05C)
			{
			LABEL_23:
				if (v21 < g_data.dword_1000E060 && (unsigned int)v25 < v26)
				{
					v31 = *v25;
					v30 = v25 + 1;
				LABEL_26:
					v35 = v31;
					v36 = v21 + (v31 & 0x7F);
					if (v36 > g_data.dword_1000E060)
						v36 = g_data.dword_1000E060;
					v15 = (char)(v35 & 0xC0) < 0;
					v37 = v36 - v21;
					if (v15)
					{
						if (*v30)
						{
							v43 = *(DWORD*)(g_data.dword_1000E0CE + 2 * *v30);
							do
							{
								LOWORD(v20) = *(WORD *)(2 * v21);
								v44 = v20 << 16;
								LOWORD(v44) = *(WORD *)(2 * v21);
								v45 = v43;
								v46 = g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v44) * g_data.dword_1000E068 >> 5) | ((g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v44) * g_data.dword_1000E068 >> 5)) >> 16);
								LOWORD(v44) = v43;
								v47 = v43 << 16;
								LOWORD(v47) = v44;
								v48 = g_data.dword_1000E084 & ((31 - g_data.dword_1000E068) * (g_data.dword_1000E084 & (unsigned int)v47) >> 5);
								v20 = v48 | (v48 >> 16);
								*(WORD *)(2 * v21) = v46 + v20;
								v43 = v45;
								++v21;
								--v37;
							} while (v37);
							result = g_data.dword_1000E06C(v49, v50);
						}
						else
						{
							result = g_data.dword_1000E06C(v49, v50);
						}
					}
					else
					{
						do
						{
							v38 = *v30++;
							LOWORD(v20) = *(WORD*)(2 * v21);
							v39 = v20 << 16;
							LOWORD(v39) = *(WORD*)(2 * v21);
							v40 = g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v39) * g_data.dword_1000E068 >> 5) | ((g_data.dword_1000E084 & ((g_data.dword_1000E084 & (unsigned int)v39) * g_data.dword_1000E068 >> 5)) >> 16);
							LOWORD(v39) = *(DWORD*)(v8 + 2 * v38);
							v41 = *(DWORD*)(v8 + 2 * v38) << 16;
							LOWORD(v41) = v39;
							v42 = g_data.dword_1000E084 & ((31 - g_data.dword_1000E068) * (g_data.dword_1000E084 & v41) >> 5);
							v20 = v42 | (v42 >> 16);
							*(WORD*)(2 * v21++) = v40 + v20;
							--v37;
						} while (v37);
						result = g_data.dword_1000E06C(v49, v50);
					}
					return result;
				}
			}
			else
			{
				while ((unsigned int)v25 < v26)
				{
					v27 = *v25;
					v28 = v25 + 1;
					if ((v27 & 0x80u) != 0)
					{
						v32 = v27 & 0x7F;
						v33 = *v28;
						v25 = v28 + 1;
						if (v33)
						{
							v21 += v32;
							if (v21 > g_data.dword_1000E05C)
							{
								v34 = v21;
								v21 = g_data.dword_1000E05C;
								v31 = (v34 - g_data.dword_1000E05C) | 0x80;
								v30 = v25 - 1;
								goto LABEL_26;
							}
						}
						else
						{
							v21 += v32;
							if (v21 > g_data.dword_1000E05C)
								goto LABEL_23;
						}
					}
					else
					{
						v25 = &v28[v27];
						v21 += v27;
						if (v21 > g_data.dword_1000E05C)
						{
							v29 = v21 - g_data.dword_1000E05C;
							v21 -= v21 - g_data.dword_1000E05C;
							v30 = &v25[-v29];
							v31 = v29;
							goto LABEL_26;
						}
					}
				}
			}
			g_data.dword_1000E05C += (unsigned int)g_data.dword_1000E0BA >> 1;
			g_data.dword_1000E060 += (unsigned int)g_data.dword_1000E0BA >> 1;
			v10 = (WORD*)v26;
			v21 = ((unsigned int)g_data.dword_1000E0BA >> 1) + g_data.dword_1000E07C;
			v20 = g_data.dword_1000E09A-- - 1;
			if (!g_data.dword_1000E09A)
			{
			LABEL_37:
				v21 -= 307200;
				g_data.dword_1000E05C -= 307200;
				g_data.dword_1000E060 -= 307200;
				result = g_data.dword_1000E09E;
				g_data.dword_1000E09E = 0;
				g_data.dword_1000E09A = result;
				if (!result)
					return result;
			}
		}
	}
	return result;
}

__int32 x_sub_100016D0_DrawStruct(unsigned int a1, int a2)
{
	LONG v2; // ecx@1
	__int32 result; // eax@1
	LONG v4; // edx@2
	LONG v5; // edx@3
	LONG v6; // esi@4
	unsigned int v7; // ecx@9
	int v8; // edx@9
	char *pPrimaryBuffer; // esi@9
	unsigned int v10; // eax@9
	int v11; // edi@9
	int v12; // ebp@9
	unsigned int v13; // ecx@10
	bool v14; // cf@10
	int v15; // ecx@10
	int v16; // edx@11
	int v17; // ecx@11
	int v18; // ecx@17
	int v19; // [sp-10h] [bp-1Ch]@11

	v2 = *(DWORD*) (a2 + 8);
	result = g_result.screen.left;
	if (v2 >= g_result.screen.left
		|| (v4 = v2 - g_result.screen.left + *(DWORD*) (a2 + 16),
			v2 = g_result.screen.left,
			*(DWORD*) (a2 + 16) = v4,
			*(DWORD*) (a2 + 8) = result,
			v4 > 0))
	{
		v5 = *(DWORD*) (a2 + 12);
		result = g_result.screen.top;
		if (v5 >= g_result.screen.top
			|| (v6 = v5 - g_result.screen.top + *(DWORD*) (a2 + 20),
				v5 = g_result.screen.top,
				*(DWORD*) (a2 + 20) = v6,
				*(DWORD*) (a2 + 12) = result,
				v6 > 0))
		{
			if (v2 + *(DWORD*) (a2 + 16) - 1 <= g_result.screen.right
				|| (result = g_result.screen.right - v2 + 1, *(DWORD*) (a2 + 16) = result, result > 0))
			{
				if (v5 + *(DWORD*) (a2 + 20) - 1 <= g_result.screen.bottom
					|| (result = g_result.screen.bottom - v5 + 1, *(DWORD*) (a2 + 20) = result, result > 0))
				{
					v7 = *(DWORD*) (a2 + 12);
					v8 = *(DWORD*) (a2 + 20);
					pPrimaryBuffer = (char *) &g_result.a_buffer1[640 * *(DWORD*) (a2 + 12)]
						+ 2 * *(DWORD*) (a2 + 8)
						+ g_result.offset;
					v10 = *(DWORD*) (a2 + 24);
					v11 = -*(DWORD*) (a2 + 16);
					v12 = g_result.g_result.dword_1000E468;
					result = (g_result.g_result.dword_1000E468 & v10) >> 1;
					if (v7 < g_result.surfaceHeight)
					{
						v13 = v8 + v7;
						v14 = v13 < g_result.surfaceHeight;
						v15 = v13 - g_result.surfaceHeight;
						if (v14 || v15 == 0)
							goto LABEL_17;
						v16 = v8 - v15;
						v19 = v15;
						v17 = 0;
						do
						{
							v17 -= v11;
							do
							{
								LOWORD(a1) = *(WORD*) pPrimaryBuffer;
								a1 = result + ((v12 & a1) >> 1);
								*(WORD*) pPrimaryBuffer = a1;
								pPrimaryBuffer += 2;
								--v17;
							} while (v17);
							pPrimaryBuffer += 2 * v11 + 1280;
							--v16;
						} while (v16);
						v8 = v19;
					}
					pPrimaryBuffer -= 614400;
				LABEL_17:
					v18 = 0;
					do
					{
						v18 -= v11;
						do
						{
							LOWORD(a1) = *(WORD*) pPrimaryBuffer;
							a1 = result + ((v12 & a1) >> 1);
							*(WORD*) pPrimaryBuffer = a1;
							pPrimaryBuffer += 2;
							--v18;
						} while (v18);
						pPrimaryBuffer += 2 * v11 + 1280;
						--v8;
					} while (v8);
					return result;
				}
			}
		}
	}
	return result;
}

//----- (100024C0) --------------------------------------------------------
int _cdecl x_sub_100024C0(int a1, int a2, int a3, int a4, int a5)
{
	unsigned __int64 v5; // rax@2
	int v6; // eax@9
	int v7; // eax@19
	int v8; // esi@21
	int v9; // eax@23
	char *pPrimaryBuffer; // edi@25
	int v11; // ecx@28
	int v12; // ecx@33
	char *v13; // edi@35
	int v14; // ecx@35
	int v15; // ecx@40
	int v16; // ecx@50
	int v18; // [sp-18h] [bp-28h]@33
	int v19; // [sp-14h] [bp-24h]@33
	char *v20; // [sp-10h] [bp-20h]@26
	char *v21; // [sp-10h] [bp-20h]@33
	char *pData; // [sp+Ch] [bp-4h]@1
	int v23; // [sp+18h] [bp+8h]@1
	int v24; // [sp+1Ch] [bp+Ch]@1
	int v25; // [sp+20h] [bp+10h]@12

	pData = (char *) &unk_100AEEA8 + 2 * (g_result.offset / 2 % 640);
	g_result.dword_10018E94 = g_result.screen.right - g_result.screen.left;
	v23 = a1 - g_result.screen.left;
	g_result.dword_10018E90 = g_result.screen.bottom + 1 - g_result.screen.top;
	v24 = a2 - g_result.screen.top;
	g_result.dword_10018E80 = 0;
	if (v24 < 0)
	{
		LODWORD(v5) = v24;
		a4 += v24;
		if (a4 <= 0)
			return v5;
		v24 = 0;
		g_result.dword_10018E80 |= 1u;
	}
	if (v24 >= g_result.dword_10018E90)
	{
		LODWORD(v5) = v24;
		a4 = v24 + a4 - (g_result.dword_10018E90 - 1);
		if (a4 >= 0)
			return v5;
		v24 = g_result.dword_10018E90 - 1;
		g_result.dword_10018E80 |= 1u;
	}
	if ((a4 + v24 + 1 < 0) ^ __OFADD__(a4, v24 + 1))
	{
		a4 -= a4 + v24 + 1 + 1;
		g_result.dword_10018E80 |= 2u;
	}
	v6 = a4 + v24 - 1;
	if (v6 >= g_result.dword_10018E90)
	{
		a4 += g_result.dword_10018E90 - v6;
		g_result.dword_10018E80 |= 2u;
	}
	if (v23 < 1)
	{
		LODWORD(v5) = v23;
		v25 = v23 + a3;
		if (v25 <= 1)
			return v5;
		v23 = 1;
		a3 = v25 - 1;
		g_result.dword_10018E80 |= 4u;
	}
	if (v23 >= g_result.dword_10018E94 + 2)
	{
		LODWORD(v5) = v23 + 1;
		a3 = v23 + 1 + a3 - (g_result.dword_10018E94 + 2);
		if (a3 >= 0)
			return v5;
		v23 = g_result.dword_10018E94 + 1;
		g_result.dword_10018E80 |= 4u;
	}
	if ((a3 + v23 < 0) ^ __OFADD__(a3, v23))
	{
		a3 = -v23;
		g_result.dword_10018E80 |= 8u;
	}
	v7 = a3 + v23 - 2;
	if (v7 > g_result.dword_10018E94)
	{
		a3 += g_result.dword_10018E94 - v7;
		g_result.dword_10018E80 |= 8u;
	}
	v8 = 2 * v24;
	g_result.g_result.dword_10018E84 = 2;
	if (a3 < 0)
	{
		g_result.g_result.dword_10018E84 = -g_result.g_result.dword_10018E84;
		a3 = -a3;
	}
	g_result.dword_10018E8C = 1;
	v9 = g_result.widthInBytes;
	if (a4 < 0)
	{
		v9 = -g_result.widthInBytes;
		a4 = -a4;
		v8 = -2 * v24;
		g_result.dword_10018E8C = -g_result.dword_10018E8C;
	}
	g_result.dword_10018E88 = v9;
	v5 = (unsigned int) g_result.widthInBytes * (unsigned __int64) (unsigned int) v24;
	pPrimaryBuffer = (char *) g_result.a_buffer1
		+ g_result.screen.left
		+ g_result.screen.left
		+ g_result.widthInBytes * g_result.screen.top
		+ v23
		+ v23
		+ v5
		+ g_result.offset;
	LODWORD(v5) = a5;
	if (!(g_result.dword_10018E80 & 1))
	{
		--a4;
		v20 = pPrimaryBuffer;
		if (pPrimaryBuffer >= pData)
			pPrimaryBuffer -= 614400;
		*(WORD*) pPrimaryBuffer = a5;
		v11 = a3 - 1;
		if (a3 - 1 > 0)
		{
			do
			{
				pPrimaryBuffer += g_result.g_result.dword_10018E84;
				*(WORD*) pPrimaryBuffer = a5;
				--v11;
			} while (v11);
			*(WORD*) pPrimaryBuffer = a5;
		}
		pPrimaryBuffer = &v20[g_result.dword_10018E88];
		HIDWORD(v5) += g_result.dword_10018E8C;
		v8 += 2;
	}
	if (!(g_result.dword_10018E80 & 8))
	{
		v21 = pPrimaryBuffer;
		v19 = v8;
		v18 = HIDWORD(v5);
		v12 = 2 * a3 - 2;
		if (g_result.g_result.dword_10018E84 < 0)
			v12 = -v12;
		v13 = &pPrimaryBuffer[v12];
		v14 = a4 - 1;
		if (a4 - 1 > 0)
		{
			do
			{
				if (v13 >= pData)
					v13 -= 614400;
				*(WORD*) v13 = a5;
				v13 += g_result.dword_10018E88;
				v8 += 2;
				HIDWORD(v5) += g_result.dword_10018E8C;
				--v14;
			} while (v14);
		}
		HIDWORD(v5) = v18;
		v8 = v19;
		pPrimaryBuffer = v21;
	}
	v15 = a4 - 1;
	if (g_result.dword_10018E80 & 4)
	{
		pPrimaryBuffer += v15 * g_result.dword_10018E88;
	}
	else if (v15 > 0)
	{
		do
		{
			if (pPrimaryBuffer >= pData)
				pPrimaryBuffer -= 614400;
			*(WORD*) pPrimaryBuffer = a5;
			pPrimaryBuffer += g_result.dword_10018E88;
			v8 += 2;
			HIDWORD(v5) += g_result.dword_10018E8C;
			--v15;
		} while (v15);
	}
	if ((unsigned int) a4 >= 1 && !(g_result.dword_10018E80 & 2))
	{
		if (pPrimaryBuffer >= pData)
			pPrimaryBuffer -= 614400;
		*(WORD*) pPrimaryBuffer = a5;
		v16 = a3 - 1;
		if (a3 - 1 > 0)
		{
			do
			{
				pPrimaryBuffer += g_result.g_result.dword_10018E84;
				*(WORD*) pPrimaryBuffer = a5;
				--v16;
			} while (v16);
			*(WORD*) pPrimaryBuffer = a5;
		}
	}
	return v5;
}
#endif
#pragma endregion