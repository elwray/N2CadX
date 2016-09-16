#ifndef CADRAW_H
#define CADRAW_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

#define DIRECTDRAW_VERSION 0x0700
#include <ddraw.h>


#pragma pack(push)
#pragma pack(1)
struct _SCADrawResult
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
	WORD align1;
	DWORD dword_E460;
	DWORD dword_E464;
	DWORD dword_E468;
	WORD word_E46C;
	WORD word_E46E;
	DWORD dword_E470;
	DWORD align2;

	DWORD dword_1000E478;
	DWORD pitch;
	DWORD dword_1000E480;

	BYTE a_unsuded[648]; // 648 = 0x288
	BYTE a_unknown2[8312]; // 2078 = 0x8312
	WORD a_unknown3[16384]; // 16384 = 0x4000

	BYTE a_smallBuffer1[512];
	BYTE a_smallBuffer2[512];
	BYTE a_smallBuffer3[512];

	HWND handle;
	BOOL fullscreen;
	IDirectDraw7* p_ddraw;
	IDirectDrawSurface7* p_ddrawSurface;

	INT (*p_fnInitialize)();
	INT (*p_fnInitializeDirectDraw)(HWND handle, BOOL fullscreen);
	IDirectDraw7* (*p_fnShutdownDirectDrawFullscreen)();
	INT (*p_fnSetDisplayMode)(INT, INT);
	DWORD (*p_fnSetPixelFormatMasks)(DWORD, DWORD, DWORD);
	IDirectDrawSurface7* (*p_fnShutdownDirectDrawSurface)();
	BOOL (*p_fnLockSurface)();
	INT (*p_fnUnlockSurface)();
	INT (*p_fn5)(); // g_pFnX_sub_10001D00
	INT (*p_fn6)(); // g_pFnX_sub_10001BF0
	INT (*p_fn7)(); // g_pFnX_sub_10001C80
	INT (*p_fn8)(); // g_pFnX_sub_10003400
	INT (*p_fn9)(); // g_pFnX_sub_10003490
	INT (*p_fn10)(); // g_pFnX_sub_10003430
	INT (*p_fn11)(); // g_pFnX_sub_10001EA0_call
	INT (*p_fn12)(); // g_pFnX_sub_10001F20_call
	INT (*p_fn13)(); // g_pFnSub_10004460
	INT (*p_fn14)(); // g_pFnSub_10004786
	INT (*p_fn15)(); // g_pFnSub_10004AB6
	INT (*p_fn16)(); // g_pFnSub_10005F01
	INT (*p_fn17)(); // g_pFnSub_10005B96
	INT (*p_fn18)(); // g_pFnSub_1000586C
	INT (*p_fn19)(); // g_pFnSub_10007678
	INT (*p_fn20)(); // g_pFnSub_10001F90
	INT(*p_fnDrawPointToBuffer2)(INT, INT, WORD);
	INT (*p_fn22)(); // g_pFnX_sub_10001EE0_call
	INT (*p_fn23)(); // g_pFnX_sub_10001F50_call
	INT (*p_fn24)(); // g_pFnSub_10003090_1
	INT (*p_fn25)(); // g_pFnSub_100051AF
	INT (*p_fn26)(); // g_pFnSub_10006586
	INT (*p_fn27)(); // g_pFnSub_1000625D
	INT (*p_fn28)(); // g_pFnSub_10004E80
	INT (*p_fn29)(); // g_pFnSub_10006C48
	INT (*p_fn30)(); // g_pFnSub_10006FE2
	INT (*p_fn31)(); // g_pFnSub_1000687D
	INT (*p_fn32)(); // g_pFnSub_100073B2
	INT (*p_fn33)(); // g_pFnSub_10007D0C
	INT (*p_fn34)(); // g_pFnSub_10007938
	INT (*p_fn35)(); // g_pFnSub_10005493
	INT (*p_fnDrawPointToBuffer1)(INT, INT, WORD);
	INT (*p_fnDrawFilledRectToBuffer1)(INT, INT, INT, INT, WORD);
	INT (*p_fnDrawEmptyRectToBuffer1)(INT, INT, INT, INT, WORD);
	INT (*p_fn39)(); // g_pFnDrawHorizontalLine
	INT (*p_fn40)(); // g_pFnDrawVerticalLine
	INT (*p_fn41)(); // g_pFnSub_100016D0 // __int32 __usercall x_sub_100016D0_DrawStruct@<eax>(unsigned int a1@<ebx>, int a2@<ebp>)
	INT (*p_fn42)(); // g_pFnSub_100024C0
	INT (*p_fn43)(); // g_pFnSub_10002030
	INT (*p_fn44)(); // g_pFnSub_10002C70 // signed int __usercall sub_2AA2C70@<eax>(int a1@<ebp>)
	INT (*p_fn45)(); // g_pFnCopyFromPrimaryBufferToDirectDrawSurface
	INT (*p_fn46)(); // g_pFnSub_10003090_2
	INT (*p_fn47)(); // g_pFnDrawImage
	INT (*p_fn48)(); // g_pFnSub_10002860
	INT (*p_fn49)(); // g_pFnSub_100027C0
	BOOL (*p_fnCopyData64ToSurface)(INT, INT, INT, INT, INT, INT, INT, WORD*);
	INT (*p_fn51)(); // g_pFnSub_10002B10
	INT (*p_fn52)(); // g_pFnSub_100088E9
	INT (*p_fn53)(); // g_pFnSub_10009F13
	INT (*p_fn54)(); // g_pFnSub_100098D3
	IDirectDraw7 (*p_fnShutdownDirectDraw)();

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
	WORD a_buffer1[307200];
	BYTE a_unknown5[1316];
	WORD a_buffer2[307200];
	BYTE a_unknown6[1316];
	WORD a_buffer3[307200];
	BYTE a_unknown7[1280];
	DWORD dword_101DBDF0;
	DWORD dword_101DBDF4;
	DWORD dword_101DBDF8;
	DWORD dword_101DBDFC;
};
#pragma pack(pop)

