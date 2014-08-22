#include "CADraw.h"
#include "Constants.h"

SCADrawInitResult g_sCADRaw;

LPDIRECTDRAW g_lpDirectDraw = NULL;
LPDIRECTDRAWSURFACE g_lpSurface = NULL;

HWND g_hWnd = NULL;
BOOL g_bFullscreen = FALSE;

SCADrawInitResult* CADrawInit()
{
	return &g_sCADRaw;
}

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