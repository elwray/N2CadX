#ifndef BITMAP_H
#define BITMAP_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>


struct _SBitmap16
{
	INT width;
	INT height;
	WORD* p_data;
};
typedef struct _SBitmap16 SBitmap16;


SBitmap16* CreateBitmap16(INT width, INT height);
BOOL SaveBitmap16(SBitmap16* p_bitmap, LPCWSTR p_path);
SBitmap16* LoadBitmap16(LPCWSTR p_path);
BOOL SetPixel16(SBitmap16* p_bitmap, INT x, INT y, WORD color);
BOOL DeleteBitmap16(SBitmap16* p_bitmap);
BOOL SaveBitmap16Data(INT width, INT height, WORD* p_data, LPCWSTR p_path);

#endif // BITMAP_H