// int __usercall sub_2AA3090@<eax>(int a1@<ebp>)
// int __usercall sub_2AA4460@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7)
// int __usercall sub_2AA4786@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7)
// int __usercall sub_2AA4AB6@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8)
// int __usercall sub_2AA4E80@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8, int a9)
// int __usercall sub_2AA51AF@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7, int a8)
// int __usercall sub_2AA5493@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7, int a8, int a9)
// int __usercall sub_2AA586C@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7, int a8)
// int __usercall sub_2AA5B96@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8, int a9)
// int __usercall sub_2AA5F01@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8, int a9)
// int __usercall sub_2AA625D@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7, int a8)
// int __usercall sub_2AA6586@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7)
// int __usercall sub_2AA687D@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8, int a9)
// int __usercall sub_2AA6C48@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8, int a9)
// int __usercall sub_2AA6FE2@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8, int a9)
// int __usercall sub_2AA73B2@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7, int a8)
// int __usercall sub_2AA7678@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, int a7, int a8)
// int __usercall sub_2AA7938@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8)
// int __usercall sub_2AA7D0C@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6, __int16 a7, int a8, int a9)
// __int16 __fastcall x_sub_100087A1(int a1, int a2)
// int __usercall x_sub_100088E9_DrawStruct@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6)
// int __usercall x_sub_100095A8_DrawStruct@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6)
// int __usercall x_sub_100098D3_DrawStruct@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6)
// int __usercall x_sub_10009F13_DrawStruct@<eax>(int a1@<ebx>, int a2@<ebp>, int a3@<edi>, int a4@<esi>, int a5, int a6)

typedef struct _SCADrawResult SCADrawResult;


__declspec(dllexport) SCADrawResult* CADraw_Init();


INT NotImplemented(); // Empty method used instead of not implemented methods.

static INT Initialize();
INT InitializeDirectDraw(HWND handle, BOOL fullscreen);
IDirectDrawSurface7* ShutdownDirectDrawSurface();
IDirectDraw7* ShutdownDirectDraw();
IDirectDraw7* ShutdownDirectDrawFullscreen();
INT SetDisplayMode(INT width, INT height);
INT DrawPointToBuffer1(INT x, INT y, WORD color);
INT DrawPointToBuffer2(INT x, INT y, WORD color);
BOOL LockSurface();
BOOL UnlockSurface();
BOOL CopyData64ToSurface(INT sourceX, INT sourceY, INT destWidth, INT destHeight, INT destX, INT destY, INT sourceWidth,
	WORD* p_source);
DWORD SetPixelFormatMasks(DWORD redBitMask, DWORD greenBitMask, DWORD blueBitMask);

// Code generated by Hex Rays.
INT DrawImageToPrimaryBuffer(INT sourceX, INT sourceY, INT a3, INT a4, INT destX, INT destY, INT destWidth,
	CHAR* p_dest);
INT DrawFilledRectToBuffer1(INT x, INT y, INT width, INT height, WORD color);
INT sub_10002030(INT x, INT y, INT iWidth, WORD color, INT a5);
INT x_sub_10001D00(INT x, INT y);
INT x_sub_10001EA0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7);
INT x_sub_10001EE0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6);
INT x_sub_10001F20_call(INT a1, INT a2, INT a3);
INT x_sub_10001F50_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7);
INT CopyRectBuffer1ToBuffer2(INT x, INT y, INT iWidth, INT iHeight);
INT DrawVerticalLineToBuffer1(INT x, INT y, INT length, WORD color);
INT DrawHorizontalLineToBuffer1(INT x, INT y, INT length, WORD color);
INT x_sub_100027C0();
INT x_sub_10002860_RectAndFFFBFFFBu(INT x, INT y, INT width, INT height);
INT DrawEmptyRectToBuffer1(INT x, INT y, INT width, INT height, WORD color);

INT x_sub_100028F0(int x, unsigned int y, unsigned int iWidth, int iHeight, int a5);

#endif // CADRAW_H