#ifndef CADRAW_H
#define CADRAW_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

#define DIRECTDRAW_VERSION 0x0700
#include <ddraw.h>


#pragma pack(push, 1)
struct _SCADrawResult
{
	RECT screen;		// 02D5E418
	DWORD offset;
	DWORD surfaceHeight;
	DWORD width;
	DWORD height;
	DWORD widthInBytes;	// 02D5E438
	BYTE* p_buffer1;
	BYTE* p_buffer2;
	BYTE* p_buffer3;
	VOID* p_surface;
	DWORD redMask;		// 02D5E44C
	DWORD greenMask;
	DWORD blueMask;
	WORD redOffset;
	WORD greenOffset;
	WORD blueOffset;
	WORD align1;
	DWORD dword_E460;	// 02D5E460
	DWORD dword_E464;
	DWORD dword_E468;
	WORD word_E46C;
	WORD word_E46E;
	DWORD dword_E470;
	DWORD align2;

	DWORD dword_1000E478;	// 02D5E478
	DWORD pitch;
	DWORD dword_1000E480;

	BYTE a_unsuded[648]; // 648 = 0x288 02D5E484
	BYTE a_unknown2[8312]; // 2078 = 0x8312
	WORD a_unknown3[16384]; // 16384 = 0x4000

	BYTE a_smallBuffer1[512];	// 02D68784
	BYTE a_smallBuffer2[512];
	BYTE a_smallBuffer3[512];

	HWND handle;				// 02D68D84
	BOOL fullscreen;
	IDirectDraw* p_ddraw;
	IDirectDrawSurface* p_ddrawSurface;

	INT (*p_fnInitialize)();	// 02D68D94
	BOOL (*p_fnInitializeDirectDraw)(HWND handle, BOOL fullscreen);
	IDirectDraw* (*p_fnShutdownDirectDrawFullscreen)();
	INT (*p_fnSetDisplayMode)(INT, INT);
	DWORD (*p_fnSetPixelFormatMasks)(DWORD, DWORD, DWORD);
	IDirectDrawSurface* (*p_fnShutdownDirectDrawSurface)();
	BOOL (*p_fnLockSurface)();
	BOOL (*p_fnUnlockSurface)();
	INT (*p_fn5)(INT x, INT y); // g_pFnX_sub_10001D00
	INT (*p_fn6)(WORD*, WORD*, INT count); // g_pFnX_sub_10001BF0
	INT (*p_fn7)(BYTE*, BYTE*, INT count); // g_pFnX_sub_10001C80
	INT (*p_fn8)(unsigned char*, int); // g_pFnX_sub_10003400
	unsigned char (*p_fn9)(int, int, unsigned char*, int, int); // g_pFnX_sub_10003490
	unsigned char (*p_fn10)(int, int, int, int, int); // g_pFnX_sub_10003430
	INT (*p_fn11)(int, int, int, int, int, int, int); // g_pFnX_sub_10001EA0_call
	INT (*p_fn12)(int, int, int); // g_pFnX_sub_10001F20_call
	INT (*p_fn13)(INT, INT, INT); // g_pFnSub_10004460
	INT (*p_fn14)(); // g_pFnSub_10004786
	INT (*p_fn15)(); // g_pFnSub_10004AB6
	INT (*p_fn16)(INT, INT, SHORT, INT, INT); // g_pFnSub_10005F01
	INT (*p_fn17)(INT, INT, SHORT, INT, INT); // g_pFnSub_10005B96
	INT (*p_fn18)(INT, INT, INT, INT); // g_pFnSub_1000586C
	INT (*p_fn19)(); // g_pFnSub_10007678
	INT (*p_fnCopyRectBuffer1ToBuffer2)(INT, INT, INT, INT); // g_pFnSub_10001F90
	INT(*p_fnDrawPointToBuffer2)(INT, INT, WORD);
	INT (*p_fn22)(int, int, int, int, int, int); // g_pFnX_sub_10001EE0_call
	INT (*p_fn23)(int, int, int, int, int, int, int); // g_pFnX_sub_10001F50_call
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
	INT (*p_fnDrawHorizontalLineToBuffer1)(INT, INT, INT, WORD);
	INT (*p_fnDrawVerticalLineToBuffer1)(INT, INT, INT, WORD);
	INT (*p_fn41)(); // g_pFnSub_100016D0 // __int32 __usercall x_sub_100016D0_DrawStruct@<eax>(unsigned int a1@<ebx>, int a2@<ebp>)
	INT (*p_fn42)(); // g_pFnSub_100024C0
	INT (*p_fn43)(INT, INT, INT, WORD, INT); // g_pFnSub_10002030
	INT (*p_fn44)(); // g_pFnSub_10002C70 // signed int __usercall sub_2AA2C70@<eax>(int a1@<ebp>)
	INT (*p_fn45)(int, unsigned, unsigned, int); // g_pFnCopyFromPrimaryBufferToDirectDrawSurface
	INT (*p_fn46)(int, int, int, int, int, int, int, char*); // g_pFnSub_10003090_2
	INT (*p_fn47)(INT, INT, INT, INT); // g_pFnDrawImage
	INT (*p_fn48)(); // g_pFnSub_10002860
	INT (*p_fn49)(); // g_pFnSub_100027C0
	BOOL (*p_fnCopyData64ToSurface)(INT, INT, INT, INT, INT, INT, INT, WORD*);
	INT (*p_fn51)(int iSrcX, int iSrcY, int iSrcWidth, char *pSrc, int iDestX, int iDestY, int iDestWidth, char *pDest, int a9, int iHeight); // g_pFnSub_10002B10
	INT (*p_fn52)(INT a5, INT a6); // Sub_100088E9
	INT (*p_fn53)(INT a5, INT a6); // Sub_10009F13
	INT (*p_fn54)(INT a5, INT a6); // Sub_100098D3
	IDirectDraw* (*p_fnShutdownDirectDraw)();

