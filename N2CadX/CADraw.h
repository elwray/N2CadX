#ifndef CADRAW_H
#define CADRAW_H

#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <ddraw.h>


#pragma pack(8)
typedef struct _SCADrawResult
{
	RECT screen;
	DWORD offset;
	DWORD surfaceHeight;
	DWORD width;
	DWORD height;
	DWORD widthInBytes;
	BYTE* p_buffer1;
	BYTE* p_buffer2;
	BYTE* p_buffer3;
	VOID* p_surface;
	DWORD redMask;
	DWORD greenMask;
	DWORD blueMask;
	WORD redOffset;
	WORD greenOffset;
	WORD blueOffset;
	WORD unknown1;
	DWORD dword_1000E460;
	DWORD dword_1000E464;
	DWORD dword_1000E468;
	WORD word_1000E46C;
	WORD word_1000E46E;
	DWORD dword_1000E470;
	// align
	DWORD dword_1000E478;
	DWORD pitch;
	DWORD dword_1000E480;
	BYTE unknown2[648];
	BYTE byte_1000E70C;
	BYTE unknown3[8311];
	WORD word_10010784;
	BYTE unknown4[32766];
	BYTE buffer1[512];
	BYTE buffer2[512];
	BYTE buffer3[512];

	HWND handle;
	BOOL fullscreen;
	IDirectDraw* p_ddraw;
	IDirectDrawSurface* p_ddrawSurface;

	INT (*p_fnInitialize)();
	INT (*p_fnInitializeDirectDraw)(HWND handle, BOOL fullscreen);
	IDirectDraw* (*p_fnShutdownDirectDrawFullscreen)();
	INT (*p_fnSetDisplayMode)(INT, INT);
};

typedef struct _SCADrawResult SCADrawResult;


SCADrawResult* CADraw_Init();


INT Initialize();
INT InitializeDirectDraw(HWND handle, BOOL fullscreen);
IDirectDrawSurface* ShutdownDirectDrawSurface();
IDirectDraw* ShutdownDirectDrawFullscreen();
INT SetDisplayMode(INT width, INT height);

#endif // CADRAW_H