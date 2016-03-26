#ifndef CADRAW_H
#define CADRAW_H

#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <ddraw.h>
#include <stdint.h>


void* CADraw_Init();
int32_t Initialize();
int32_t InitializeDirectDraw(HWND handle, int32_t fullscreen);
IDirectDrawSurface* ShutdownDirectDrawSurface();


#endif