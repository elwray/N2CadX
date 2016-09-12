#include <assert.h>
#include <stdlib.h>
#include "Bitmap.h"
#include "Constants.h"


// https://msdn.microsoft.com/ru-ru/library/windows/desktop/dd183402(v=vs.85).aspx
SBitmap16* CreateBitmap16(INT width, INT height)
{
	assert(width > 0);
	if (width <= 0)
		return NULL;
	assert(height > 0);
	if (height <= 0)
		return NULL;

	SBitmap16* p_bitmap = (SBitmap16*) calloc(1, sizeof(SBitmap16));
	p_bitmap->p_data = (WORD*) calloc(width * height, sizeof(DWORD));
	p_bitmap->width = width;
	p_bitmap->height = height;

	return p_bitmap;
}

BOOL SaveBitmap16(SBitmap16* p_bitmap, LPCWSTR p_path)
{
	assert(p_bitmap);
	if (!p_bitmap)
		return FALSE;
	assert(p_path && *p_path);
	if (!p_path || !*p_path)
		return FALSE;

	HANDLE handle = CreateFile(p_path, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
	if (handle == INVALID_HANDLE_VALUE)
		return FALSE;

	auto dataSize = sizeof(WORD) * p_bitmap->width * p_bitmap->height;

	BITMAPFILEHEADER file = { 0, };
	file.bfType = 0x4D42;
	file.bfSize = (DWORD)(sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFO)) + dataSize;
	file.bfOffBits = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFO);

	BITMAPINFO info = { 0, };
	info.bmiHeader.biSize = sizeof(BITMAPINFO);
	info.bmiHeader.biWidth = p_bitmap->width;
	info.bmiHeader.biHeight = p_bitmap->height;
	info.bmiHeader.biPlanes = 1;
	info.bmiHeader.biBitCount = 16;
	info.bmiHeader.biCompression = BI_BITFIELDS;
	info.bmiColors[0].rgbRed = RedMaskDWORD;
	info.bmiColors[0].rgbGreen = GreenMaskDWORD;
	info.bmiColors[0].rgbBlue = BlueMaskDWORD;

	DWORD bytesWritten;
	WriteFile(handle, &file, sizeof(BITMAPFILEHEADER), &bytesWritten, NULL);
	WriteFile(handle, &info, sizeof(BITMAPINFO), &bytesWritten, NULL);
	WriteFile(handle, p_bitmap->p_data, dataSize, &bytesWritten, NULL);

	CloseHandle(handle);

	return FALSE;
}

SBitmap16* LoadBitmap16(LPCWSTR p_path)
{
	assert(p_path && *p_path);
	if (!p_path && !*p_path)
		return NULL;

	auto handle = CreateFile(p_path, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (handle == INVALID_HANDLE_VALUE)
		return NULL;

	DWORD bytesRead;

	BITMAPFILEHEADER file = { 0, };
	if (!ReadFile(handle, &file, sizeof(BITMAPFILEHEADER), &bytesRead, NULL))
	{
		CloseHandle(handle);
		return NULL;
	}

	BITMAPINFO info = { 0, };
	if (ReadFile(handle, &info, sizeof(BITMAPINFO), &bytesRead, NULL))
	{
		CloseHandle(handle);
		return NULL;
	}

	auto dataSize = info.bmiHeader.biWidth * info.bmiHeader.biHeight;
	WORD* p_data = calloc(dataSize, sizeof(WORD));
	if (!ReadFile(handle, p_data, dataSize * sizeof(WORD), &bytesRead, NULL))
	{
		CloseHandle(handle);
		free(p_data);
		return NULL;
	}

	SBitmap16* p_bitmap = (SBitmap16*) calloc(1, sizeof(SBitmap16));
	p_bitmap->p_data = p_data;
	p_bitmap->width = info.bmiHeader.biWidth;
	p_bitmap->height = info.bmiHeader.biHeight;

	return p_bitmap;
}

BOOL SetPixel16(SBitmap16* p_bitmap, INT x, INT y, WORD color)
{
	assert(p_bitmap);
	if (!p_bitmap)
		return FALSE;
	assert(x >= 0 && x < p_bitmap->width);
	if (x < 0 || x >= p_bitmap->width)
		return FALSE;
	assert(y >= 0 && y < p_bitmap->height);
	if (y < 0 || y >= p_bitmap->height)
		return FALSE;

	p_bitmap->p_data[x + y * p_bitmap->width] = color;

	return TRUE;
}

BOOL DeleteBitmap16(SBitmap16* p_bitmap)
{
	assert(p_bitmap);
	if (!p_bitmap)
		return FALSE;

	if (p_bitmap->p_data)
		free(p_bitmap->p_data);

	free(p_bitmap);

	return TRUE;
}

BOOL SaveBitmap16Data(INT width, INT height, WORD* p_data, LPCWSTR p_path)
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

	SBitmap16* p_bitmap = CreateBitmap16(width, height);
	memcpy(p_bitmap->p_data, p_data, sizeof(WORD) * width * height);
	auto result = SaveBitmap16(p_bitmap, p_path);
	DeleteBitmap16(p_bitmap);

	return result;
}