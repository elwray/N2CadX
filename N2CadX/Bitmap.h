#ifndef BITMAP_H
#define BITMAP_H

#include <Wingdi.h>


struct _SBitmap16
{
	INT width;
	INT height;
	WORD* p_data;
};
typedef struct _SBitmap16 SBitmap16;


SBitmap16* CreateBitmap(INT width, INT height);
BOOL SaveBitmap(SBitmap16* p_bitmap, LPCWSZ p_path);
BOOL SetPixel(SBitmap16* p_bitmap, INT x, INT y, WORD color);
BOOL DeleteBitmap(SBitmap16* p_bitmap);

#endif // BITMAP_H