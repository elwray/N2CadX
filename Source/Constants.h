#ifndef CONSTANTS_H
#define CONSTANTS_H

#define WIN32_LEAN_AND_MEAN
#include <Windows.h>

/*
	Типы данных.
*/
typedef __int32 COLOR32;

/*
	Константы.
*/
const DWORD Screen_Width = 640;
const DWORD Screen_Height = 480;
const DWORD Screen_BytesPerPixel = sizeof(WORD);

const DWORD Screen_BPP = Screen_BytesPerPixel * 8;
const DWORD Screen_WidthInBytes = Screen_BytesPerPixel * Screen_Width;
const DWORD Screen_Size = Screen_Width * Screen_Height;
const DWORD Screen_SizeInBytes = Screen_Size * Screen_BytesPerPixel;

const DWORD Screen_Width_1 = Screen_Width - 1;
const DWORD Screen_Height_1 = Screen_Height - 1;

const COLOR16 Red_Mask_565 = 0xF800;		//	0b1111100000000000
const COLOR16 Green_Mask_565 = 0x7E0;		//	0b0000011111100000
const COLOR16 Blue_Mask_565 = 0x1F;			//	0b0000000000011111

const COLOR16 Purple_Color_565 = 0xF81F;	//	0b1111100000011111

#endif