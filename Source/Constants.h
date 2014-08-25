#ifndef CONSTANTS_H
#define CONSTANTS_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

const DWORD Screen_Width = 640;
const DWORD Screen_Height = 480;
const DWORD Screen_BytesPerPixel = sizeof(WORD);

const DWORD Screen_BPP = Screen_BytesPerPixel * 8;
const DWORD Screen_WidthInBytes = Screen_BytesPerPixel * Screen_Width;
const DWORD Screen_Size = Screen_Width * Screen_Height;
const DWORD Screen_SizeInBytes = Screen_Size * Screen_BytesPerPixel;

const DWORD Screen_Width_1 = Screen_Width - 1;
const DWORD Screen_Height_1 = Screen_Height - 1;

#endif