#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#include "CADraw.h"

INT WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, INT nCmdShow)
{
	SCADrawInitResult* pResult = CADrawInit();

	return 0;
}