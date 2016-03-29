#ifndef BITMAP_H
#define BITMAP_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include <Wingdi.h>


struct _SBitmap16
{
	INT width;
	INT height;
	WORD* p_data;
};
typedef struct _SBitmap16 SBitmap16;


SBitmap16* CreateBitmap(INT width, INT height);
BOOL SaveBitmap(SBitmap16* p_bitmap, LPCWSTR p_path);
BOOL SetPixel(SBitmap16* p_bitmap, INT x, INT y, WORD color);
BOOL DeleteBitmap(SBitmap16* p_bitmap);
BOOL SaveBitmapData(INT width, INT height, WORD* p_data, LPCWSTR p_path);

#endif // BITMAP_H