#include "CADraw.h"
#include "Constants.h"

SCADrawInitResult	g_sCADRaw = { 0, };

LPDIRECTDRAW		g_lpDirectDraw = NULL;
LPDIRECTDRAWSURFACE	g_lpSurface = NULL;
LPVOID				g_pSurfaceData = NULL;

HWND g_hWnd			= NULL;
BOOL g_bFullscreen	= FALSE;

void SetScreenVariables()
{
	//g_dwWidth = 640;
	//g_dwHeight = 480;
	//g_dwWidth2 = 1280;
	//g_pdwBuffer = 0;
	//g_dwHeightSecond = 480;

	LPRECT lpRect = &g_sCADRaw.rcScreenRect;
	SetRect(lpRect, 0, 0, Screen_Width_1, Screen_Height_1);
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

void ReleaseSurface()
{
	if (g_lpSurface != NULL)
	{
		g_lpSurface->Release();
		g_lpSurface = NULL;
	}
}

void ShutdownDirectDraw()
{
	ReleaseSurface();

	if (g_lpDirectDraw != NULL)
	{
		g_lpDirectDraw->RestoreDisplayMode();
		ReleaseDirectDraw();
	}
}

void ReleaseDirectDraw()
{
	if (g_lpDirectDraw != NULL)
	{
		g_lpDirectDraw->Release();
		g_lpDirectDraw = NULL;
	}
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
	return FALSE;
}

BOOL UnlockSurface()
{
	return FALSE;
}

BOOL CopyDataToDirectDrawSurface()
{
	return FALSE;
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