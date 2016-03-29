#include <assert.h>
#include "Bitmap.h"
#include "Constants.h"


// https://msdn.microsoft.com/ru-ru/library/windows/desktop/dd183402(v=vs.85).aspx
SBitmap16* CreateBitmap(INT width, INT height)
{
	assert(width > 0);
	if (width <= 0)
		return NULL;
	assert(height > 0);
	if (height <= 0)
		return NULL;

	SBitmap16* p_bitmap = new SBitmap16;
	p_bitmap->p_data = new WORD[width * height];
	p_bitmap->width = width;
	p_bitmap->height = height;

	return p_bitmap;
}

BOOL SaveBitmap(SBitmap16* p_bitmap, LPCWSTR p_path)
{
	assert(p_bitmap);
	if (!p_bitmap)
		return FALSE;
	assert(p_path && *p_path);
	if (!p_path || !*p_path)
		return FALSE;

	BITMAPINFO info = { 0, };
	info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
	info.bmiHeader.biWidth = p_bitmap->width;
	info.bmiHeader.biHeight = p_bitmap->height;
	info.bmiHeader.biPlanes = 1;
	info.bmiHeader.biBitCount = 16;
	info.bmiHeader.biCompression = BI_BITFIELDS;
	info.bmiColors[0].rgbRed = RedMaskDWORD;
	info.bmiColors[0].rgbGreen = GreenMaskDWORD;
	info.bmiColors[0].rgbBlue = BlueMaskDWORD;

	BITMAPFILEHEADER file = { 0, };

	return FALSE;
}

BOOL SetPixel(SBitmap16* p_bitmap, INT x, INT y, WORD color)
{
	assert(p_bitmap);
	if (!p_bitmap)
		return FALSE;
	assert(x >= 0 && x < p_bitmap.width);
	if (x < 0 || x >= p_bitmap->width)
		return FALSE;
	assert(y >= 0 && y < p_bitmap.height);
	if (y < 0 || y >= p_bitmap->height)
		return FALSE;

	p_bitmap->p_data[x + y * p_bitmap->width] = color;

	return TRUE;
}

BOOL DeleteBitmap(SBitmap16* p_bitmap)
{
	assert(p_bitmap);
	if (!p_bitmap)
		return;

	if (p_bitmap->p_data)
		delete[] p_bitmap.p_data;

	delete p_bitmap;
}

BOOL SaveBitmapData(INT width, INT height, WORD* p_data, LPCWSTR p_path)
{
	assert(width > 0);
	if (width <= 0)
		return FALSE;
	assert(height > 0);
	if (height <= 0)
		return FALSE;
	assert(p_data);
	if (!p_data)
		return FALSE;

	return FALSE;
}