	DWORD dword_10018E80; // 02D68E80
	DWORD dword_10018E84;
	DWORD dword_10018E88;
	DWORD dword_10018E8C;
	DWORD dword_10018E90;
	DWORD dword_10018E94;
	DWORD dword_10018E98;
	DWORD dword_10018E9C;
	DWORD dword_10018EA0;
	DWORD dword_10018EA4;
	WORD a_buffer1[307200];	// 02D68EA8
	BYTE a_unknown5[1316];	// 2DFEEA8
	WORD a_buffer2[307200];	// 2DFF3CC
	BYTE a_unknown6[1316];	// 2E953CC
	WORD a_buffer3[307200];	// 2E958F0
	BYTE a_unknown7[1280];	// 2F2B8F0
	DWORD dword_101DBDF0;   // 2F2BDF0
	DWORD dword_101DBDF4;
	DWORD dword_101DBDF8;
	DWORD dword_101DBDFC;
};
#pragma pack(pop)

typedef struct _SCADrawResult SCADrawResult;

__declspec(dllexport) SCADrawResult* CADraw_Init();


// Done.
static INT Initialize();
INT InitializeDirectDraw(HWND handle, BOOL fullscreen);
IDirectDrawSurface* ShutdownDirectDrawSurface();
IDirectDraw* ShutdownDirectDraw();
IDirectDraw* ShutdownDirectDrawFullscreen();
INT SetDisplayMode(INT width, INT height);
INT DrawPointToBuffer1(INT x, INT y, WORD color);
INT DrawPointToBuffer2(INT x, INT y, WORD color);
BOOL LockSurface();
BOOL UnlockSurface();

// In progress.
BOOL CopyData64ToSurface(INT sourceX, INT sourceY, INT destWidth, INT destHeight, INT destX, INT destY, INT sourceWidth,
	WORD* p_source);
DWORD SetPixelFormatMasks(DWORD redBitMask, DWORD greenBitMask, DWORD blueBitMask);
int CopyLines(int iSrcX, int iSrcY, int iSrcWidth, char *pSrc, int iDestX, int iDestY, int iDestWidth, char *pDest, int a9, int iHeight);
signed int CopyFromPrimaryBufferToDirectDrawSurface(int a1, unsigned int a2, unsigned int a3, int a4);
int x_sub_10001BF0_CopyPixelsArray(WORD *pwSrc, WORD *pwDest, int iCount);
INT CopyPixelsArray(BYTE* pSrc, BYTE* pDest, INT iCount);
int x_sub_10003400(unsigned __int8 *a1, int a2);
unsigned __int8 x_sub_10003490_call(int a1, int a2, unsigned __int8 *a3, int a4, int a5);
unsigned __int8 x_sub_10003430_call(int a1, int a2, int a3, int a4, int a5);
INT DrawImageToBuffer1(INT sourceX, INT sourceY, INT a3, INT a4, INT destX, INT destY, INT destWidth,
	CHAR* p_dest);
INT DrawFilledRectToBuffer1(INT x, INT y, INT width, INT height, WORD color);
INT sub_10002030(INT x, INT y, INT iWidth, WORD color, INT a5);
INT x_sub_10001D00(INT x, INT y);
INT CopyRectBuffer1ToBuffer2(INT x, INT y, INT iWidth, INT iHeight);
INT DrawVerticalLineToBuffer1(INT x, INT y, INT length, WORD color);
INT DrawHorizontalLineToBuffer1(INT x, INT y, INT length, WORD color);
INT x_sub_10002860_RectAndFFFBFFFBu(INT x, INT y, INT width, INT height);
INT DrawEmptyRectToBuffer1(INT x, INT y, INT width, INT height, WORD color);
INT x_sub_100027C0();

// TODO.
INT x_sub_10001EA0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7);
INT x_sub_10001EE0_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6);
INT x_sub_10001F20_call(INT a1, INT a2, INT a3);
INT x_sub_10001F50_call(INT a1, INT a2, INT a3, INT a4, INT a5, INT a6, INT a7);
INT Sub_100088E9(INT a5, INT a6);
INT Sub_100098D3(INT a5, INT a6);
INT Sub_10009F13(INT a5, INT a6);
INT Sub_10005F01(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_10005B96(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_1000586C(INT a1, INT a2, INT a3, INT a4);
INT Sub_10004460(INT a1, INT a2, INT a3);
INT Sub_10004786(INT a1, INT a2, INT a3);
INT Sub_10004AB6(INT a1, INT a2, SHORT a3, INT a4);
INT Sub_100051AF(INT a1, INT a2, INT a3, INT a4);
INT Sub_10007678(INT a1, INT a2, INT a3, INT a4);
INT Sub_10006586(INT a1, INT a2, INT a3);
INT Sub_1000625D(INT a1, INT a2, INT a3, INT a4);
INT Sub_10004E80(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_10006C48(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_10006FE2(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_1000687D(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_100073B2(INT a1, INT a2, INT a3, INT a4);
INT Sub_10007D0C(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_10007938(INT a1, INT a2, SHORT a3, INT a4);
INT Sub_10005493(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_100016D0_DrawStruct();
INT Sub_100024C0(INT a1, INT a2, SHORT a3, INT a4, INT a5);
INT Sub_10002C70();
INT Sub_2D53090();

#endif // CADRAW_H
