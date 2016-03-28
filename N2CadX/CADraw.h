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
	BYTE a_unknown2[648];
	BYTE byte_1000E70C;
	BYTE a_unknown3[8311];
	WORD word_10010784;
	BYTE a_unknown4[32766];
	BYTE a_smallBuffer1[512];
	BYTE a_smallBuffer2[512];
	BYTE a_smallBuffer3[512];

	HWND handle;
	BOOL fullscreen;
	IDirectDraw* p_ddraw;
	IDirectDrawSurface* p_ddrawSurface;

	INT (*p_fnInitialize)();
	INT (*p_fnInitializeDirectDraw)(HWND handle, BOOL fullscreen);
	IDirectDraw* (*p_fnShutdownDirectDrawFullscreen)();
	INT (*p_fnSetDisplayMode)(INT, INT);
	INT (*pFn1)();
	INT (*pFn2)();
	INT (*pFn3)();
	INT (*pFn4)();
	INT (*pFn5)();
	INT (*pFn6)();
	INT (*pFn7)();
	INT (*pFn8)();
	INT (*pFn9)();
	INT (*pFn10)();
	INT (*pFn11)();
	INT (*pFn12)();
	INT (*pFn13)();
	INT (*pFn14)();
	INT (*pFn15)();
	INT (*pFn16)();
	INT (*pFn17)();
	INT (*pFn18)();
	INT (*pFn19)();
	INT (*pFn20)();
	INT (*pFn21)();
	INT (*pFn22)();
	INT (*pFn23)();
	INT (*pFn24)();
	INT (*pFn25)();
	INT (*pFn26)();
	INT (*pFn27)();
	INT (*pFn28)();
	INT (*pFn29)();
	INT (*pFn30)();
	INT (*pFn31)();
	INT (*pFn32)();
	INT (*pFn33)();
	INT (*pFn34)();
	INT (*pFn35)();
	INT (*pFn36)();
	INT (*pFn37)();
	INT (*pFn38)();
	INT (*pFn39)();
	INT (*pFn40)();
	INT (*pFn41)();
	INT (*pFn42)();
	INT (*pFn43)();
	INT (*pFn44)();
	INT (*pFn45)();
	INT (*pFn46)();
	INT (*pFn47)();
	INT (*pFn48)();
	INT (*pFn49)();
	INT (*pFn50)();
	INT (*pFn51)();
	INT (*pFn52)();
	INT (*pFn53)();
	INT (*pFn54)();
	INT (*pFn55)();

	DWORD dword_10018E80;
	DWORD dword_10018E84;
	DWORD dword_10018E88;
	DWORD dword_10018E8C;
	DWORD dword_10018E90;
	DWORD dword_10018E94;
	DWORD dword_10018E98;
	DWORD dword_10018E9C;
	DWORD dword_10018EA0;
	DWORD dword_10018EA4;
	BYTE a_buffer1[307200];
	BYTE a_unknown5[1316];
	BYTE a_buffer2[307200];
	BYTE a_unknown6[1316];
	BYTE a_buffer3[307200];
	BYTE a_unknown7[1800];
	DWORD dword_101DBDF0;
	DWORD dword_101DBDF4;
	DWORD dword_101DBDF8;
	DWORD dword_101DBDFC;
};

typedef struct _SCADrawResult SCADrawResult;


SCADrawResult* CADraw_Init();


INT Initialize();
INT InitializeDirectDraw(HWND handle, BOOL fullscreen);
IDirectDrawSurface* ShutdownDirectDrawSurface();
IDirectDraw* ShutdownDirectDrawFullscreen();
INT SetDisplayMode(INT width, INT height);

// Not used methods.
IDirectDraw* ShutdownDirectDraw();

#endif // CADRAW_H