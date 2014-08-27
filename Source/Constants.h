#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <stdint.h>

/*
	Константы.
*/
#define Screen_Width			640
#define Screen_Height			480
#define Screen_BytesPerPixel	sizeof(int16_t)

#define Screen_BPP				Screen_BytesPerPixel * 8
#define Screen_WidthInBytes		Screen_BytesPerPixel * Screen_Width
#define Screen_Size				Screen_Width * Screen_Height
#define Screen_SizeInBytes		Screen_Size * Screen_BytesPerPixel

#define Screen_Width_1			Screen_Width - 1
#define Screen_Height_1			Screen_Height - 1

#define Red_Mask_565			0xF800	//	0b1111100000000000
#define Green_Mask_565			0x7E0	//	0b0000011111100000
#define Blue_Mask_565			0x1F	//	0b0000000000011111

#define Purple_Color_565		0xF81F	//	0b1111100000011111

#endif