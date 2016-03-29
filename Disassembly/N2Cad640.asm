; ---------------------------------------------------------------------------

IDirectDrawSurface struc ; (sizeof=0x4,	standard type) ; XREF: .data:g_lpDDrawSurface/r
lpVtbl		dd ?			; offset
IDirectDrawSurface ends

; ---------------------------------------------------------------------------

RECT		struc ;	(sizeof=0x10, standard type) ; XREF: .data:g_rcScreenRect/r
left		dd ?
top		dd ?
right		dd ?
bottom		dd ?
RECT		ends

; ---------------------------------------------------------------------------

DDSCAPS		struc ;	(sizeof=0x4, standard type) ; XREF: DDSURFACEDESC/r
dwCaps		dd ?
DDSCAPS		ends

; ---------------------------------------------------------------------------

_DDPIXELFORMAT::$23DF69239FC04D9BE22118E1AD8451FB union	; (sizeof=0x4, standard	type)
					; XREF:	DDPIXELFORMAT/r
dwRGBAlphaBitMask dd ?
dwYUVAlphaBitMask dd ?
dwLuminanceAlphaBitMask	dd ?
dwRGBZBitMask	dd ?
dwYUVZBitMask	dd ?
_DDPIXELFORMAT::$23DF69239FC04D9BE22118E1AD8451FB ends

; ---------------------------------------------------------------------------

_DDPIXELFORMAT::$4C86B66084EB9B6F3AE81991D3FADB38 union	; (sizeof=0x4, standard	type)
					; XREF:	DDPIXELFORMAT/r
dwBBitMask	dd ?
dwVBitMask	dd ?
dwStencilBitMask dd ?
dwBumpLuminanceBitMask dd ?
_DDPIXELFORMAT::$4C86B66084EB9B6F3AE81991D3FADB38 ends

; ---------------------------------------------------------------------------

_DDPIXELFORMAT::$95F56DB01BB1548DF390D9ACB4F5DA09::$A78036EB239B85FA27F661E6E98FFEA9 struc ; (sizeof=0x4, standard type)
					; XREF:	_DDPIXELFORMAT::$95F56DB01BB1548DF390D9ACB4F5DA09/r
wFlipMSTypes	dw ?
wBltMSTypes	dw ?
_DDPIXELFORMAT::$95F56DB01BB1548DF390D9ACB4F5DA09::$A78036EB239B85FA27F661E6E98FFEA9 ends

; ---------------------------------------------------------------------------

_DDPIXELFORMAT::$95F56DB01BB1548DF390D9ACB4F5DA09 union	; (sizeof=0x4, standard	type)
					; XREF:	DDPIXELFORMAT/r
dwGBitMask	dd ?
dwUBitMask	dd ?
dwZBitMask	dd ?
dwBumpDvBitMask	dd ?
MultiSampleCaps	_DDPIXELFORMAT::$95F56DB01BB1548DF390D9ACB4F5DA09::$A78036EB239B85FA27F661E6E98FFEA9 ?
_DDPIXELFORMAT::$95F56DB01BB1548DF390D9ACB4F5DA09 ends

; ---------------------------------------------------------------------------

_DDPIXELFORMAT::$6A86D2BA2D533C5D3D5AB1F1491969D5 union	; (sizeof=0x4, standard	type)
					; XREF:	DDPIXELFORMAT/r
dwRBitMask	dd ?
dwYBitMask	dd ?
dwStencilBitDepth dd ?
dwLuminanceBitMask dd ?
dwBumpDuBitMask	dd ?
dwOperations	dd ?
_DDPIXELFORMAT::$6A86D2BA2D533C5D3D5AB1F1491969D5 ends

; ---------------------------------------------------------------------------

_DDPIXELFORMAT::$F1D3FB4D78950D0942225445130999CB union	; (sizeof=0x4, standard	type)
					; XREF:	DDPIXELFORMAT/r
dwRGBBitCount	dd ?
dwYUVBitCount	dd ?
dwZBufferBitDepth dd ?
dwAlphaBitDepth	dd ?
dwLuminanceBitCount dd ?
dwBumpBitCount	dd ?
dwPrivateFormatBitCount	dd ?
_DDPIXELFORMAT::$F1D3FB4D78950D0942225445130999CB ends

; ---------------------------------------------------------------------------

DDPIXELFORMAT	struc ;	(sizeof=0x20, standard type) ; XREF: DDSURFACEDESC/r
dwSize		dd ?
dwFlags		dd ?
dwFourCC	dd ?
anonymous_0	_DDPIXELFORMAT::$F1D3FB4D78950D0942225445130999CB ?
anonymous_1	_DDPIXELFORMAT::$6A86D2BA2D533C5D3D5AB1F1491969D5 ?
anonymous_2	_DDPIXELFORMAT::$95F56DB01BB1548DF390D9ACB4F5DA09 ?
anonymous_3	_DDPIXELFORMAT::$4C86B66084EB9B6F3AE81991D3FADB38 ?
anonymous_4	_DDPIXELFORMAT::$23DF69239FC04D9BE22118E1AD8451FB ?
DDPIXELFORMAT	ends

; ---------------------------------------------------------------------------

DDCOLORKEY	struc ;	(sizeof=0x8, standard type) ; XREF: DDSURFACEDESC/r
					; DDSURFACEDESC/r ...
dwColorSpaceLowValue dd	?
dwColorSpaceHighValue dd ?
DDCOLORKEY	ends

; ---------------------------------------------------------------------------

_DDSURFACEDESC::$9AB659F8D6A45F8C7834A76B9C40973B union	; (sizeof=0x4, standard	type)
					; XREF:	DDSURFACEDESC/r
dwMipMapCount	dd ?
dwZBufferBitDepth dd ?
dwRefreshRate	dd ?
_DDSURFACEDESC::$9AB659F8D6A45F8C7834A76B9C40973B ends

; ---------------------------------------------------------------------------

_DDSURFACEDESC::$091DBF7D405BE25E65B16620C008128B union	; (sizeof=0x4, standard	type)
					; XREF:	DDSURFACEDESC/r
lPitch		dd ?
dwLinearSize	dd ?
_DDSURFACEDESC::$091DBF7D405BE25E65B16620C008128B ends

; ---------------------------------------------------------------------------

_cpinfo		struc ;	(sizeof=0x14, standard type) ; XREF: __setmbcp/r
					; _setSBUpLow/r
MaxCharSize	dd ?
DefaultChar	db 2 dup(?)
LeadByte	db 12 dup(?)
_padding	db 2 dup(?)
_cpinfo		ends

; ---------------------------------------------------------------------------

DDSURFACEDESC	struc ;	(sizeof=0x6C, standard type) ; XREF: SetDisplayMode/r
					; LockSurface/r
dwSize		dd ?
dwFlags		dd ?
dwHeight	dd ?
dwWidth		dd ?
anonymous_0	_DDSURFACEDESC::$091DBF7D405BE25E65B16620C008128B ?
dwBackBufferCount dd ?
anonymous_1	_DDSURFACEDESC::$9AB659F8D6A45F8C7834A76B9C40973B ?
dwAlphaBitDepth	dd ?
dwReserved	dd ?
lpSurface	dd ?			; offset
ddckCKDestOverlay DDCOLORKEY ?
ddckCKDestBlt	DDCOLORKEY ?
ddckCKSrcOverlay DDCOLORKEY ?
ddckCKSrcBlt	DDCOLORKEY ?
ddpfPixelFormat	DDPIXELFORMAT ?
ddsCaps		DDSCAPS	?
DDSURFACEDESC	ends

; ---------------------------------------------------------------------------

SMALL_RECT	struc ;	(sizeof=0x8, standard type) ; XREF: .data:g_rcScreenSmallRect/r
Left		dw ?
Top		dw ?
Right		dw ?
Bottom		dw ?
SMALL_RECT	ends

; ---------------------------------------------------------------------------

_STARTUPINFOA	struc ;	(sizeof=0x44, standard type) ; XREF: __ioinit/r
cb		dd ?
lpReserved	dd ?			; offset
lpDesktop	dd ?			; offset
lpTitle		dd ?			; offset
dwX		dd ?
dwY		dd ?
dwXSize		dd ?
dwYSize		dd ?
dwXCountChars	dd ?
dwYCountChars	dd ?
dwFillAttribute	dd ?
dwFlags		dd ?
wShowWindow	dw ?
cbReserved2	dw ?
lpReserved2	dd ?			; offset
hStdInput	dd ?			; offset
hStdOutput	dd ?			; offset
hStdError	dd ?			; offset
_STARTUPINFOA	ends

; ---------------------------------------------------------------------------

; enum MACRO_NULL, standard type
NULL		 = 0

; ---------------------------------------------------------------------------

; enum MACRO_DDLOCK, standard type
DDLOCK_SURFACEMEMORYPTR	 = 0
DDLOCK_WAIT	 = 1
DDLOCK_EVENT	 = 2
DDLOCK_READONLY	 = 10h
DDLOCK_WRITEONLY  = 20h
DDLOCK_NOSYSLOCK  = 800h
DDLOCK_NOOVERWRITE  = 1000h
DDLOCK_DISCARDCONTENTS	= 2000h

; ---------------------------------------------------------------------------

; enum MACRO_FALSE, standard type
FALSE		 = 0
TRUE		 = 1

;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-327F-7274-B7			    |
; |			       ESET spol. s r.o.			    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	8F58B282B29DEC71F12835C6DB45A466
; Input	CRC32 :	939A3111

; File Name   :	D:\Games\MWM\Dat\Release\n2cad640.dll
; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	10000000
; Section 1. (virtual address 00001000)
; Virtual size			: 0000BDF6 (  48630.)
; Section size in file		: 0000C000 (  49152.)
; Offset to raw	data for section: 00001000
; Flags	60000020: Text Executable Readable
; Alignment	: default
; OS type	  :  MS	Windows
; Application type:  DLL 32bit

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 10001000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


Initialize	proc near		; CODE XREF: CADraw_Init+1Ep
					; DATA XREF: CADraw_Init+28o
		mov	ecx, 1E0h
		xor	eax, eax
		mov	g_dwWidth, 280h
		mov	g_dwHeight, ecx
		mov	g_dwWidthInBytes, 500h
		mov	g_uBufferOrigin16, eax
		mov	g_dwSurfaceHeight, ecx
		mov	g_rcScreenRect.left, eax
		mov	g_rcScreenRect.top, eax
		mov	g_rcScreenRect.right, 27Fh
		mov	g_rcScreenRect.bottom, 1DFh
		retn
Initialize	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; signed int __cdecl CreateDirectDrawAndSetCooperativeLevel(HWND hWnd, int bFullscreen)
CreateDirectDrawAndSetCooperativeLevel proc near ; DATA	XREF: CADraw_Init+3Co

hWnd		= dword	ptr  4
bFullscreen	= dword	ptr  8

		push	esi
		push	edi
		call	ReleaseDirectDrawFullscreen
		push	0		; pUnkOuter
		push	offset g_lpDirectDraw ;	lplpDD
		push	0		; lpGUID
		call	DirectDrawCreate
		test	eax, eax
		jge	short loc_1000106E
		pop	edi
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_1000106E:				; CODE XREF: CreateDirectDrawAndSetCooperativeLevel+17j
		mov	edi, [esp+8+bFullscreen]
		mov	eax, g_lpDirectDraw
		test	edi, edi
		jz	short loc_1000108A
		mov	esi, [esp+8+hWnd]
		mov	ecx, [eax]
		push	11h
		push	esi
		push	eax
		call	dword ptr [ecx+50h]
		jmp	short loc_10001097
; ---------------------------------------------------------------------------

loc_1000108A:				; CODE XREF: CreateDirectDrawAndSetCooperativeLevel+29j
		mov	esi, [esp+8+hWnd]
		mov	edx, [eax]
		push	8
		push	esi
		push	eax
		call	dword ptr [edx+50h]

loc_10001097:				; CODE XREF: CreateDirectDrawAndSetCooperativeLevel+38j
		test	eax, eax
		jge	short loc_100010A0
		pop	edi
		xor	eax, eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_100010A0:				; CODE XREF: CreateDirectDrawAndSetCooperativeLevel+49j
		mov	g_bFullscreen, edi
		mov	g_hWnd,	esi
		pop	edi
		mov	eax, 1
		pop	esi
		retn
CreateDirectDrawAndSetCooperativeLevel endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


ReleaseSurface	proc near		; CODE XREF: ReleaseDirectDrawFullscreenp
					; ReleaseDirectDrawp ...
		mov	eax, g_lpDDrawSurface.lpVtbl
		test	eax, eax
		jz	short locret_100010D9
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+8]
		mov	g_lpDDrawSurface.lpVtbl, 0

locret_100010D9:			; CODE XREF: ReleaseSurface+7j
		retn
ReleaseSurface	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


ReleaseDirectDrawFullscreen proc near	; CODE XREF: CreateDirectDrawAndSetCooperativeLevel+2p
					; DATA XREF: CADraw_Init+46o
		call	ReleaseSurface
		mov	eax, g_lpDirectDraw
		test	eax, eax
		jz	short locret_10001113
		mov	ecx, g_bFullscreen
		test	ecx, ecx
		jz	short loc_10001103
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+4Ch]
		mov	eax, g_lpDirectDraw

loc_10001103:				; CODE XREF: ReleaseDirectDrawFullscreen+16j
		mov	edx, [eax]
		push	eax
		call	dword ptr [edx+8]
		mov	g_lpDirectDraw,	0

locret_10001113:			; CODE XREF: ReleaseDirectDrawFullscreen+Cj
		retn
ReleaseDirectDrawFullscreen endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


ReleaseDirectDraw proc near		; DATA XREF: CADraw_Init+262o
		call	ReleaseSurface
		mov	eax, g_lpDirectDraw
		test	eax, eax
		jz	short locret_1000113E
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+8]
		mov	g_lpDirectDraw,	0

locret_1000113E:			; CODE XREF: ReleaseDirectDraw+Cj
		retn
ReleaseDirectDraw endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; WORD red_mask	= 0xF800;
; WORD green_mask = 0x7E0;
; WORD blue_mask = 0x1F;
;
; BYTE red_value = (pixel & red_mask) >> 11;
; BYTE green_value = (pixel & green_mask) >> 5;
; BYTE blue_value = (pixel & blue_mask);

; int __cdecl SetPixelFormatMasks(unsigned __int16 iRBitMask, int iGBitMask, int iBBitMask)
SetPixelFormatMasks proc near		; CODE XREF: SetDisplayMode+A7p
					; DATA XREF: CADraw_Init+5Ao

iRBitMask	= dword	ptr  4
iGBitMask	= dword	ptr  8
iBBitMask	= dword	ptr  0Ch

		mov	ecx, [esp+iRBitMask]
		mov	eax, [esp+iBBitMask]
		push	ebx
		push	esi
		mov	esi, [esp+8+iGBitMask]
		push	edi
		mov	edi, ecx
		xor	edx, edx
		mov	word ptr g_dwRBitDoubleMask, cx
		mov	word ptr g_dwRBitDoubleMask+2, cx
		mov	word ptr g_dwGBitDoubleMask, si
		mov	word ptr g_dwGBitDoubleMask+2, si
		mov	word ptr g_dwBBitDoubleMask, ax
		mov	word ptr g_dwBBitDoubleMask+2, ax
		mov	ebx, 8000h
		and	edi, 0FFFFh

loc_10001186:				; CODE XREF: SetPixelFormatMasks+50j
		test	ebx, edi
		jnz	short loc_10001194
		inc	edx
		sar	ebx, 1
		cmp	edx, 10h
		jl	short loc_10001186
		jmp	short loc_1000119B
; ---------------------------------------------------------------------------

loc_10001194:				; CODE XREF: SetPixelFormatMasks+48j
		or	word ptr dword_1000E464, bx

loc_1000119B:				; CODE XREF: SetPixelFormatMasks+52j
		mov	m_wRBitFromLeftOffset, dx
		xor	ecx, ecx
		mov	edx, 8000h
		and	esi, 0FFFFh

loc_100011AF:				; CODE XREF: SetPixelFormatMasks+79j
		test	edx, esi
		jnz	short loc_100011BD
		inc	ecx
		sar	edx, 1
		cmp	ecx, 10h
		jl	short loc_100011AF
		jmp	short loc_100011C4
; ---------------------------------------------------------------------------

loc_100011BD:				; CODE XREF: SetPixelFormatMasks+71j
		or	word ptr dword_1000E464, dx

loc_100011C4:				; CODE XREF: SetPixelFormatMasks+7Bj
		mov	bx, cx
		xor	ecx, ecx
		mov	m_wGBitFromLeftOffset, bx
		mov	edx, 8000h
		and	eax, 0FFFFh

loc_100011DA:				; CODE XREF: SetPixelFormatMasks+A4j
		test	edx, eax
		jnz	short loc_100011E8
		inc	ecx
		sar	edx, 1
		cmp	ecx, 10h
		jl	short loc_100011DA
		jmp	short loc_100011EF
; ---------------------------------------------------------------------------

loc_100011E8:				; CODE XREF: SetPixelFormatMasks+9Cj
		or	word ptr dword_1000E464, dx

loc_100011EF:				; CODE XREF: SetPixelFormatMasks+A6j
		mov	m_wBBitFromLeftOffset, cx
		mov	ecx, 1
		xor	edx, edx

loc_100011FD:				; CODE XREF: SetPixelFormatMasks+C7j
		test	ecx, edi
		jnz	short loc_1000120B
		inc	edx
		shl	ecx, 1
		cmp	edx, 10h
		jl	short loc_100011FD
		jmp	short loc_10001212
; ---------------------------------------------------------------------------

loc_1000120B:				; CODE XREF: SetPixelFormatMasks+BFj
		or	word ptr dword_1000E460, cx

loc_10001212:				; CODE XREF: SetPixelFormatMasks+C9j
		mov	ecx, 1
		xor	edx, edx

loc_10001219:				; CODE XREF: SetPixelFormatMasks+E3j
		test	ecx, esi
		jnz	short loc_10001227
		inc	edx
		shl	ecx, 1
		cmp	edx, 10h
		jl	short loc_10001219
		jmp	short loc_1000122E
; ---------------------------------------------------------------------------

loc_10001227:				; CODE XREF: SetPixelFormatMasks+DBj
		or	word ptr dword_1000E460, cx

loc_1000122E:				; CODE XREF: SetPixelFormatMasks+E5j
		mov	ecx, 1
		xor	edx, edx

loc_10001235:				; CODE XREF: SetPixelFormatMasks+FFj
		test	ecx, eax
		jnz	short loc_10001243
		inc	edx
		shl	ecx, 1
		cmp	edx, 10h
		jl	short loc_10001235
		jmp	short loc_1000124A
; ---------------------------------------------------------------------------

loc_10001243:				; CODE XREF: SetPixelFormatMasks+F7j
		or	word ptr dword_1000E460, cx

loc_1000124A:				; CODE XREF: SetPixelFormatMasks+101j
		mov	cx, word ptr dword_1000E464
		mov	dx, word ptr dword_1000E460
		mov	word ptr dword_1000E464+2, cx
		mov	ecx, dword_1000E464
		not	ecx
		mov	word ptr dword_1000E460+2, dx
		mov	edx, dword ptr m_wBBitFromLeftOffset
		mov	word_1000E46C, cx
		mov	word_1000E46E, cx
		mov	ecx, dword_1000E460
		push	ebp
		not	ecx
		mov	word ptr dword_1000E468, cx
		mov	word ptr dword_1000E468+2, cx
		mov	ecx, 0Bh
		mov	bp, bx
		sub	ecx, edx
		mov	edx, 5
		shl	edx, cl
		mov	ecx, 0Bh
		sub	ecx, ebp
		mov	ebp, 2
		shl	ebp, cl
		mov	cx, m_wRBitFromLeftOffset
		add	edx, ebp
		cmp	cx, bx
		mov	word ptr dword_1000E480, dx
		mov	word ptr dword_1000E480+2, dx
		mov	dx, m_wBBitFromLeftOffset
		pop	ebp
		jbe	short loc_100012F1
		cmp	bx, dx
		ja	short loc_10001304
		cmp	dx, cx
		jbe	short loc_100012FB

loc_100012E6:				; CODE XREF: SetPixelFormatMasks+1B9j
		shl	edi, 10h
		or	edi, eax
		or	edi, esi
		mov	eax, edi
		jmp	short loc_1000130D
; ---------------------------------------------------------------------------

loc_100012F1:				; CODE XREF: SetPixelFormatMasks+19Aj
		cmp	bx, dx
		jbe	short loc_10001304
		cmp	dx, cx
		jbe	short loc_100012E6

loc_100012FB:				; CODE XREF: SetPixelFormatMasks+1A4j
		shl	eax, 10h
		or	eax, esi
		or	eax, edi
		jmp	short loc_1000130D
; ---------------------------------------------------------------------------

loc_10001304:				; CODE XREF: SetPixelFormatMasks+19Fj
					; SetPixelFormatMasks+1B4j
		shl	esi, 10h
		or	esi, eax
		or	esi, edi
		mov	eax, esi

loc_1000130D:				; CODE XREF: SetPixelFormatMasks+1AFj
					; SetPixelFormatMasks+1C2j
		mov	ecx, dword_1000E464
		pop	edi
		and	ecx, 0FFFFh
		pop	esi
		mov	edx, ecx
		mov	dword_1000E470,	eax
		shl	edx, 10h
		or	edx, ecx
		pop	ebx
		and	edx, eax
		mov	dword_1000E478,	edx
		retn
SetPixelFormatMasks endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; signed int __cdecl SetDisplayMode(int	iWidth,	int iHeight)
SetDisplayMode	proc near		; DATA XREF: CADraw_Init+50o

ddSurfaceDescription= DDSURFACEDESC ptr	-6Ch
iWidth		= dword	ptr  4
iHeight		= dword	ptr  8

		sub	esp, 6Ch
		push	esi
		push	edi
		call	ReleaseSurface
		mov	eax, g_bFullscreen
		mov	esi, [esp+74h+iHeight]
		mov	edi, [esp+74h+iWidth]
		test	eax, eax
		jz	short loc_10001376
		mov	eax, g_lpDirectDraw
		push	10h
		push	esi
		push	edi
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+54h]
		test	eax, eax
		jge	short loc_10001376
		pop	edi
		xor	eax, eax
		pop	esi
		add	esp, 6Ch
		retn
; ---------------------------------------------------------------------------

loc_10001376:				; CODE XREF: SetDisplayMode+19j
					; SetDisplayMode+2Cj
		mov	edx, g_hWnd
		push	6		; uFlags
		push	esi		; cy
		push	edi		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	edx		; hWnd
		call	ds:SetWindowPos
		mov	eax, g_lpDirectDraw
		push	0
		lea	edx, [esp+78h+ddSurfaceDescription]
		mov	[esp+78h+ddSurfaceDescription.dwSize], 6Ch
		mov	[esp+78h+ddSurfaceDescription.dwFlags],	1
		mov	[esp+78h+ddSurfaceDescription.ddsCaps.dwCaps], 200h
		mov	ecx, [eax]
		push	offset g_lpDDrawSurface
		push	edx
		push	eax
		call	dword ptr [ecx+18h]
		test	eax, eax
		jge	short loc_100013C8
		pop	edi
		xor	eax, eax
		pop	esi
		add	esp, 6Ch
		retn
; ---------------------------------------------------------------------------

loc_100013C8:				; CODE XREF: SetDisplayMode+7Ej
		mov	eax, g_lpDDrawSurface.lpVtbl
		lea	edx, [esp+74h+ddSurfaceDescription]
		push	edx
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+58h]
		mov	eax, dword ptr [esp+74h+ddSurfaceDescription.ddpfPixelFormat.anonymous_3]
		mov	ecx, dword ptr [esp+74h+ddSurfaceDescription.ddpfPixelFormat.anonymous_2]
		mov	edx, dword ptr [esp+74h+ddSurfaceDescription.ddpfPixelFormat.anonymous_1]
		push	eax
		push	ecx
		push	edx
		call	SetPixelFormatMasks ; WORD red_mask = 0xF800;
					; WORD green_mask = 0x7E0;
					; WORD blue_mask = 0x1F;
					;
					; BYTE red_value = (pixel & red_mask) >> 11;
					; BYTE green_value = (pixel & green_mask) >> 5;
					; BYTE blue_value = (pixel & blue_mask);
		add	esp, 0Ch
		call	g_pFnInitialize
		dec	edi
		dec	esi
		mov	g_rcScreenRect.right, edi
		mov	g_rcScreenRect.bottom, esi
		pop	edi
		mov	g_rcScreenRect.left, 0
		mov	g_rcScreenRect.top, 0
		mov	eax, 1
		pop	esi
		add	esp, 6Ch
		retn
SetDisplayMode	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; __int32 __cdecl DrawHorizontalLineToPrimaryBuffer(int	x, int y, int iSize, WORD wColor)
DrawHorizontalLineToPrimaryBuffer proc near ; CODE XREF: DrawRectToPrimaryBuffer+18p
					; DrawRectToPrimaryBuffer+29p
					; DATA XREF: ...

x		= dword	ptr  4
y		= dword	ptr  8
iSize		= dword	ptr  0Ch
wColor		= word ptr  10h

		mov	eax, [esp+x]
		mov	ecx, [esp+iSize]
		mov	edx, [esp+y]
		push	esi
		mov	esi, g_rcScreenRect.top
		lea	ecx, [ecx+eax-1]
		cmp	edx, esi
		jl	short loc_100014B9
		cmp	edx, g_rcScreenRect.bottom
		jg	short loc_100014B9
		mov	esi, g_rcScreenRect.left
		cmp	eax, esi
		jge	short loc_1000145F
		mov	eax, esi

loc_1000145F:				; CODE XREF: DrawHorizontalLineToPrimaryBuffer+2Bj
		mov	esi, g_rcScreenRect.right
		cmp	ecx, esi
		jle	short loc_1000146B
		mov	ecx, esi

loc_1000146B:				; CODE XREF: DrawHorizontalLineToPrimaryBuffer+37j
		cmp	eax, ecx
		jg	short loc_100014B9
		push	ebx
		lea	esi, [edx+edx*4]
		push	edi
		mov	edi, g_uBufferOrigin16
		shl	esi, 7
		mov	ebx, eax
		sar	edi, 1
		add	ebx, esi
		mov	esi, g_dwSurfaceHeight
		add	edi, ebx
		cmp	edx, esi
		lea	edi, g_aBufferPrimary16[edi*2]
		jl	short loc_1000149C
		sub	edi, 96000h

loc_1000149C:				; CODE XREF: DrawHorizontalLineToPrimaryBuffer+64j
		sub	ecx, eax
		mov	eax, dword ptr [esp+0Ch+wColor]
		mov	dx, ax
		inc	ecx
		shl	edx, 10h
		mov	dx, ax
		mov	eax, edx
		shr	ecx, 1
		rep stosd
		adc	ecx, ecx
		rep stosw
		pop	edi
		pop	ebx

loc_100014B9:				; CODE XREF: DrawHorizontalLineToPrimaryBuffer+19j
					; DrawHorizontalLineToPrimaryBuffer+21j ...
		pop	esi
		retn
DrawHorizontalLineToPrimaryBuffer endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; LONG __cdecl DrawVerticalLineToPrimaryBuffer(INT x, INT y, int iSize,	__int16	a4)
DrawVerticalLineToPrimaryBuffer	proc near ; CODE XREF: DrawRectToPrimaryBuffer+36p
					; DrawRectToPrimaryBuffer+47p
					; DATA XREF: ...

x		= dword	ptr  8
y		= dword	ptr  0Ch
iSize		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+y]
		mov	eax, [ebp+iSize]
		mov	ecx, [ebp+x]
		push	ebx
		push	esi
		mov	esi, g_rcScreenRect.left
		cmp	ecx, esi
		push	edi
		lea	eax, [eax+edx-1]
		jl	loc_10001575
		cmp	ecx, g_rcScreenRect.right
		jg	loc_10001575
		mov	esi, g_rcScreenRect.top
		cmp	edx, esi
		jge	short loc_100014F9
		mov	edx, esi

loc_100014F9:				; CODE XREF: DrawVerticalLineToPrimaryBuffer+35j
		mov	esi, g_rcScreenRect.bottom
		cmp	eax, esi
		jle	short loc_10001505
		mov	eax, esi

loc_10001505:				; CODE XREF: DrawVerticalLineToPrimaryBuffer+41j
		mov	esi, 1
		sub	esi, edx
		add	eax, esi
		test	eax, eax
		jle	short loc_10001575
		mov	edi, g_uBufferOrigin16
		lea	esi, [edx+edx*4]
		shl	esi, 7
		sar	edi, 1
		add	ecx, esi
		mov	esi, [ebp+arg_C]
		add	edi, ecx
		lea	ecx, g_aBufferPrimary16[edi*2]
		mov	edi, g_dwSurfaceHeight
		cmp	edx, edi
		jge	short loc_10001561
		mov	ebx, eax
		sub	ebx, edi
		add	edx, ebx
		test	edx, edx
		mov	[ebp+y], edx
		jle	short loc_10001567
		sub	eax, edx
		push	[ebp+y]

loc_1000154A:				; CODE XREF: DrawVerticalLineToPrimaryBuffer+96j
		mov	[ecx], si
		dec	eax
		add	ecx, 500h
		test	eax, eax
		jnz	short loc_1000154A
		mov	[ebp+iSize], eax
		pop	[ebp+iSize]
		mov	eax, [ebp+iSize]

loc_10001561:				; CODE XREF: DrawVerticalLineToPrimaryBuffer+76j
		sub	ecx, 96000h

loc_10001567:				; CODE XREF: DrawVerticalLineToPrimaryBuffer+83j
					; DrawVerticalLineToPrimaryBuffer+B3j
		mov	[ecx], si
		dec	eax
		add	ecx, 500h
		test	eax, eax
		jnz	short loc_10001567

loc_10001575:				; CODE XREF: DrawVerticalLineToPrimaryBuffer+1Bj
					; DrawVerticalLineToPrimaryBuffer+27j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
DrawVerticalLineToPrimaryBuffer	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; LONG __cdecl DrawRectToPrimaryBuffer(int x, int y, int iWidth, int iHeight, __int16 a5)
DrawRectToPrimaryBuffer	proc near	; DATA XREF: CADraw_Init+1C2o

x		= dword	ptr  4
y		= dword	ptr  8
iWidth		= dword	ptr  0Ch
iHeight		= dword	ptr  10h
arg_10		= dword	ptr  14h

		push	ebx
		mov	ebx, [esp+4+x]
		push	ebp
		mov	ebp, [esp+8+iWidth]
		push	esi
		mov	esi, [esp+0Ch+arg_10]
		push	edi
		mov	edi, [esp+10h+y]
		push	esi
		push	ebp
		push	edi
		push	ebx
		call	DrawHorizontalLineToPrimaryBuffer
		mov	eax, [esp+20h+iHeight]
		push	esi
		push	ebp
		lea	ecx, [edi+eax-1]
		push	ecx
		push	ebx
		call	DrawHorizontalLineToPrimaryBuffer
		mov	edx, [esp+30h+iHeight]
		push	esi
		push	edx
		push	edi
		push	ebx
		call	DrawVerticalLineToPrimaryBuffer
		mov	eax, [esp+40h+iHeight]
		push	esi
		push	eax
		lea	ecx, [ebx+ebp-1]
		push	edi
		push	ecx
		call	DrawVerticalLineToPrimaryBuffer
		add	esp, 40h
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
DrawRectToPrimaryBuffer	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; LONG __cdecl DrawFilledRectToPrimaryBuffer(int x, int	y, int iWidth, int iHeight, LONG iColor)
DrawFilledRectToPrimaryBuffer proc near	; DATA XREF: CADraw_Init+1B8o

x		= dword	ptr  8
y		= dword	ptr  0Ch
iWidth		= dword	ptr  10h
iHeight		= dword	ptr  14h
iColor		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+x]
		mov	eax, g_rcScreenRect.left
		push	esi
		cmp	edx, eax
		push	edi
		jge	short loc_10001600
		mov	ecx, [ebp+iWidth]
		sub	edx, eax
		add	ecx, edx
		mov	edx, eax
		mov	[ebp+iWidth], ecx
		mov	[ebp+x], edx

loc_10001600:				; CODE XREF: DrawFilledRectToPrimaryBuffer+Fj
		mov	ecx, [ebp+y]
		mov	eax, g_rcScreenRect.top
		cmp	ecx, eax
		jge	short loc_1000161B
		mov	esi, [ebp+iHeight]
		sub	ecx, eax
		add	esi, ecx
		mov	ecx, eax
		mov	[ebp+iHeight], esi
		mov	[ebp+y], ecx

loc_1000161B:				; CODE XREF: DrawFilledRectToPrimaryBuffer+2Aj
		mov	esi, [ebp+iWidth]
		mov	eax, g_rcScreenRect.right
		lea	edi, [edx+esi-1]
		cmp	edi, eax
		jle	short loc_10001633
		sub	eax, edx
		inc	eax
		mov	esi, eax
		mov	[ebp+iWidth], esi

loc_10001633:				; CODE XREF: DrawFilledRectToPrimaryBuffer+49j
		mov	edx, [ebp+iHeight]
		mov	eax, g_rcScreenRect.bottom
		lea	edi, [ecx+edx-1]
		cmp	edi, eax
		jle	short loc_1000164B
		sub	eax, ecx
		inc	eax
		mov	edx, eax
		mov	[ebp+iHeight], edx

loc_1000164B:				; CODE XREF: DrawFilledRectToPrimaryBuffer+61j
		test	esi, esi
		jle	short loc_100016C6
		test	edx, edx
		jle	short loc_100016C6
		push	esi
		push	edi
		imul	eax, [ebp+y], 280h
		mov	ecx, [ebp+y]
		add	eax, [ebp+x]
		mov	edx, [ebp+iHeight]
		lea	esi, g_aBufferPrimary16[eax*2]
		mov	edi, [ebp+iWidth]
		add	esi, g_uBufferOrigin16
		mov	eax, [ebp+iColor]
		neg	edi
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_100016A7
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_100016AD
		sub	edx, ecx
		push	ecx
		xor	ecx, ecx

loc_10001691:				; CODE XREF: DrawFilledRectToPrimaryBuffer+C4j
		sub	ecx, edi

loc_10001693:				; CODE XREF: DrawFilledRectToPrimaryBuffer+BAj
		mov	[esi], ax
		add	esi, 2
		dec	ecx
		jnz	short loc_10001693
		lea	esi, [esi+edi*2+500h]
		dec	edx
		jnz	short loc_10001691
		pop	edx

loc_100016A7:				; CODE XREF: DrawFilledRectToPrimaryBuffer+A0j
		sub	esi, 96000h

loc_100016AD:				; CODE XREF: DrawFilledRectToPrimaryBuffer+AAj
		xor	ecx, ecx

loc_100016AF:				; CODE XREF: DrawFilledRectToPrimaryBuffer+E2j
		sub	ecx, edi

loc_100016B1:				; CODE XREF: DrawFilledRectToPrimaryBuffer+D8j
		mov	[esi], ax
		add	esi, 2
		dec	ecx
		jnz	short loc_100016B1
		lea	esi, [esi+edi*2+500h]
		dec	edx
		jnz	short loc_100016AF
		pop	edi
		pop	esi

loc_100016C6:				; CODE XREF: DrawFilledRectToPrimaryBuffer+6Dj
					; DrawFilledRectToPrimaryBuffer+71j
		pop	edi
		pop	esi
		pop	ebp
		retn
DrawFilledRectToPrimaryBuffer endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_100016D0_DrawStruct proc near	; DATA XREF: CADraw_Init+1E0o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		mov	eax, g_rcScreenRect.left
		push	ebx
		push	esi
		cmp	ecx, eax
		push	edi
		jge	short loc_100016F9
		mov	edx, [ebp+arg_8]
		sub	ecx, eax
		add	edx, ecx
		mov	ecx, eax
		test	edx, edx
		mov	[ebp+arg_8], edx
		mov	[ebp+arg_0], ecx
		jle	loc_100017E9

loc_100016F9:				; CODE XREF: x_sub_100016D0_DrawStruct+10j
		mov	edx, [ebp+arg_4]
		mov	eax, g_rcScreenRect.top
		cmp	edx, eax
		jge	short loc_1000171C
		mov	esi, [ebp+arg_C]
		sub	edx, eax
		add	esi, edx
		mov	edx, eax
		test	esi, esi
		mov	[ebp+arg_C], esi
		mov	[ebp+arg_4], edx
		jle	loc_100017E9

loc_1000171C:				; CODE XREF: x_sub_100016D0_DrawStruct+33j
		mov	eax, [ebp+arg_8]
		lea	esi, [ecx+eax-1]
		mov	eax, g_rcScreenRect.right
		cmp	esi, eax
		jle	short loc_1000173A
		sub	eax, ecx
		inc	eax
		test	eax, eax
		mov	[ebp+arg_8], eax
		jle	loc_100017E9

loc_1000173A:				; CODE XREF: x_sub_100016D0_DrawStruct+5Aj
		mov	ecx, [ebp+arg_C]
		mov	eax, g_rcScreenRect.bottom
		lea	ecx, [edx+ecx-1]
		cmp	ecx, eax
		jle	short loc_10001758
		sub	eax, edx
		inc	eax
		test	eax, eax
		mov	[ebp+arg_C], eax
		jle	loc_100017E9

loc_10001758:				; CODE XREF: x_sub_100016D0_DrawStruct+78j
		push	esi
		push	edi
		imul	eax, [ebp+arg_4], 280h
		mov	ecx, [ebp+arg_4]
		add	eax, [ebp+arg_0]
		mov	edx, [ebp+arg_C]
		lea	esi, g_aBufferPrimary16[eax*2]
		mov	edi, [ebp+arg_8]
		add	esi, g_uBufferOrigin16
		mov	eax, [ebp+arg_10]
		neg	edi
		push	ebp
		mov	ebp, dword_1000E468
		and	eax, ebp
		shr	eax, 1
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_100017C0
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_100017C6
		sub	edx, ecx
		push	ecx
		xor	ecx, ecx

loc_100017A1:				; CODE XREF: x_sub_100016D0_DrawStruct+EDj
		sub	ecx, edi

loc_100017A3:				; CODE XREF: x_sub_100016D0_DrawStruct+E3j
		mov	bx, [esi]
		and	ebx, ebp
		shr	ebx, 1
		add	ebx, eax
		mov	[esi], bx
		add	esi, 2
		dec	ecx
		jnz	short loc_100017A3
		lea	esi, [esi+edi*2+500h]
		dec	edx
		jnz	short loc_100017A1
		pop	edx

loc_100017C0:				; CODE XREF: x_sub_100016D0_DrawStruct+C0j
		sub	esi, 96000h

loc_100017C6:				; CODE XREF: x_sub_100016D0_DrawStruct+CAj
		xor	ecx, ecx

loc_100017C8:				; CODE XREF: x_sub_100016D0_DrawStruct+114j
		sub	ecx, edi

loc_100017CA:				; CODE XREF: x_sub_100016D0_DrawStruct+10Aj
		mov	bx, [esi]
		and	ebx, ebp
		shr	ebx, 1
		add	ebx, eax
		mov	[esi], bx
		add	esi, 2
		dec	ecx
		jnz	short loc_100017CA
		lea	esi, [esi+edi*2+500h]
		dec	edx
		jnz	short loc_100017C8
		pop	ebp
		pop	edi
		pop	esi

loc_100017E9:				; CODE XREF: x_sub_100016D0_DrawStruct+23j
					; x_sub_100016D0_DrawStruct+46j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
x_sub_100016D0_DrawStruct endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; int __cdecl DrawPointToBuffer1(int x,	int y, __int16 sColor)
DrawPointToBuffer1 proc	near		; CODE XREF: sub_10002030+54p
					; sub_10002030+E5p ...

x		= dword	ptr  4
y		= dword	ptr  8
sColor		= word ptr  0Ch

		mov	edx, [esp+x]
		mov	eax, g_rcScreenRect.left
		cmp	edx, eax
		jl	short locret_1000184A
		mov	ecx, [esp+y]
		mov	eax, g_rcScreenRect.top
		cmp	ecx, eax
		jl	short locret_1000184A
		cmp	edx, g_rcScreenRect.right
		jg	short locret_1000184A
		cmp	ecx, g_rcScreenRect.bottom
		jg	short locret_1000184A
		push	esi
		mov	esi, g_uBufferOrigin16
		sar	esi, 1
		lea	eax, [ecx+ecx*4]
		add	edx, esi
		shl	eax, 7
		add	eax, edx
		mov	edx, g_dwSurfaceHeight
		cmp	ecx, edx
		pop	esi
		jl	short loc_1000183D
		sub	eax, 4B000h

loc_1000183D:				; CODE XREF: DrawPointToBuffer1+46j
		mov	cx, [esp+sColor]
		mov	g_aBufferPrimary16[eax*2], cx

locret_1000184A:			; CODE XREF: DrawPointToBuffer1+Bj
					; DrawPointToBuffer1+18j ...
		retn
DrawPointToBuffer1 endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; int __cdecl DrawPointToBuffer2(int x,	int y, __int16 sColor)
DrawPointToBuffer2 proc	near		; DATA XREF: CADraw_Init+122o

x		= dword	ptr  4
y		= dword	ptr  8
sColor		= word ptr  0Ch

		mov	edx, [esp+x]
		mov	eax, g_rcScreenRect.left
		cmp	edx, eax
		jl	short locret_100018AA
		mov	ecx, [esp+y]
		mov	eax, g_rcScreenRect.top
		cmp	ecx, eax
		jl	short locret_100018AA
		cmp	edx, g_rcScreenRect.right
		jg	short locret_100018AA
		cmp	ecx, g_rcScreenRect.bottom
		jg	short locret_100018AA
		push	esi
		mov	esi, g_uBufferOrigin16
		sar	esi, 1
		lea	eax, [ecx+ecx*4]
		add	edx, esi
		shl	eax, 7
		add	eax, edx
		mov	edx, g_dwSurfaceHeight
		cmp	ecx, edx
		pop	esi
		jl	short loc_1000189D
		sub	eax, 4B000h

loc_1000189D:				; CODE XREF: DrawPointToBuffer2+46j
		mov	cx, [esp+sColor]
		mov	g_aBufferSecondary16[eax*2], cx

locret_100018AA:			; CODE XREF: DrawPointToBuffer2+Bj
					; DrawPointToBuffer2+18j ...
		retn
DrawPointToBuffer2 endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl DrawImageToPrimaryBuffer(int iSrcX, unsigned int iSrcY, int a3, int a4, int iDestX, int iDestY, int iDestWidth, char *pDestAddress)
DrawImageToPrimaryBuffer proc near	; DATA XREF: CADraw_Init+212o

iSrcX		= dword	ptr  8
iSrcY		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
iDestX		= dword	ptr  18h
iDestY		= dword	ptr  1Ch
iDestWidth	= dword	ptr  20h
pDestAddress	= dword	ptr  24h

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cld
		push	esi
		push	edi
		push	ebx
		imul	eax, [ebp+iSrcY], 280h
		add	eax, [ebp+iSrcX]
		lea	esi, g_aBufferPrimary16[eax*2]
		add	esi, g_uBufferOrigin16
		mov	eax, [ebp+iDestWidth]
		mul	[ebp+iDestY]
		add	eax, [ebp+iDestX]
		shl	eax, 1
		add	eax, [ebp+pDestAddress]
		mov	edi, eax
		mov	eax, [ebp+arg_8]
		mov	ebx, eax
		mov	ecx, [ebp+iSrcY]
		neg	ebx
		shl	ebx, 1
		mov	edx, [ebp+iDestWidth]
		sub	edx, [ebp+arg_8]
		shl	edx, 1
		mov	[ebp+iDestWidth], edx
		mov	edx, [ebp+arg_C]
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_10001923
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_10001929
		push	ecx
		sub	edx, ecx

loc_10001910:				; CODE XREF: DrawImageToPrimaryBuffer+70j
		mov	ecx, eax
		rep movsw
		lea	esi, [esi+ebx+500h]
		add	edi, [ebp+iDestWidth]
		dec	edx
		jnz	short loc_10001910
		pop	edx

loc_10001923:				; CODE XREF: DrawImageToPrimaryBuffer+51j
		sub	esi, 96000h

loc_10001929:				; CODE XREF: DrawImageToPrimaryBuffer+5Bj
					; DrawImageToPrimaryBuffer+89j
		mov	ecx, eax
		rep movsw
		lea	esi, [esi+ebx+500h]
		add	edi, [ebp+iDestWidth]
		dec	edx
		jnz	short loc_10001929
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
DrawImageToPrimaryBuffer endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

j_nullsub_1	proc near		; DATA XREF: .data:1000E004o
		jmp	nullsub_1
j_nullsub_1	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


nullsub_1	proc near		; CODE XREF: j_nullsub_1j
		retn
nullsub_1	endp

; ---------------------------------------------------------------------------
		align 10h
; Exported entry   1. CADraw_Init

; =============== S U B	R O U T	I N E =======================================


		public CADraw_Init
CADraw_Init	proc near		; DATA XREF: .rdata:off_1000D888o
		mov	g_pBufferPrimary, offset g_aBufferPrimary16
		mov	g_pBufferSecondary, offset g_aBufferSecondary16
		mov	g_pBufferThird,	offset g_aBufferThird
		call	Initialize
		mov	eax, offset sub_10003090
		mov	g_pFnInitialize, offset	Initialize
		mov	g_pFnSub_10003090_1, eax
		mov	g_pFnSub_10003090_2, eax
		mov	g_pFnCreateDirectDrawAndSetCooperativeLevel, offset CreateDirectDrawAndSetCooperativeLevel
		mov	g_fnShutdownDirectDrawFullscreen, offset ReleaseDirectDrawFullscreen
		mov	g_pFnSetDisplayMode, offset SetDisplayMode
		mov	g_pFnSetPixelFormatMask, offset	SetPixelFormatMasks ; WORD red_mask = 0xF800;
					; WORD green_mask = 0x7E0;
					; WORD blue_mask = 0x1F;
					;
					; BYTE red_value = (pixel & red_mask) >> 11;
					; BYTE green_value = (pixel & green_mask) >> 5;
					; BYTE blue_value = (pixel & blue_mask);
		mov	g_pFnReleaseSurface, offset ReleaseSurface
		mov	g_pFnLockSurface, offset LockSurface
		mov	g_pFnUnlockSurface, offset UnlockSurface
		mov	g_pFnX_sub_10001D00, offset x_sub_10001D00
		mov	g_pFnX_sub_10001BF0, offset x_sub_10001BF0_CopyPixelsArray ; WORD red_mask = 0xF800;
					; WORD green_mask = 0x7E0;
					; WORD blue_mask = 0x1F;
					;
					; BYTE red_value = (pixel & red_mask) >> 11;
					; BYTE green_value = (pixel & green_mask) >> 5;
					; BYTE blue_value = (pixel & blue_mask);
		mov	g_pFnX_sub_10001C80, offset x_sub_10001C80_CopyPixelsArray ; WORD red_mask = 0xF800;
					; WORD green_mask = 0x7E0;
					; WORD blue_mask = 0x1F;
					;
					; BYTE red_value = (pixel & red_mask) >> 11;
					; BYTE green_value = (pixel & green_mask) >> 5;
					; BYTE blue_value = (pixel & blue_mask);
		mov	g_pFnX_sub_10003400, offset x_sub_10003400
		mov	g_pFnX_sub_10003490, offset x_sub_10003490_call
		mov	g_pFnX_sub_10003430, offset x_sub_10003430_call
		mov	g_pFnX_sub_10001EA0_call, offset x_sub_10001EA0_call
		mov	g_pFnX_sub_10001F20_call, offset x_sub_10001F20_call
		mov	g_pFnSub_10004460, offset sub_10004460
		mov	g_pFnSub_10004786, offset sub_10004786
		mov	g_pFnSub_10004AB6, offset sub_10004AB6
		mov	g_pFnSub_10005F01, offset sub_10005F01
		mov	g_pFnSub_10005B96, offset sub_10005B96
		mov	g_pFnSub_1000586C, offset sub_1000586C
		mov	g_pFnSub_10007678, offset sub_10007678
		mov	g_pFnSub_10001F90, offset CopyRectFromPrimaryBufferToSecondaryBuffer ; Copy from primary buffer	to secondary
					;
		mov	g_pFnX_sub_10001850, offset DrawPointToBuffer2
		mov	g_pFnX_sub_10001EE0_call, offset x_sub_10001EE0_call
		mov	g_pFnX_sub_10001F50_call, offset x_sub_10001F50_call
		mov	g_pFnSub_100051AF, offset sub_100051AF
		mov	g_pFnSub_10006586, offset sub_10006586
		mov	g_pFnSub_1000625D, offset sub_1000625D
		mov	g_pFnSub_10004E80, offset sub_10004E80
		mov	g_pFnSub_10006C48, offset sub_10006C48
		mov	g_pFnSub_10006FE2, offset sub_10006FE2
		mov	g_pFnSub_1000687D, offset sub_1000687D
		mov	g_pFnSub_100073B2, offset sub_100073B2
		mov	g_pFnSub_10007D0C, offset sub_10007D0C
		mov	g_pFnSub_10007938, offset sub_10007938
		mov	g_pFnSub_10005493, offset sub_10005493
		mov	g_pFnX_sub_100017F0, offset DrawPointToBuffer1
		mov	g_pFnSub_100015E0, offset DrawFilledRectToPrimaryBuffer
		mov	g_pFnDrawRect, offset DrawRectToPrimaryBuffer
		mov	g_pFnDrawHorizontalLine, offset	DrawHorizontalLineToPrimaryBuffer
		mov	g_pFnDrawVerticalLine, offset DrawVerticalLineToPrimaryBuffer
		mov	g_pFnSub_100016D0, offset x_sub_100016D0_DrawStruct
		mov	g_pFnSub_100024C0, offset x_sub_100024C0
		mov	g_pFnSub_10002030, offset sub_10002030
		mov	g_pFnSub_10002C70, offset sub_10002C70 ; struct	X
					; {
					;    //	-8
					;    //	-4
					;    BOOL bNeedUnlockSurface;
					;    //	0
					;    //	4
					;    //	8
					;    INT x;
					;    //	12
					;    INT y;
					;    //	16
					;    INT iWidth;
					;    //	20
					;    INT iHeight;
					;    //	24
					; }
					;
					; Copy data from primary buffer	to Direct Draw Surface.
		mov	g_pFnCopyFromPrimaryBufferToDirectDrawSurface, offset CopyFromPrimaryBufferToDirectDrawSurface
		mov	g_pFnDrawImage,	offset DrawImageToPrimaryBuffer
		mov	g_pFnSub_10002860, offset x_sub_10002860_RectAndFFFBFFFBu
		mov	g_pFnSub_100027C0, offset x_sub_100027C0
		mov	g_pFnCopyDataToDirectDrawSurface, offset CopyDataToDirectDrawSurface
		mov	g_pFnSub_10002B10, offset CopyLines
		mov	g_pFnSub_100088E9, offset x_sub_100088E9_DrawStruct
		mov	g_pFnSub_10009F13, offset x_sub_10009F13_DrawStruct
		mov	g_pFnSub_100098D3, offset x_sub_100098D3_DrawStruct
		mov	g_pFnReleaseDirectDraw,	offset ReleaseDirectDraw
		mov	eax, offset g_rcScreenRect
		retn
CADraw_Init	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; WORD red_mask	= 0xF800;
; WORD green_mask = 0x7E0;
; WORD blue_mask = 0x1F;
;
; BYTE red_value = (pixel & red_mask) >> 11;
; BYTE green_value = (pixel & green_mask) >> 5;
; BYTE blue_value = (pixel & blue_mask);

; int __cdecl x_sub_10001BF0_CopyPixelsArray(WORD *pwSrc, WORD *pwDest,	int iCount)
x_sub_10001BF0_CopyPixelsArray proc near ; DATA	XREF: CADraw_Init+8Co

pwSrc		= dword	ptr  4
pwDest		= dword	ptr  8
iCount		= dword	ptr  0Ch

		mov	eax, [esp+iCount]
		test	eax, eax
		jle	locret_10001C7D
		push	ebx
		push	ebp
		push	esi
		mov	esi, [esp+0Ch+pwDest]
		push	edi
		mov	edi, [esp+10h+pwSrc]
		mov	ebx, eax

loc_10001C0A:				; CODE XREF: x_sub_10001BF0_CopyPixelsArray+87j
		mov	dx, [edi]
		cmp	dx, 0F81Fh
		jnz	short loc_10001C19
		mov	[esi], dx
		jmp	short loc_10001C70
; ---------------------------------------------------------------------------

loc_10001C19:				; CODE XREF: x_sub_10001BF0_CopyPixelsArray+22j
		mov	eax, edx
		mov	cl, byte ptr m_wGBitFromLeftOffset
		and	eax, 0FFFFh
		and	edx, 0F800h
		mov	ebp, eax
		and	eax, 1Fh
		and	ebp, 7E0h
		shl	ebp, 5
		sar	ebp, cl
		mov	ecx, g_dwGBitDoubleMask
		shl	eax, 0Bh
		and	ebp, ecx
		mov	cl, byte ptr m_wBBitFromLeftOffset
		sar	eax, cl
		mov	ecx, g_dwBBitDoubleMask
		and	eax, ecx
		mov	cx, m_wRBitFromLeftOffset
		shr	dx, cl
		mov	ecx, g_dwRBitDoubleMask
		or	ebp, eax
		and	edx, ecx
		or	ebp, edx
		mov	[esi], bp

loc_10001C70:				; CODE XREF: x_sub_10001BF0_CopyPixelsArray+27j
		add	edi, 2
		add	esi, 2
		dec	ebx
		jnz	short loc_10001C0A
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx

locret_10001C7D:			; CODE XREF: x_sub_10001BF0_CopyPixelsArray+6j
		retn
x_sub_10001BF0_CopyPixelsArray endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; WORD red_mask	= 0xF800;
; WORD green_mask = 0x7E0;
; WORD blue_mask = 0x1F;
;
; BYTE red_value = (pixel & red_mask) >> 11;
; BYTE green_value = (pixel & green_mask) >> 5;
; BYTE blue_value = (pixel & blue_mask);

; int __cdecl x_sub_10001C80_CopyPixelsArray(char *pSrc, char *pDest, int iCount)
x_sub_10001C80_CopyPixelsArray proc near ; DATA	XREF: CADraw_Init+96o

pSrc		= dword	ptr  4
pDest		= dword	ptr  8
iCount		= dword	ptr  0Ch

		push	ebx
		mov	ebx, [esp+4+iCount]
		test	ebx, ebx
		jle	short loc_10001CFB
		push	ebp
		push	esi
		mov	esi, [esp+0Ch+pSrc]
		push	edi
		mov	edi, [esp+10h+pDest]

loc_10001C94:				; CODE XREF: x_sub_10001C80_CopyPixelsArray+76j
		mov	dx, [esi]
		mov	cl, byte ptr m_wGBitFromLeftOffset
		mov	eax, edx
		and	edx, 0F800h
		and	eax, 0FFFFh
		add	esi, 4
		mov	ebp, eax
		and	eax, 1Fh
		and	ebp, 7E0h
		add	edi, 4
		shl	ebp, 5
		sar	ebp, cl
		mov	ecx, g_dwGBitDoubleMask
		shl	eax, 0Bh
		and	ebp, ecx
		mov	cl, byte ptr m_wBBitFromLeftOffset
		sar	eax, cl
		mov	ecx, g_dwBBitDoubleMask
		and	eax, ecx
		mov	cx, m_wRBitFromLeftOffset
		shr	dx, cl
		mov	ecx, g_dwRBitDoubleMask
		or	ebp, eax
		and	edx, ecx
		or	ebp, edx
		dec	ebx
		mov	[edi-4], bp
		jnz	short loc_10001C94
		pop	edi
		pop	esi
		pop	ebp

loc_10001CFB:				; CODE XREF: x_sub_10001C80_CopyPixelsArray+7j
		pop	ebx
		retn
x_sub_10001C80_CopyPixelsArray endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; unsigned int __cdecl x_sub_10001D00(int x, int y)
x_sub_10001D00	proc near		; DATA XREF: CADraw_Init+82o

x		= dword	ptr  4
y		= dword	ptr  8

		push	ebx
		mov	ebx, [esp+4+x]
		push	ebp
		mov	ebp, [esp+8+y]
		mov	eax, g_uBufferOrigin16
		lea	ecx, [ebp+ebp*4+0]
		shl	ecx, 7
		add	ecx, ebx
		lea	ecx, [eax+ecx*2]
		test	ecx, ecx
		mov	[esp+8+y], ecx
		jge	short loc_10001D2D

loc_10001D23:				; CODE XREF: x_sub_10001D00+29j
		add	ecx, 96000h
		js	short loc_10001D23
		jmp	short loc_10001D43
; ---------------------------------------------------------------------------

loc_10001D2D:				; CODE XREF: x_sub_10001D00+21j
		cmp	ecx, 96000h
		jl	short loc_10001D47

loc_10001D35:				; CODE XREF: x_sub_10001D00+41j
		sub	ecx, 96000h
		cmp	ecx, 96000h
		jge	short loc_10001D35

loc_10001D43:				; CODE XREF: x_sub_10001D00+2Bj
		mov	[esp+8+y], ecx

loc_10001D47:				; CODE XREF: x_sub_10001D00+33j
		cdq
		sub	eax, edx
		push	esi
		sar	eax, 1
		cdq
		mov	esi, 280h
		push	edi
		idiv	esi
		lea	eax, [edx+ebx]
		test	eax, eax
		jge	short loc_10001D91
		mov	esi, g_pBufferSecondary
		mov	ecx, 140h
		lea	edi, [esi+96000h]
		rep movsd
		mov	esi, g_pBufferPrimary
		mov	ecx, 140h
		lea	edi, [esi+96000h]
		rep movsd
		mov	esi, g_pBufferThird
		lea	edi, [esi+96000h]
		jmp	short loc_10001DCA
; ---------------------------------------------------------------------------

loc_10001D91:				; CODE XREF: x_sub_10001D00+5Bj
		cmp	eax, 280h
		jl	short loc_10001DD5
		mov	edi, g_pBufferSecondary
		mov	ecx, 140h
		lea	esi, [edi+96000h]
		rep movsd
		mov	edi, g_pBufferPrimary
		mov	ecx, 140h
		lea	esi, [edi+96000h]
		rep movsd
		mov	edi, g_pBufferThird
		lea	esi, [edi+96000h]

loc_10001DCA:				; CODE XREF: x_sub_10001D00+8Fj
		mov	ecx, 140h
		rep movsd
		mov	ecx, [esp+10h+y]

loc_10001DD5:				; CODE XREF: x_sub_10001D00+96j
		mov	eax, ecx
		mov	g_uBufferOrigin16, ecx
		cdq
		sub	eax, edx
		pop	edi
		mov	ecx, eax
		mov	eax, 66666667h
		sar	ecx, 1
		imul	ecx
		sar	edx, 8
		mov	eax, edx
		mov	ecx, 1E0h
		shr	eax, 1Fh
		add	edx, eax
		pop	esi
		sub	ecx, edx
		test	ebp, ebp
		mov	g_dwSurfaceHeight, ecx
		jle	short loc_10001E52
		test	ebx, ebx
		mov	edx, ebp
		jle	short loc_10001E30
		mov	eax, 1E0h
		mov	ecx, 280h
		neg	edx
		sub	eax, ebp
		push	edx
		sub	ecx, ebx
		push	eax
		push	ecx
		push	0
		push	0
		call	x_sub_100028F0	;
					;	if ( x <= 0 )
					;	  result = sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
					;	else
					;	  result = sub_100028F0(0, -_y,	640 - x, _y + 480, -_y);
					;
					;     ...
					;
					;     if ( x <=	0 )
					;	result = sub_100028F0(-x, 0, x + 640, 480 - _y,	-_y);
					;     else
					;	result = sub_100028F0(0, 0, 640	- x, 480 - _y, -_y);
					;
					;
		add	esp, 14h
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_10001E30:				; CODE XREF: x_sub_10001D00+10Cj
		mov	eax, 1E0h
		lea	ecx, [ebx+280h]
		neg	edx
		sub	eax, ebp
		push	edx
		push	eax
		push	ecx
		neg	ebx
		push	0
		push	ebx
		call	x_sub_100028F0	;
					;	if ( x <= 0 )
					;	  result = sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
					;	else
					;	  result = sub_100028F0(0, -_y,	640 - x, _y + 480, -_y);
					;
					;     ...
					;
					;     if ( x <=	0 )
					;	result = sub_100028F0(-x, 0, x + 640, 480 - _y,	-_y);
					;     else
					;	result = sub_100028F0(0, 0, 640	- x, 480 - _y, -_y);
					;
					;
		add	esp, 14h
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_10001E52:				; CODE XREF: x_sub_10001D00+106j
		jge	short loc_10001E97
		test	ebx, ebx
		mov	eax, ebp
		jle	short loc_10001E7A
		neg	eax
		mov	edx, 280h
		add	ebp, 1E0h
		push	eax
		sub	edx, ebx
		push	ebp
		push	edx
		push	eax
		push	0
		call	x_sub_100028F0	;
					;	if ( x <= 0 )
					;	  result = sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
					;	else
					;	  result = sub_100028F0(0, -_y,	640 - x, _y + 480, -_y);
					;
					;     ...
					;
					;     if ( x <=	0 )
					;	result = sub_100028F0(-x, 0, x + 640, 480 - _y,	-_y);
					;     else
					;	result = sub_100028F0(0, 0, 640	- x, 480 - _y, -_y);
					;
					;
		add	esp, 14h
		pop	ebp
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_10001E7A:				; CODE XREF: x_sub_10001D00+158j
		neg	eax
		add	ebp, 1E0h
		push	eax
		lea	ecx, [ebx+280h]
		push	ebp
		push	ecx
		push	eax
		neg	ebx
		push	ebx
		call	x_sub_100028F0	;
					;	if ( x <= 0 )
					;	  result = sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
					;	else
					;	  result = sub_100028F0(0, -_y,	640 - x, _y + 480, -_y);
					;
					;     ...
					;
					;     if ( x <=	0 )
					;	result = sub_100028F0(-x, 0, x + 640, 480 - _y,	-_y);
					;     else
					;	result = sub_100028F0(0, 0, 640	- x, 480 - _y, -_y);
					;
					;
		add	esp, 14h

loc_10001E97:				; CODE XREF: x_sub_10001D00:loc_10001E52j
		pop	ebp
		pop	ebx
		retn
x_sub_10001D00	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_10001EA0_call proc near		; DATA XREF: CADraw_Init+BEo

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch

		mov	ecx, g_dwWidth
		mov	eax, [esp+arg_18]
		push	offset g_aBufferSecondary16
		push	eax
		mov	eax, [esp+8+arg_4]
		lea	edx, [ecx+ecx]
		mov	ecx, [esp+8+arg_0]
		push	edx
		mov	edx, [esp+0Ch+arg_14]
		push	eax
		mov	eax, [esp+10h+arg_10]
		push	ecx
		mov	ecx, [esp+14h+arg_C]
		push	edx
		mov	edx, [esp+18h+arg_8]
		push	eax
		push	ecx
		push	edx
		call	h_________________sub_100034F0
		add	esp, 24h
		retn
x_sub_10001EA0_call endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_10001EE0_call proc near		; DATA XREF: CADraw_Init+12Co

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h

		mov	eax, g_dwWidth
		mov	edx, [esp+arg_4]
		push	offset g_aBufferPrimary16
		lea	ecx, [eax+eax]
		mov	eax, [esp+4+arg_0]
		push	ecx
		mov	ecx, [esp+8+arg_14]
		push	edx
		mov	edx, [esp+0Ch+arg_10]
		push	eax
		mov	eax, [esp+10h+arg_C]
		push	ecx
		mov	ecx, [esp+14h+arg_8]
		push	edx
		push	eax
		push	ecx
		call	sub_100038EE
		add	esp, 20h
		retn
x_sub_10001EE0_call endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_10001F20_call proc near		; DATA XREF: CADraw_Init+C8o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	ecx, g_dwWidth
		mov	eax, [esp+arg_8]
		push	offset g_aBufferPrimary16
		push	eax
		mov	eax, [esp+8+arg_4]
		lea	edx, [ecx+ecx]
		mov	ecx, [esp+8+arg_0]
		push	edx
		push	eax
		push	ecx
		call	sub_100040E6
		add	esp, 14h
		retn
x_sub_10001F20_call endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_10001F50_call proc near		; DATA XREF: CADraw_Init+136o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h
arg_14		= dword	ptr  18h
arg_18		= dword	ptr  1Ch

		mov	ecx, g_dwWidth
		mov	eax, [esp+arg_18]
		push	offset g_aBufferPrimary16
		push	eax
		mov	eax, [esp+8+arg_4]
		lea	edx, [ecx+ecx]
		mov	ecx, [esp+8+arg_0]
		push	edx
		mov	edx, [esp+0Ch+arg_14]
		push	eax
		mov	eax, [esp+10h+arg_10]
		push	ecx
		mov	ecx, [esp+14h+arg_C]
		push	edx
		mov	edx, [esp+18h+arg_8]
		push	eax
		push	ecx
		push	edx
		call	sub_10003D18
		add	esp, 24h
		retn
x_sub_10001F50_call endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Copy from primary buffer to secondary
;
; Attributes: bp-based frame

; unsigned int __cdecl CopyRectFromPrimaryBufferToSecondaryBuffer(int x, unsigned int y, unsigned int iWidth, int iHeight)
CopyRectFromPrimaryBufferToSecondaryBuffer proc	near ; DATA XREF: CADraw_Init+118o

x		= dword	ptr  8
y		= dword	ptr  0Ch
iWidth		= dword	ptr  10h
iHeight		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		push	esi
		push	edi
		push	ebx
		imul	eax, [ebp+y], 280h
		add	eax, [ebp+x]
		lea	esi, g_aBufferSecondary16[eax*2]
		lea	edi, g_aBufferPrimary16[eax*2]
		add	esi, g_uBufferOrigin16
		add	edi, g_uBufferOrigin16
		mov	eax, [ebp+iWidth]
		mov	edx, [ebp+iHeight]
		mov	ebx, 280h
		mov	ecx, [ebp+y]
		sub	ebx, eax
		shr	eax, 2
		shl	ebx, 1
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_10001FFE
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_1000200A
		push	ecx
		sub	edx, ecx

loc_10001FE7:				; CODE XREF: CopyRectFromPrimaryBufferToSecondaryBuffer+6Bj
		mov	ecx, eax

loc_10001FE9:				; CODE XREF: CopyRectFromPrimaryBufferToSecondaryBuffer+64j
		fld	qword ptr [esi]
		fstp	qword ptr [edi]
		add	esi, 8
		add	edi, 8
		dec	ecx
		jnz	short loc_10001FE9
		add	esi, ebx
		add	edi, ebx
		dec	edx
		jnz	short loc_10001FE7
		pop	edx

loc_10001FFE:				; CODE XREF: CopyRectFromPrimaryBufferToSecondaryBuffer+48j
		sub	esi, 96000h
		sub	edi, 96000h

loc_1000200A:				; CODE XREF: CopyRectFromPrimaryBufferToSecondaryBuffer+52j
					; CopyRectFromPrimaryBufferToSecondaryBuffer+8Ej
		mov	ecx, eax

loc_1000200C:				; CODE XREF: CopyRectFromPrimaryBufferToSecondaryBuffer+87j
		fld	qword ptr [esi]
		fstp	qword ptr [edi]
		add	esi, 8
		add	edi, 8
		dec	ecx
		jnz	short loc_1000200C
		add	esi, ebx
		add	edi, ebx
		dec	edx
		jnz	short loc_1000200A
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
CopyRectFromPrimaryBufferToSecondaryBuffer endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; int __cdecl sub_10002030(int x, int y, int iWidth, __int16 wColor, int a5)
sub_10002030	proc near		; DATA XREF: CADraw_Init+1F4o

_y		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
x		= dword	ptr  4
y		= dword	ptr  8
iWidth		= dword	ptr  0Ch
wColor		= dword	ptr  10h
arg_10		= dword	ptr  14h

		sub	esp, 10h
		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	edi, [esp+20h+iWidth]
		mov	ecx, [esp+20h+arg_10]
		mov	ebp, 1
		mov	eax, edi
		lea	edx, [edi+edi]
		xor	ebx, ebx
		mov	[esp+20h+var_C], edx
		mov	edx, [esp+20h+x]
		sub	ebp, edi
		mov	esi, ecx
		neg	eax
		add	edx, edi
		mov	[esp+20h+var_8], eax
		mov	[esp+20h+iWidth], edx
		mov	edx, [esp+20h+y]
		mov	[esp+20h+var_4], ebx
		mov	[esp+20h+_y], edx

loc_1000206F:				; CODE XREF: sub_10002030+ABj
		cmp	esi, ecx
		jle	short loc_10002094
		mov	eax, [esp+20h+wColor]
		mov	edx, [esp+20h+iWidth]
		sub	esi, ecx
		mov	ecx, [esp+20h+_y]
		push	eax
		push	ecx
		push	edx
		call	DrawPointToBuffer1
		mov	ecx, [esp+2Ch+arg_10]
		mov	eax, [esp+2Ch+var_8]
		add	esp, 0Ch

loc_10002094:				; CODE XREF: sub_10002030+41j
		test	ebp, ebp
		jl	short loc_100020BA
		mov	edx, [esp+20h+iWidth]
		dec	edi
		dec	edx
		add	esi, 3989h
		mov	[esp+20h+iWidth], edx
		mov	edx, [esp+20h+var_C]
		sub	edx, 2
		inc	eax
		mov	[esp+20h+var_C], edx
		mov	[esp+20h+var_8], eax
		sub	ebp, edx

loc_100020BA:				; CODE XREF: sub_10002030+66j
		mov	edx, [esp+20h+_y]
		inc	ebx
		inc	edx
		add	esi, 10000h
		mov	[esp+20h+_y], edx
		mov	edx, [esp+20h+var_4]
		sub	edx, 4
		lea	ebp, [ebp+ebx*8+1]
		cmp	eax, edx
		mov	[esp+20h+var_4], edx
		jle	short loc_1000206F
		mov	edx, [esp+20h+x]
		lea	eax, ds:0[ebx*8]
		mov	[esp+20h+var_4], eax
		lea	eax, [edi+edx]
		mov	edx, [esp+20h+y]
		mov	[esp+20h+_y], eax
		lea	eax, [ebx+edx]
		neg	ebp
		mov	[esp+20h+iWidth], eax

loc_10002100:				; CODE XREF: sub_10002030+128j
		cmp	esi, ecx
		jle	short loc_10002121
		mov	edx, [esp+20h+iWidth]
		mov	eax, [esp+20h+_y]
		sub	esi, ecx
		mov	ecx, [esp+20h+wColor]
		push	ecx
		push	edx
		push	eax
		call	DrawPointToBuffer1
		mov	ecx, [esp+2Ch+arg_10]
		add	esp, 0Ch

loc_10002121:				; CODE XREF: sub_10002030+D2j
		test	ebp, ebp
		jl	short loc_10002142
		mov	eax, [esp+20h+iWidth]
		inc	ebx
		inc	eax
		add	esi, 3989h
		mov	[esp+20h+iWidth], eax
		mov	eax, [esp+20h+var_4]
		add	eax, 8
		mov	[esp+20h+var_4], eax
		sub	ebp, eax

loc_10002142:				; CODE XREF: sub_10002030+F3j
		mov	eax, [esp+20h+_y]
		dec	edi
		dec	eax
		add	esi, 10000h
		test	edi, edi
		mov	[esp+20h+_y], eax
		lea	ebp, [ebp+edi*2-1]
		jge	short loc_10002100
		lea	edx, [edi+edi]
		mov	eax, ebx
		mov	[esp+20h+var_C], edx
		lea	edx, ds:0[ebx*8]
		mov	[esp+20h+var_4], edx
		mov	edx, [esp+20h+x]
		add	edx, edi
		neg	eax
		mov	[esp+20h+_y], edx
		mov	edx, [esp+20h+y]
		shl	eax, 2
		add	edx, ebx
		mov	[esp+20h+var_8], eax
		mov	[esp+20h+iWidth], edx
		jmp	short loc_10002191
; ---------------------------------------------------------------------------

loc_1000218D:				; CODE XREF: sub_10002030+1D0j
		mov	ecx, [esp+20h+arg_10]

loc_10002191:				; CODE XREF: sub_10002030+15Bj
		cmp	esi, ecx
		jle	short loc_100021B2
		mov	eax, [esp+20h+wColor]
		mov	edx, [esp+20h+_y]
		sub	esi, ecx
		mov	ecx, [esp+20h+iWidth]
		push	eax
		push	ecx
		push	edx
		call	DrawPointToBuffer1
		mov	eax, [esp+2Ch+var_8]
		add	esp, 0Ch

loc_100021B2:				; CODE XREF: sub_10002030+163j
		test	ebp, ebp
		jl	short loc_100021DA
		mov	ecx, [esp+20h+iWidth]
		dec	ebx
		dec	ecx
		add	eax, 4
		mov	[esp+20h+iWidth], ecx
		mov	ecx, [esp+20h+var_4]
		sub	ecx, 8
		add	esi, 3989h
		mov	[esp+20h+var_4], ecx
		mov	[esp+20h+var_8], eax
		sub	ebp, ecx

loc_100021DA:				; CODE XREF: sub_10002030+184j
		mov	ecx, [esp+20h+_y]
		dec	edi
		dec	ecx
		mov	edx, 1
		mov	[esp+20h+_y], ecx
		mov	ecx, [esp+20h+var_C]
		sub	ecx, 2
		add	esi, 10000h
		sub	edx, ecx
		mov	[esp+20h+var_C], ecx
		add	ebp, edx
		cmp	eax, edi
		jle	short loc_1000218D
		mov	eax, [esp+20h+x]
		mov	edx, [esp+20h+y]
		neg	ebp
		lea	ecx, [edi+eax]
		lea	eax, [ebx+edx]
		mov	[esp+20h+_y], eax
		mov	eax, [esp+20h+arg_10]
		mov	[esp+20h+iWidth], ecx

loc_1000221E:				; CODE XREF: sub_10002030+23Dj
		cmp	esi, eax
		jle	short loc_1000223F
		mov	ecx, [esp+20h+wColor]
		mov	edx, [esp+20h+_y]
		sub	esi, eax
		mov	eax, [esp+20h+iWidth]
		push	ecx
		push	edx
		push	eax
		call	DrawPointToBuffer1
		mov	eax, [esp+2Ch+arg_10]
		add	esp, 0Ch

loc_1000223F:				; CODE XREF: sub_10002030+1F0j
		test	ebp, ebp
		jl	short loc_10002257
		mov	edx, [esp+20h+iWidth]
		dec	edi
		dec	edx
		add	esi, 3989h
		mov	[esp+20h+iWidth], edx
		lea	ebp, [ebp+edi*2+0]

loc_10002257:				; CODE XREF: sub_10002030+211j
		mov	ecx, [esp+20h+_y]
		dec	ebx
		dec	ecx
		add	esi, 10000h
		test	ebx, ebx
		mov	[esp+20h+_y], ecx
		lea	ebp, [ebp+ebx*8+1]
		jge	short loc_1000221E
		lea	ecx, ds:0[ebx*4]
		lea	edx, ds:0[ebx*8]
		mov	[esp+20h+var_C], ecx
		mov	ecx, [esp+20h+x]
		mov	[esp+20h+var_4], edx
		lea	edx, [edi+ecx]
		mov	ecx, [esp+20h+y]
		mov	[esp+20h+iWidth], edx
		lea	edx, [ebx+ecx]
		mov	[esp+20h+_y], edx

loc_1000229B:				; CODE XREF: sub_10002030+2D7j
		cmp	esi, eax
		jle	short loc_100022BC
		mov	ecx, [esp+20h+_y]
		mov	edx, [esp+20h+iWidth]
		sub	esi, eax
		mov	eax, [esp+20h+wColor]
		push	eax
		push	ecx
		push	edx
		call	DrawPointToBuffer1
		mov	eax, [esp+2Ch+arg_10]
		add	esp, 0Ch

loc_100022BC:				; CODE XREF: sub_10002030+26Dj
		test	ebp, ebp
		jl	short loc_100022D4
		mov	edx, [esp+20h+iWidth]
		inc	edi
		inc	edx
		add	esi, 3989h
		mov	[esp+20h+iWidth], edx
		lea	ebp, [ebp+edi*2+0]

loc_100022D4:				; CODE XREF: sub_10002030+28Ej
		mov	ecx, [esp+20h+_y]
		mov	edx, [esp+20h+var_C]
		dec	ebx
		dec	ecx
		mov	[esp+20h+_y], ecx
		mov	ecx, [esp+20h+var_4]
		sub	edx, 4
		sub	ecx, 8
		mov	[esp+20h+var_C], edx
		or	edx, 0FFFFFFFFh
		mov	[esp+20h+var_4], ecx
		sub	edx, ecx
		mov	ecx, [esp+20h+var_C]
		add	esi, 10000h
		add	ebp, edx
		cmp	edi, ecx
		jle	short loc_1000229B
		mov	edx, [esp+20h+x]
		lea	ecx, [edi+edi]
		mov	[esp+20h+var_4], ecx
		mov	eax, edi
		lea	ecx, [edi+edx]
		mov	edx, [esp+20h+y]
		neg	ebp
		mov	[esp+20h+var_C], ecx
		lea	ecx, [ebx+edx]
		neg	eax
		mov	[esp+20h+var_8], eax
		mov	[esp+20h+iWidth], ecx

loc_10002330:				; CODE XREF: sub_10002030+368j
		mov	ecx, [esp+20h+arg_10]
		cmp	esi, ecx
		jle	short loc_10002355
		mov	edx, [esp+20h+wColor]
		mov	eax, [esp+20h+iWidth]
		sub	esi, ecx
		mov	ecx, [esp+20h+var_C]
		push	edx
		push	eax
		push	ecx
		call	DrawPointToBuffer1
		mov	eax, [esp+2Ch+var_8]
		add	esp, 0Ch

loc_10002355:				; CODE XREF: sub_10002030+306j
		test	ebp, ebp
		jl	short loc_1000236D
		mov	edx, [esp+20h+iWidth]
		dec	ebx
		dec	edx
		add	esi, 3989h
		mov	[esp+20h+iWidth], edx
		lea	ebp, [ebp+ebx*8+0]

loc_1000236D:				; CODE XREF: sub_10002030+327j
		mov	ecx, [esp+20h+var_C]
		inc	edi
		inc	ecx
		mov	edx, 1
		mov	[esp+20h+var_C], ecx
		mov	ecx, [esp+20h+var_4]
		add	ecx, 2
		dec	eax
		sub	edx, ecx
		add	esi, 10000h
		add	ebp, edx
		mov	[esp+20h+var_4], ecx
		test	eax, eax
		mov	[esp+20h+var_8], eax
		jge	short loc_10002330
		mov	edx, [esp+20h+x]
		lea	ecx, ds:0[ebx*4]
		mov	[esp+20h+_y], ecx
		mov	eax, edi
		lea	ecx, [edi+edx]
		mov	edx, [esp+20h+y]
		mov	[esp+20h+var_C], ecx
		lea	ecx, [ebx+edx]
		neg	eax
		mov	[esp+20h+iWidth], ecx
		mov	ecx, [esp+20h+arg_10]
		mov	[esp+20h+var_4], eax

loc_100023C7:				; CODE XREF: sub_10002030+3FEj
		cmp	esi, ecx
		jle	short loc_100023EC
		mov	edx, [esp+20h+wColor]
		mov	eax, [esp+20h+iWidth]
		sub	esi, ecx
		mov	ecx, [esp+20h+var_C]
		push	edx
		push	eax
		push	ecx
		call	DrawPointToBuffer1
		mov	ecx, [esp+2Ch+arg_10]
		mov	eax, [esp+2Ch+var_4]
		add	esp, 0Ch

loc_100023EC:				; CODE XREF: sub_10002030+399j
		test	ebp, ebp
		jl	short loc_1000240F
		mov	edx, [esp+20h+iWidth]
		inc	ebx
		inc	edx
		mov	[esp+20h+iWidth], edx
		mov	edx, [esp+20h+_y]
		add	edx, 4
		add	esi, 3989h
		mov	[esp+20h+_y], edx
		lea	ebp, [ebp+ebx*8+0]

loc_1000240F:				; CODE XREF: sub_10002030+3BEj
		mov	edx, [esp+20h+var_C]
		inc	edi
		inc	edx
		dec	eax
		mov	[esp+20h+var_C], edx
		mov	edx, [esp+20h+_y]
		add	esi, 10000h
		cmp	edx, eax
		mov	[esp+20h+var_4], eax
		lea	ebp, [ebp+edi*2-1]
		jle	short loc_100023C7
		lea	edx, ds:0[ebx*8]
		mov	[esp+20h+var_4], edx
		lea	edx, [edi+edi]
		neg	ebp
		mov	eax, ebp
		mov	[esp+20h+iWidth], edx
		mov	edx, [esp+20h+x]
		mov	ebp, ebx
		neg	ebp
		add	edi, edx
		mov	edx, [esp+20h+y]
		shl	ebp, 2
		mov	[esp+20h+var_8], eax
		add	ebx, edx
		jmp	short loc_10002463
; ---------------------------------------------------------------------------

loc_1000245F:				; CODE XREF: sub_10002030+486j
		mov	ecx, [esp+20h+arg_10]

loc_10002463:				; CODE XREF: sub_10002030+42Dj
		cmp	esi, ecx
		jle	short loc_1000247C
		mov	eax, [esp+20h+wColor]
		sub	esi, ecx
		push	eax
		push	ebx
		push	edi
		call	DrawPointToBuffer1
		mov	eax, [esp+2Ch+var_8]
		add	esp, 0Ch

loc_1000247C:				; CODE XREF: sub_10002030+435j
		test	eax, eax
		jl	short loc_10002494
		mov	ecx, [esp+20h+iWidth]
		inc	edi
		add	ecx, 2
		add	esi, 3989h
		mov	[esp+20h+iWidth], ecx
		sub	eax, ecx

loc_10002494:				; CODE XREF: sub_10002030+44Ej
		mov	ecx, [esp+20h+var_4]
		or	edx, 0FFFFFFFFh
		add	ecx, 8
		sub	ebp, 4
		sub	edx, ecx
		inc	ebx
		add	esi, 10000h
		add	eax, edx
		test	ebp, ebp
		mov	[esp+20h+var_4], ecx
		mov	[esp+20h+var_8], eax
		jge	short loc_1000245F
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 10h
		retn
sub_10002030	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

x_sub_100024C0	proc near		; DATA XREF: CADraw_Init+1EAo

pData		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, g_uBufferOrigin16
		mov	ecx, 280h
		cdq
		sub	eax, edx
		push	ebx
		sar	eax, 1
		cdq
		idiv	ecx
		push	esi
		push	edi
		lea	edx, unk_100AEEA8[edx*2]
		mov	[ebp+pData], edx
		push	esi
		push	edi
		push	ebx
		mov	eax, g_rcScreenRect.bottom
		inc	eax
		mov	dword_10018E90,	eax
		mov	eax, g_rcScreenRect.right
		mov	dword_10018E94,	eax
		lea	edi, g_aBufferPrimary16
		mov	eax, g_rcScreenRect.left
		sub	dword_10018E94,	eax
		sub	[ebp+arg_0], eax
		add	edi, eax
		add	edi, eax
		mov	eax, g_rcScreenRect.top
		sub	dword_10018E90,	eax
		sub	[ebp+arg_4], eax
		mul	g_dwWidthInBytes
		add	edi, eax
		mov	dword_10018E80,	0
		cmp	[ebp+arg_4], 0
		jge	short loc_10002557
		mov	eax, [ebp+arg_4]
		add	[ebp+arg_C], eax
		cmp	[ebp+arg_C], 0
		jle	loc_100027AC
		mov	[ebp+arg_4], 0
		or	dword_10018E80,	1

loc_10002557:				; CODE XREF: x_sub_100024C0+77j
		mov	edx, dword_10018E90
		cmp	[ebp+arg_4], edx
		jl	short loc_10002580
		mov	eax, [ebp+arg_4]
		add	[ebp+arg_C], eax
		dec	edx
		sub	[ebp+arg_C], edx
		cmp	[ebp+arg_C], 0
		jge	loc_100027AC
		mov	[ebp+arg_4], edx
		or	dword_10018E80,	1

loc_10002580:				; CODE XREF: x_sub_100024C0+A0j
		mov	eax, [ebp+arg_4]
		inc	eax
		add	eax, [ebp+arg_C]
		jge	short loc_10002594
		inc	eax
		sub	[ebp+arg_C], eax
		or	dword_10018E80,	2

loc_10002594:				; CODE XREF: x_sub_100024C0+C7j
		mov	eax, [ebp+arg_4]
		dec	eax
		add	eax, [ebp+arg_C]
		mov	edx, dword_10018E90
		cmp	eax, edx
		jl	short loc_100025B1
		sub	edx, eax
		add	[ebp+arg_C], edx
		or	dword_10018E80,	2

loc_100025B1:				; CODE XREF: x_sub_100024C0+E3j
		cmp	[ebp+arg_0], 1
		jge	short loc_100025D8
		mov	eax, [ebp+arg_0]
		add	[ebp+arg_8], eax
		cmp	[ebp+arg_8], 1
		jle	loc_100027AC
		mov	[ebp+arg_0], 1
		dec	[ebp+arg_8]
		or	dword_10018E80,	4

loc_100025D8:				; CODE XREF: x_sub_100024C0+F5j
		mov	edx, dword_10018E94
		add	edx, 2
		cmp	[ebp+arg_0], edx
		jl	short loc_10002605
		mov	eax, [ebp+arg_0]
		inc	eax
		add	[ebp+arg_8], eax
		sub	[ebp+arg_8], edx
		dec	edx
		cmp	[ebp+arg_8], 0
		jge	loc_100027AC
		mov	[ebp+arg_0], edx
		or	dword_10018E80,	4

loc_10002605:				; CODE XREF: x_sub_100024C0+124j
		mov	eax, [ebp+arg_0]
		add	eax, [ebp+arg_8]
		jge	short loc_10002617
		sub	[ebp+arg_8], eax
		or	dword_10018E80,	8

loc_10002617:				; CODE XREF: x_sub_100024C0+14Bj
		mov	eax, [ebp+arg_0]
		sub	eax, 2
		add	eax, [ebp+arg_8]
		mov	edx, dword_10018E94
		cmp	eax, edx
		jle	short loc_10002636
		sub	edx, eax
		add	[ebp+arg_8], edx
		or	dword_10018E80,	8

loc_10002636:				; CODE XREF: x_sub_100024C0+168j
		mov	esi, [ebp+arg_4]
		shl	esi, 1
		mov	dword_10018E84,	2
		cmp	[ebp+arg_8], 0
		jge	short loc_10002654
		neg	dword_10018E84
		neg	[ebp+arg_8]

loc_10002654:				; CODE XREF: x_sub_100024C0+189j
		mov	dword_10018E8C,	1
		mov	eax, g_dwWidthInBytes
		cmp	[ebp+arg_C], 0
		jge	short loc_10002676
		neg	eax
		neg	[ebp+arg_C]
		neg	esi
		neg	dword_10018E8C

loc_10002676:				; CODE XREF: x_sub_100024C0+1A7j
		mov	dword_10018E88,	eax
		mov	eax, [ebp+arg_4]
		mul	g_dwWidthInBytes
		add	eax, [ebp+arg_0]
		add	eax, [ebp+arg_0]
		add	edi, eax
		add	edi, g_uBufferOrigin16
		mov	eax, [ebp+arg_10]
		test	dword_10018E80,	1
		jnz	short loc_100026D9
		dec	[ebp+arg_C]
		push	edi
		cmp	edi, [ebp+pData]
		jb	short loc_100026B0
		sub	edi, 96000h

loc_100026B0:				; CODE XREF: x_sub_100024C0+1E8j
		mov	[edi], ax
		mov	ecx, [ebp+arg_8]
		dec	ecx
		or	ecx, ecx
		jle	short loc_100026C9

loc_100026BB:				; CODE XREF: x_sub_100024C0+204j
		add	edi, dword_10018E84
		mov	[edi], ax
		loop	loc_100026BB
		mov	[edi], ax

loc_100026C9:				; CODE XREF: x_sub_100024C0+1F9j
		pop	edi
		add	edi, dword_10018E88
		add	edx, dword_10018E8C
		add	esi, 2

loc_100026D9:				; CODE XREF: x_sub_100024C0+1DFj
		test	dword_10018E80,	8
		jnz	short loc_10002727
		push	edi
		push	esi
		push	edx
		mov	ecx, [ebp+arg_8]
		add	ecx, ecx
		sub	ecx, 2
		cmp	dword_10018E84,	0
		jge	short loc_100026FB
		neg	ecx

loc_100026FB:				; CODE XREF: x_sub_100024C0+237j
		add	edi, ecx
		mov	ecx, [ebp+arg_C]
		dec	ecx
		or	ecx, ecx
		jle	short loc_10002724

loc_10002705:				; CODE XREF: x_sub_100024C0+262j
		cmp	edi, [ebp+pData]
		jb	short loc_10002710
		sub	edi, 96000h

loc_10002710:				; CODE XREF: x_sub_100024C0+248j
		mov	[edi], ax
		add	edi, dword_10018E88
		add	esi, 2
		add	edx, dword_10018E8C
		loop	loc_10002705

loc_10002724:				; CODE XREF: x_sub_100024C0+243j
		pop	edx
		pop	esi
		pop	edi

loc_10002727:				; CODE XREF: x_sub_100024C0+223j
		mov	ecx, [ebp+arg_C]
		dec	ecx
		test	dword_10018E80,	4
		jz	short loc_10002753
		add	esi, ecx
		add	esi, ecx
		push	eax
		push	edx
		mov	eax, dword_10018E88
		imul	ecx
		add	edi, eax
		mov	eax, dword_10018E8C
		imul	ecx
		pop	edx
		add	edx, eax
		pop	eax
		jmp	short loc_10002776
; ---------------------------------------------------------------------------

loc_10002753:				; CODE XREF: x_sub_100024C0+275j
		or	ecx, ecx
		jle	short loc_10002776

loc_10002757:				; CODE XREF: x_sub_100024C0+2B4j
		cmp	edi, [ebp+pData]
		jb	short loc_10002762
		sub	edi, 96000h

loc_10002762:				; CODE XREF: x_sub_100024C0+29Aj
		mov	[edi], ax
		add	edi, dword_10018E88
		add	esi, 2
		add	edx, dword_10018E8C
		loop	loc_10002757

loc_10002776:				; CODE XREF: x_sub_100024C0+291j
					; x_sub_100024C0+295j
		cmp	[ebp+arg_C], 1
		jb	short loc_100027AC
		test	dword_10018E80,	2
		jnz	short loc_100027AC
		cmp	edi, [ebp+pData]
		jb	short loc_10002793
		sub	edi, 96000h

loc_10002793:				; CODE XREF: x_sub_100024C0+2CBj
		mov	[edi], ax
		mov	ecx, [ebp+arg_8]
		dec	ecx
		or	ecx, ecx
		jle	short loc_100027AC

loc_1000279E:				; CODE XREF: x_sub_100024C0+2E7j
		add	edi, dword_10018E84
		mov	[edi], ax
		loop	loc_1000279E
		mov	[edi], ax

loc_100027AC:				; CODE XREF: x_sub_100024C0+83j
					; x_sub_100024C0+B0j ...
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
x_sub_100024C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_100027C0	proc near		; DATA XREF: CADraw_Init+226o
		push	ebx
		push	esi
		push	edi
		push	esi
		push	edi
		push	ebx
		imul	eax, g_rcScreenRect.top, 280h
		add	eax, g_rcScreenRect.left
		lea	edi, g_aBufferThird[eax*2]
		add	edi, g_uBufferOrigin16
		mov	edx, g_rcScreenRect.bottom
		mov	ecx, g_rcScreenRect.top
		mov	ebx, g_rcScreenRect.right
		sub	edx, ecx
		sub	ebx, g_rcScreenRect.left
		inc	edx
		inc	ebx
		mov	esi, 280h
		sub	esi, ebx
		shl	esi, 1
		shr	ebx, 1
		mov	eax, ecx
		shl	eax, 10h
		or	eax, ecx
		shl	eax, 5
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_1000283E
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_10002844
		sub	edx, ecx
		push	ecx

loc_10002829:				; CODE XREF: x_sub_100027C0+7Bj
		mov	ecx, ebx

loc_1000282B:				; CODE XREF: x_sub_100027C0+71j
		mov	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_1000282B
		add	edi, esi
		add	eax, 200020h
		dec	edx
		jnz	short loc_10002829
		pop	edx

loc_1000283E:				; CODE XREF: x_sub_100027C0+5Aj
		sub	edi, 96000h

loc_10002844:				; CODE XREF: x_sub_100027C0+64j
					; x_sub_100027C0+96j
		mov	ecx, ebx

loc_10002846:				; CODE XREF: x_sub_100027C0+8Cj
		mov	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_10002846
		add	edi, esi
		add	eax, 200020h
		dec	edx
		jnz	short loc_10002844
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		retn
x_sub_100027C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; unsigned int __cdecl x_sub_10002860_RectAndFFFBFFFBu(int x, unsigned int y, unsigned int iWidth, int iHeight)
x_sub_10002860_RectAndFFFBFFFBu	proc near ; DATA XREF: CADraw_Init+21Co

x		= dword	ptr  8
y		= dword	ptr  0Ch
iWidth		= dword	ptr  10h
iHeight		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		push	esi
		push	edi
		push	ebx
		imul	eax, [ebp+y], 280h
		add	eax, [ebp+x]
		lea	edi, g_aBufferThird[eax*2]
		add	edi, g_uBufferOrigin16
		mov	ebx, 0FFFBh
		mov	eax, ebx
		shl	ebx, 10h
		or	eax, ebx
		mov	edx, [ebp+iHeight]
		mov	ebx, [ebp+iWidth]
		mov	esi, 280h
		sub	esi, ebx
		shl	esi, 1
		shr	ebx, 1
		mov	ecx, [ebp+y]
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_100028C5
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_100028CB
		sub	edx, ecx
		push	ecx

loc_100028B5:				; CODE XREF: x_sub_10002860_RectAndFFFBFFFBu+62j
		mov	ecx, ebx

loc_100028B7:				; CODE XREF: x_sub_10002860_RectAndFFFBFFFBu+5Dj
		and	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_100028B7
		add	edi, esi
		dec	edx
		jnz	short loc_100028B5
		pop	edx

loc_100028C5:				; CODE XREF: x_sub_10002860_RectAndFFFBFFFBu+46j
		sub	edi, 96000h

loc_100028CB:				; CODE XREF: x_sub_10002860_RectAndFFFBFFFBu+50j
					; x_sub_10002860_RectAndFFFBFFFBu+78j
		mov	ecx, ebx

loc_100028CD:				; CODE XREF: x_sub_10002860_RectAndFFFBFFFBu+73j
		and	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_100028CD
		add	edi, esi
		dec	edx
		jnz	short loc_100028CB
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
x_sub_10002860_RectAndFFFBFFFBu	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

;
;	if ( x <= 0 )
;	  result = sub_100028F0(-x, -_y, x + 640, _y + 480, -_y);
;	else
;	  result = sub_100028F0(0, -_y,	640 - x, _y + 480, -_y);
;
;     ...
;
;     if ( x <=	0 )
;	result = sub_100028F0(-x, 0, x + 640, 480 - _y,	-_y);
;     else
;	result = sub_100028F0(0, 0, 640	- x, 480 - _y, -_y);
;
;
; Attributes: bp-based frame

; int __cdecl x_sub_100028F0(int x, unsigned int y, unsigned int iWidth, int iHeight, int a5)
x_sub_100028F0	proc near		; CODE XREF: x_sub_10001D00+125p
					; x_sub_10001D00+147p ...

x		= dword	ptr  8
y		= dword	ptr  0Ch
iWidth		= dword	ptr  10h
iHeight		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		push	esi
		push	edi
		push	ebx
		imul	eax, [ebp+y], 280h
		add	eax, [ebp+x]
		lea	edi, g_aBufferThird[eax*2]
		add	edi, g_uBufferOrigin16
		mov	edx, [ebp+iHeight]
		mov	ebx, [ebp+iWidth]
		mov	esi, 280h
		sub	esi, ebx
		shl	esi, 1
		shr	ebx, 1
		mov	ecx, [ebp+arg_10]
		or	ecx, ecx
		jns	short loc_10002974
		neg	ecx
		shl	ecx, 5
		mov	eax, ecx
		shl	eax, 10h
		mov	ax, cx
		mov	ecx, [ebp+y]
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_1000295D
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_10002963
		sub	edx, ecx
		push	ecx

loc_1000294D:				; CODE XREF: x_sub_100028F0+6Aj
		mov	ecx, ebx

loc_1000294F:				; CODE XREF: x_sub_100028F0+65j
		sub	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_1000294F
		add	edi, esi
		dec	edx
		jnz	short loc_1000294D
		pop	edx

loc_1000295D:				; CODE XREF: x_sub_100028F0+4Ej
		sub	edi, 96000h

loc_10002963:				; CODE XREF: x_sub_100028F0+58j
					; x_sub_100028F0+80j
		mov	ecx, ebx

loc_10002965:				; CODE XREF: x_sub_100028F0+7Bj
		sub	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_10002965
		add	edi, esi
		dec	edx
		jnz	short loc_10002963
		jmp	short loc_100029BC
; ---------------------------------------------------------------------------

loc_10002974:				; CODE XREF: x_sub_100028F0+36j
		shl	ecx, 5
		mov	eax, ecx
		shl	eax, 10h
		mov	ax, cx
		mov	ecx, [ebp+y]
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_100029A7
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_100029AD
		sub	edx, ecx
		push	ecx

loc_10002997:				; CODE XREF: x_sub_100028F0+B4j
		mov	ecx, ebx

loc_10002999:				; CODE XREF: x_sub_100028F0+AFj
		add	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_10002999
		add	edi, esi
		dec	edx
		jnz	short loc_10002997
		pop	edx

loc_100029A7:				; CODE XREF: x_sub_100028F0+98j
		sub	edi, 96000h

loc_100029AD:				; CODE XREF: x_sub_100028F0+A2j
					; x_sub_100028F0+CAj
		mov	ecx, ebx

loc_100029AF:				; CODE XREF: x_sub_100028F0+C5j
		add	[edi], eax
		add	edi, 4
		dec	ecx
		jnz	short loc_100029AF
		add	edi, esi
		dec	edx
		jnz	short loc_100029AD

loc_100029BC:				; CODE XREF: x_sub_100028F0+82j
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
x_sub_100028F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


LockSurface	proc near		; CODE XREF: CopyDataToDirectDrawSurface+10p
					; CopyFromPrimaryBufferToDirectDrawSurface+10p	...

ddSurfaceDescription= DDSURFACEDESC ptr	-6Ch

		sub	esp, 6Ch
		mov	eax, g_lpDDrawSurface.lpVtbl
		push	0
		lea	edx, [esp+70h+ddSurfaceDescription]
		push	1
		mov	[esp+74h+ddSurfaceDescription.dwSize], 6Ch
		mov	ecx, [eax]
		push	edx
		push	0
		push	eax
		call	dword ptr [ecx+64h]
		test	eax, eax
		jge	short loc_10002A2C

loc_100029F5:				; CODE XREF: LockSurface+5Aj
		cmp	eax, 887601AEh
		jz	short loc_10002A12
		cmp	eax, 887601C2h
		jnz	short loc_10002A48
		mov	eax, g_lpDDrawSurface.lpVtbl
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+6Ch]
		test	eax, eax
		jl	short loc_10002A48

loc_10002A12:				; CODE XREF: LockSurface+2Aj
		mov	eax, g_lpDDrawSurface.lpVtbl
		push	0
		lea	ecx, [esp+70h+ddSurfaceDescription]
		push	1
		mov	edx, [eax]
		push	ecx
		push	0
		push	eax
		call	dword ptr [edx+64h]
		test	eax, eax
		jl	short loc_100029F5

loc_10002A2C:				; CODE XREF: LockSurface+23j
		mov	eax, dword ptr [esp+6Ch+ddSurfaceDescription.anonymous_0]
		mov	edx, [esp+6Ch+ddSurfaceDescription.lpSurface]
		mov	g_lPitch, eax
		mov	g_pSurfaceData,	edx
		mov	eax, 1
		add	esp, 6Ch
		retn
; ---------------------------------------------------------------------------

loc_10002A48:				; CODE XREF: LockSurface+31j
					; LockSurface+40j
		xor	eax, eax
		add	esp, 6Ch
		retn
LockSurface	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


UnlockSurface	proc near		; CODE XREF: CopyDataToDirectDrawSurface+8Dp
					; CopyFromPrimaryBufferToDirectDrawSurface+E7p	...
		mov	eax, g_lpDDrawSurface.lpVtbl
		push	0
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+80h]
		mov	g_pSurfaceData,	0
		retn
UnlockSurface	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; BOOL __cdecl CopyDataToDirectDrawSurface(int iSrcX, int iSrcY, unsigned int iDestWidth, int iDestHeight, int iDestX, int iDestY, int a7, char	*pSrcArray)
CopyDataToDirectDrawSurface proc near	; DATA XREF: CADraw_Init+230o

bNeedUnlockSurface= dword ptr -4
iSrcX		= dword	ptr  8
iSrcY		= dword	ptr  0Ch
iDestWidth	= dword	ptr  10h
iDestHeight	= dword	ptr  14h
iDestX		= dword	ptr  18h
iDestY		= dword	ptr  1Ch
a7		= dword	ptr  20h
pSrcArray	= dword	ptr  24h

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, g_pSurfaceData
		push	ebx
		push	esi
		push	edi
		test	eax, eax
		jnz	short loc_10002A92
		call	LockSurface
		test	eax, eax
		jz	short loc_10002B02
		mov	[ebp+bNeedUnlockSurface], 1
		jmp	short loc_10002A99
; ---------------------------------------------------------------------------

loc_10002A92:				; CODE XREF: CopyDataToDirectDrawSurface+Ej
		mov	[ebp+bNeedUnlockSurface], 0

loc_10002A99:				; CODE XREF: CopyDataToDirectDrawSurface+20j
		push	esi
		push	edi
		push	ebx
		mov	eax, g_lPitch
		mul	[ebp+iDestY]
		add	eax, [ebp+iDestX]
		add	eax, [ebp+iDestX]
		add	eax, g_pSurfaceData
		mov	edi, eax
		mov	eax, [ebp+a7]
		mul	[ebp+iSrcY]
		add	eax, [ebp+iSrcX]
		mov	esi, [ebp+pSrcArray]
		lea	esi, [esi+eax*2]
		mov	edx, [ebp+iDestHeight]
		mov	ebx, [ebp+iDestWidth]
		shr	ebx, 2
		neg	ebx
		mov	eax, [ebp+a7]
		add	eax, eax
		lea	eax, [eax+ebx*8]
		xor	ecx, ecx

loc_10002AD6:				; CODE XREF: CopyDataToDirectDrawSurface+81j
		sub	ecx, ebx

loc_10002AD8:				; CODE XREF: CopyDataToDirectDrawSurface+73j
		fld	qword ptr [esi]
		fstp	qword ptr [edi]
		add	esi, 8
		add	edi, 8
		dec	ecx
		jnz	short loc_10002AD8
		add	edi, g_lPitch
		add	esi, eax
		lea	edi, [edi+ebx*8]
		dec	edx
		jnz	short loc_10002AD6
		pop	ebx
		pop	edi
		pop	esi
		mov	eax, [ebp+bNeedUnlockSurface]
		test	eax, eax
		jz	short loc_10002B02
		call	UnlockSurface

loc_10002B02:				; CODE XREF: CopyDataToDirectDrawSurface+17j
					; CopyDataToDirectDrawSurface+8Bj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
CopyDataToDirectDrawSurface endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl CopyLines(int iSrcX, int iSrcY, int iSrcWidth, char *pSrc, int iDestX, int iDestY, int iDestWidth, char *pDest, int a9, int iHeight)
CopyLines	proc near		; DATA XREF: CADraw_Init+23Ao

iSrcX		= dword	ptr  8
iSrcY		= dword	ptr  0Ch
iSrcWidth	= dword	ptr  10h
pSrc		= dword	ptr  14h
iDestX		= dword	ptr  18h
iDestY		= dword	ptr  1Ch
iDestWidth	= dword	ptr  20h
pDest		= dword	ptr  24h
arg_20		= dword	ptr  28h
iHeight		= dword	ptr  2Ch

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		push	esi
		push	edi
		push	ebx
		mov	eax, [ebp+iSrcWidth]
		mul	[ebp+iSrcY]
		add	eax, [ebp+iSrcX]
		mov	esi, [ebp+pSrc]
		lea	esi, [esi+eax*2]
		mov	eax, [ebp+iDestWidth]
		mul	[ebp+iDestY]
		add	eax, [ebp+iDestX]
		mov	edi, [ebp+pDest]
		lea	edi, [edi+eax*2]
		mov	eax, [ebp+iDestWidth]
		shl	eax, 1
		mov	[ebp+iDestWidth], eax
		mov	edx, [ebp+iHeight]
		mov	ebx, [ebp+arg_20]
		neg	ebx
		mov	eax, [ebp+iSrcWidth]
		add	eax, eax
		lea	eax, [eax+ebx*2]
		xor	ecx, ecx

loc_10002B51:				; CODE XREF: CopyLines+4Fj
		sub	ecx, ebx
		rep movsw
		add	edi, [ebp+iDestWidth]
		add	esi, eax
		lea	edi, [edi+ebx*2]
		dec	edx
		jnz	short loc_10002B51
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
CopyLines	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

CopyFromPrimaryBufferToDirectDrawSurface proc near ; DATA XREF:	CADraw_Init+208o

bIsSurfaceMustLocked= dword ptr	-4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, g_pSurfaceData
		push	ebx
		push	esi
		push	edi
		test	eax, eax
		jnz	short loc_10002B96
		call	LockSurface
		test	eax, eax
		jz	loc_10002C5C
		mov	[ebp+bIsSurfaceMustLocked], 1
		jmp	short loc_10002B9D
; ---------------------------------------------------------------------------

loc_10002B96:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+Ej
		mov	[ebp+bIsSurfaceMustLocked], 0

loc_10002B9D:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+24j
		push	esi
		push	edi
		push	ebx
		imul	eax, [ebp+arg_4], 280h
		add	eax, [ebp+arg_0]
		lea	esi, g_aBufferPrimary16[eax*2]
		add	esi, g_uBufferOrigin16
		mov	eax, g_lPitch
		mul	[ebp+arg_4]
		add	eax, [ebp+arg_0]
		add	eax, [ebp+arg_0]
		mov	edi, eax
		add	edi, g_pSurfaceData
		mov	eax, [ebp+arg_8]
		mov	edx, [ebp+arg_C]
		mov	ebx, eax
		mov	ecx, [ebp+arg_4]
		neg	ebx
		shr	eax, 3
		shl	ebx, 1
		cmp	ecx, g_dwSurfaceHeight
		jnb	short loc_10002C1E
		add	ecx, edx
		sub	ecx, g_dwSurfaceHeight
		jbe	short loc_10002C24
		push	ecx
		sub	edx, ecx

loc_10002BF4:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+ABj
		mov	ecx, eax

loc_10002BF6:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+99j
		fld	qword ptr [esi]
		fld	qword ptr [esi+8]
		fxch	st(1)
		fstp	qword ptr [edi]
		fstp	qword ptr [edi+8]
		add	esi, 10h
		add	edi, 10h
		dec	ecx
		jnz	short loc_10002BF6
		lea	esi, [esi+ebx+500h]
		add	edi, g_lPitch
		add	edi, ebx
		dec	edx
		jnz	short loc_10002BF4
		pop	edx

loc_10002C1E:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+75j
		sub	esi, 96000h

loc_10002C24:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+7Fj
					; CopyFromPrimaryBufferToDirectDrawSurface+DBj
		mov	ecx, eax

loc_10002C26:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+C9j
		fld	qword ptr [esi]
		fld	qword ptr [esi+8]
		fxch	st(1)
		fstp	qword ptr [edi]
		fstp	qword ptr [edi+8]
		add	esi, 10h
		add	edi, 10h
		dec	ecx
		jnz	short loc_10002C26
		lea	esi, [esi+ebx+500h]
		add	edi, g_lPitch
		add	edi, ebx
		dec	edx
		jnz	short loc_10002C24
		pop	ebx
		pop	edi
		pop	esi
		mov	eax, [ebp+bIsSurfaceMustLocked]
		test	eax, eax
		jz	short loc_10002C5C
		call	UnlockSurface

loc_10002C5C:				; CODE XREF: CopyFromPrimaryBufferToDirectDrawSurface+17j
					; CopyFromPrimaryBufferToDirectDrawSurface+E5j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
CopyFromPrimaryBufferToDirectDrawSurface endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; struct X
; {
;    //	-8
;    //	-4
;    BOOL bNeedUnlockSurface;
;    //	0
;    //	4
;    //	8
;    INT x;
;    //	12
;    INT y;
;    //	16
;    INT iWidth;
;    //	20
;    INT iHeight;
;    //	24
; }
;
; Copy data from primary buffer	to Direct Draw Surface.

sub_10002C70	proc near		; DATA XREF: CADraw_Init+1FEo

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		mov	eax, g_pSurfaceData
		push	ebx
		push	esi
		push	edi
		test	eax, eax
		jnz	short loc_10002C98
		call	LockSurface
		test	eax, eax
		jz	loc_1000307D
		mov	[ebp+var_4], 1
		jmp	short loc_10002C9F
; ---------------------------------------------------------------------------

loc_10002C98:				; CODE XREF: sub_10002C70+10j
		mov	[ebp+var_4], 0

loc_10002C9F:				; CODE XREF: sub_10002C70+26j
		mov	ebx, [ebp+arg_0]
		mov	esi, [ebp+arg_4]
		mov	edi, [ebp+arg_8]
		mov	edx, [ebp+arg_C]
		mov	eax, 1
		mov	ecx, 1
		sub	eax, ebx
		sub	ecx, esi
		add	edi, eax
		add	edx, ecx
		mov	[ebp+arg_8], edi
		mov	[ebp+arg_C], edx
		mov	dword_10018EA4,	0
		mov	eax, dword_1000E470
		push	esi
		mov	dword_1000E410,	eax
		push	edi
		push	ebx
		imul	eax, g_lPitch, 0F8h
		add	eax, 20h
		mov	dword_1000E40C,	eax
		mov	eax, [ebp+arg_4]
		shr	eax, 3
		imul	eax, 50h
		mov	edx, [ebp+arg_0]
		shr	edx, 4
		lea	eax, unk_1000E70C[eax+edx]
		mov	[ebp+var_8], eax
		imul	eax, [ebp+arg_4], 280h
		add	eax, [ebp+arg_0]
		lea	esi, g_aBufferPrimary16[eax*2]
		add	esi, g_uBufferOrigin16
		mov	eax, g_lPitch
		mul	[ebp+arg_4]
		add	eax, [ebp+arg_0]
		add	eax, [ebp+arg_0]
		mov	edi, eax
		add	edi, g_pSurfaceData
		shr	[ebp+arg_8], 4
		mov	dword_1000E408,	0FFFFD820h
		mov	eax, [ebp+arg_4]
		mov	ecx, g_dwSurfaceHeight
		cmp	eax, ecx
		jnb	short loc_10002DA4
		mov	edx, eax
		add	eax, [ebp+arg_C]
		cmp	eax, ecx
		jbe	short loc_10002DAA
		sub	eax, ecx
		sub	ecx, edx
		shr	eax, 3
		mov	edx, ecx
		mov	dword_10018EA0,	eax
		shr	edx, 3
		and	ecx, 7
		mov	dword_101DBDF8,	edx
		mov	ch, 8
		sub	ch, cl
		shl	ecx, 8
		mov	dword_101DBDF4,	ecx
		or	edx, edx
		jnz	short loc_10002DC9
		add	dword_1000E408,	96000h
		mov	dword_1000E404,	ecx
		mov	dword_101DBDF8,	1
		mov	dword_101DBDF4,	0
		jmp	short loc_10002DD3
; ---------------------------------------------------------------------------

loc_10002DA4:				; CODE XREF: sub_10002C70+D8j
		sub	esi, 96000h

loc_10002DAA:				; CODE XREF: sub_10002C70+E1j
		mov	eax, [ebp+arg_C]
		shr	eax, 3
		mov	dword_101DBDF8,	eax
		mov	dword_101DBDF4,	0
		mov	dword_10018EA0,	0

loc_10002DC9:				; CODE XREF: sub_10002C70+10Cj
		mov	dword_1000E404,	800h

loc_10002DD3:				; CODE XREF: sub_10002C70+132j
					; sub_10002C70+391j ...
		push	esi
		push	edi
		mov	eax, [ebp+var_8]
		add	[ebp+var_8], 50h
		mov	dword_1000E400,	eax
		mov	eax, [ebp+arg_8]
		mov	dword_101DBDFC,	eax
		push	ebp

loc_10002DEA:				; CODE XREF: sub_10002C70+373j
		mov	ecx, dword_1000E400
		mov	edx, [ecx-2]
		mov	dx, [ecx+50h]
		or	edx, edx
		jz	short loc_10002E4E
		cmp	edx, 80808080h
		jnz	loc_10002ED8
		mov	ecx, dword_1000E404
		inc	dword_1000E400
		mov	ebp, g_lPitch

loc_10002E19:				; CODE XREF: sub_10002C70+1CBj
					; sub_10002C70+1DCj
		fld	qword ptr [esi]
		fld	qword ptr [esi+8]
		fld	qword ptr [esi+10h]
		fld	qword ptr [esi+18h]
		fxch	st(1)
		fstp	qword ptr [edi+10h]
		fstp	qword ptr [edi+18h]
		fstp	qword ptr [edi+8]
		fstp	qword ptr [edi]
		add	esi, 500h
		add	edi, ebp
		dec	ch
		jnz	short loc_10002E19
		shr	ecx, 8
		jz	loc_10002FD1
		sub	esi, 96000h
		jmp	short loc_10002E19
; ---------------------------------------------------------------------------

loc_10002E4E:				; CODE XREF: sub_10002C70+189j
		mov	ecx, dword_1000E404
		inc	dword_1000E400
		mov	ebx, dword_1000E468+2
		mov	bx, word_1000E46C
		mov	ebp, g_lPitch

loc_10002E6D:				; CODE XREF: sub_10002C70+255j
					; sub_10002C70+266j
		mov	eax, [esi]
		mov	edx, [esi+4]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[edi], eax
		mov	[edi+4], edx
		mov	eax, [esi+8]
		mov	edx, [esi+0Ch]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[edi+8], eax
		mov	[edi+0Ch], edx
		mov	eax, [esi+10h]
		mov	edx, [esi+14h]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[edi+10h], eax
		mov	[edi+14h], edx
		mov	eax, [esi+18h]
		mov	edx, [esi+1Ch]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[edi+18h], eax
		mov	[edi+1Ch], edx
		add	esi, 500h
		add	edi, ebp
		dec	ch
		jnz	short loc_10002E6D
		shr	ecx, 8
		jz	loc_10002FD1
		sub	esi, 96000h
		jmp	short loc_10002E6D
; ---------------------------------------------------------------------------

loc_10002ED8:				; CODE XREF: sub_10002C70+191j
		mov	eax, edx
		shr	edx, 10h
		sub	ah, dh
		sbb	ebx, ebx
		sub	ah, al
		sbb	ebx, 0
		add	ah, dl
		adc	ebx, 0
		sub	dh, dl
		mov	bl, ah
		sbb	ecx, ecx
		sar	ebx, 2
		mov	cl, dh
		mov	dword_101DBDF0,	ebx
		xor	ebx, ebx
		shl	ecx, 1
		sub	al, dl
		mov	dword_10018E98,	ecx
		mov	bl, dl
		sbb	edx, edx
		mov	dl, al
		shl	edx, 2
		mov	dword_10018E9C,	edx
		add	ebx, 7Fh
		shl	ebx, 5
		inc	dword_1000E400
		mov	ecx, dword_1000E404
		mov	ebp, dword_1000E410

loc_10002F2F:				; CODE XREF: sub_10002C70+35Cj
		mov	dword_10018EA4,	0

loc_10002F39:				; CODE XREF: sub_10002C70+34Bj
		mov	cl, 10h
		push	ebx

loc_10002F3C:				; CODE XREF: sub_10002C70+313j
					; sub_10002C70+326j
		cmp	bh, 20h
		jz	short loc_10002F87
		mov	eax, [esi]
		inc	edi
		mov	edx, eax
		inc	esi
		shl	edx, 10h
		and	eax, 0FFFFh
		or	edx, eax
		xor	eax, eax
		and	edx, ebp
		mov	al, bh
		mul	edx
		add	eax, dword_10018EA4
		add	ebx, dword_10018E98
		mov	edx, eax
		inc	edi
		shr	eax, 5
		and	edx, ebp
		and	eax, ebp
		mov	dword_10018EA4,	edx
		inc	esi
		mov	edx, eax
		shr	edx, 10h
		or	eax, edx
		dec	cl
		mov	[edi-2], ax
		jnz	short loc_10002F3C
		jmp	short loc_10002F98
; ---------------------------------------------------------------------------

loc_10002F87:				; CODE XREF: sub_10002C70+2CFj
		mov	[edi], dx
		inc	edi
		inc	esi
		inc	edi
		inc	esi
		add	ebx, dword_10018E98
		dec	cl
		jnz	short loc_10002F3C

loc_10002F98:				; CODE XREF: sub_10002C70+315j
		pop	ebx
		mov	eax, dword_101DBDF0
		add	ebx, dword_10018E9C
		add	esi, 4E0h
		add	edi, g_lPitch
		add	dword_10018E98,	eax
		sub	edi, 20h
		dec	ch
		jnz	loc_10002F39
		shr	ecx, 8
		jz	short loc_10002FD1
		sub	esi, 96000h
		jmp	loc_10002F2F
; ---------------------------------------------------------------------------

loc_10002FD1:				; CODE XREF: sub_10002C70+1D0j
					; sub_10002C70+25Aj ...
		add	esi, dword_1000E408
		add	edi, dword_1000E40C
		dec	dword_101DBDFC
		jnz	loc_10002DEA
		pop	ebp
		pop	edi
		pop	esi
		imul	eax, g_lPitch, 8
		add	esi, 2800h
		add	edi, eax
		dec	dword_101DBDF8
		jnz	loc_10002DD3
		mov	eax, dword_101DBDF4
		or	ah, ah
		jz	short loc_10003038
		mov	dword_1000E404,	eax
		mov	dword_1000E408,	93820h
		mov	dword_101DBDF8,	1
		mov	dword_101DBDF4,	0
		jmp	loc_10002DD3
; ---------------------------------------------------------------------------

loc_10003038:				; CODE XREF: sub_10002C70+39Ej
		mov	dword_1000E408,	0FFFFD820h
		mov	eax, dword_10018EA0
		mov	dword_10018EA0,	0
		mov	dword_1000E404,	800h
		sub	esi, 96000h
		or	eax, eax
		mov	dword_101DBDF8,	eax
		jnz	loc_10002DD3
		pop	ebx
		pop	edi
		pop	esi
		mov	eax, [ebp+var_4]
		test	eax, eax
		jz	short loc_1000307D
		call	UnlockSurface

loc_1000307D:				; CODE XREF: sub_10002C70+19j
					; sub_10002C70+406j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_10002C70	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_10003090	proc near		; DATA XREF: CADraw_Init+23o

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	edx, [ebp+arg_4]
		push	ebx
		push	esi
		mov	esi, [ebp+arg_8]
		push	edi
		mov	edi, [ebp+arg_0]
		mov	eax, 1
		mov	ecx, 1
		sub	eax, edi
		sub	ecx, edx
		add	esi, eax
		mov	eax, [ebp+arg_C]
		add	eax, ecx
		mov	[ebp+arg_8], esi
		mov	[ebp+arg_C], eax
		mov	dword_10018EA4,	0
		mov	eax, dword_1000E470
		push	esi
		mov	dword_1000E410,	eax
		push	edi
		push	ebx
		mov	eax, [ebp+arg_4]
		shr	eax, 3
		imul	eax, 50h
		mov	edx, [ebp+arg_0]
		shr	edx, 4
		lea	eax, unk_1000E70C[eax+edx]
		mov	[ebp+var_4], eax
		imul	eax, [ebp+arg_4], 280h
		add	eax, [ebp+arg_0]
		lea	esi, g_aBufferPrimary16[eax*2]
		add	esi, g_uBufferOrigin16
		shr	[ebp+arg_8], 4
		mov	dword_1000E408,	0FFFFD820h
		mov	eax, [ebp+arg_4]
		mov	ecx, g_dwSurfaceHeight
		cmp	eax, ecx
		jnb	short loc_10003177
		mov	edx, eax
		add	eax, [ebp+arg_C]
		cmp	eax, ecx
		jbe	short loc_1000317D
		sub	eax, ecx
		sub	ecx, edx
		shr	eax, 3
		mov	edx, ecx
		mov	dword_10018EA0,	eax
		shr	edx, 3
		and	ecx, 7
		mov	dword_101DBDF8,	edx
		mov	ch, 8
		sub	ch, cl
		shl	ecx, 8
		mov	dword_101DBDF4,	ecx
		or	edx, edx
		jnz	short loc_1000319C
		add	dword_1000E408,	96000h
		mov	dword_1000E404,	ecx
		mov	dword_101DBDF8,	1
		mov	dword_101DBDF4,	0
		jmp	short loc_100031A6
; ---------------------------------------------------------------------------

loc_10003177:				; CODE XREF: sub_10003090+8Bj
		sub	esi, 96000h

loc_1000317D:				; CODE XREF: sub_10003090+94j
		mov	eax, [ebp+arg_C]
		shr	eax, 3
		mov	dword_101DBDF8,	eax
		mov	dword_101DBDF4,	0
		mov	dword_10018EA0,	0

loc_1000319C:				; CODE XREF: sub_10003090+BFj
		mov	dword_1000E404,	800h

loc_100031A6:				; CODE XREF: sub_10003090+E5j
					; sub_10003090+2EEj ...
		push	esi
		push	edi
		mov	eax, [ebp+var_4]
		add	[ebp+var_4], 50h
		mov	dword_1000E400,	eax
		mov	eax, [ebp+arg_8]
		mov	dword_101DBDFC,	eax
		push	ebp

loc_100031BD:				; CODE XREF: sub_10003090+2D2j
		mov	ecx, dword_1000E400
		mov	edx, [ecx-2]
		mov	dx, [ecx+50h]
		or	edx, edx
		jz	short loc_100031E8
		cmp	edx, 80808080h
		jnz	loc_10003270
		inc	dword_1000E400
		add	esi, 20h
		jmp	loc_1000335C
; ---------------------------------------------------------------------------

loc_100031E8:				; CODE XREF: sub_10003090+13Cj
		mov	ecx, dword_1000E404
		inc	dword_1000E400
		mov	ebx, dword_1000E468+2
		mov	bx, word_1000E46C
		and	ebx, 7FFF7FFFh

loc_10003207:				; CODE XREF: sub_10003090+1CDj
					; sub_10003090+1DEj
		mov	eax, [esi]
		mov	edx, [esi+4]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[esi], eax
		mov	[esi+4], edx
		mov	eax, [esi+8]
		mov	edx, [esi+0Ch]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[esi+8], eax
		mov	[esi+0Ch], edx
		mov	eax, [esi+10h]
		mov	edx, [esi+14h]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[esi+10h], eax
		mov	[esi+14h], edx
		mov	eax, [esi+18h]
		mov	edx, [esi+1Ch]
		shr	eax, 1
		shr	edx, 1
		and	eax, ebx
		and	edx, ebx
		mov	[esi+18h], eax
		mov	[esi+1Ch], edx
		add	esi, 500h
		dec	ch
		jnz	short loc_10003207
		shr	ecx, 8
		jz	loc_10003356
		sub	esi, 96000h
		jmp	short loc_10003207
; ---------------------------------------------------------------------------

loc_10003270:				; CODE XREF: sub_10003090+144j
		mov	eax, edx
		shr	edx, 10h
		sub	ah, dh
		sbb	ebx, ebx
		sub	ah, al
		sbb	ebx, 0
		add	ah, dl
		adc	ebx, 0
		sub	dh, dl
		mov	bl, ah
		sbb	ecx, ecx
		sar	ebx, 2
		mov	cl, dh
		mov	dword_101DBDF0,	ebx
		xor	ebx, ebx
		shl	ecx, 1
		sub	al, dl
		mov	dword_10018E98,	ecx
		mov	bl, dl
		sbb	edx, edx
		mov	dl, al
		shl	edx, 2
		mov	dword_10018E9C,	edx
		add	ebx, 7Fh
		shl	ebx, 5
		inc	dword_1000E400
		mov	ecx, dword_1000E404
		mov	ebp, dword_1000E410

loc_100032C7:				; CODE XREF: sub_10003090+2C1j
		mov	dword_10018EA4,	0

loc_100032D1:				; CODE XREF: sub_10003090+2B4j
		mov	cl, 10h
		push	ebx

loc_100032D4:				; CODE XREF: sub_10003090+289j
					; sub_10003090+298j
		cmp	bh, 20h
		jz	short loc_1000331D
		mov	eax, [esi]
		mov	edx, eax
		shl	edx, 10h
		and	eax, 0FFFFh
		or	edx, eax
		xor	eax, eax
		and	edx, ebp
		mov	al, bh
		mul	edx
		add	eax, dword_10018EA4
		add	ebx, dword_10018E98
		mov	edx, eax
		shr	eax, 5
		and	edx, ebp
		and	eax, ebp
		mov	dword_10018EA4,	edx
		mov	edx, eax
		shr	edx, 10h
		or	eax, edx
		mov	[esi], ax
		add	esi, 2
		dec	cl
		jnz	short loc_100032D4
		jmp	short loc_1000332A
; ---------------------------------------------------------------------------

loc_1000331D:				; CODE XREF: sub_10003090+247j
		add	esi, 2
		add	ebx, dword_10018E98
		dec	cl
		jnz	short loc_100032D4

loc_1000332A:				; CODE XREF: sub_10003090+28Bj
		pop	ebx
		mov	eax, dword_101DBDF0
		add	ebx, dword_10018E9C
		add	esi, 4E0h
		add	dword_10018E98,	eax
		dec	ch
		jnz	short loc_100032D1
		shr	ecx, 8
		jz	short loc_10003356
		sub	esi, 96000h
		jmp	loc_100032C7
; ---------------------------------------------------------------------------

loc_10003356:				; CODE XREF: sub_10003090+1D2j
					; sub_10003090+2B9j
		add	esi, dword_1000E408

loc_1000335C:				; CODE XREF: sub_10003090+153j
		dec	dword_101DBDFC
		jnz	loc_100031BD
		pop	ebp
		pop	edi
		pop	esi
		imul	eax, g_lPitch, 8
		add	esi, 2800h
		dec	dword_101DBDF8
		jnz	loc_100031A6
		mov	eax, dword_101DBDF4
		or	ah, ah
		jz	short loc_100033B5
		mov	dword_1000E404,	eax
		mov	dword_1000E408,	93820h
		mov	dword_101DBDF8,	1
		mov	dword_101DBDF4,	0
		jmp	loc_100031A6
; ---------------------------------------------------------------------------

loc_100033B5:				; CODE XREF: sub_10003090+2FBj
		mov	dword_1000E408,	0FFFFD820h
		mov	eax, dword_10018EA0
		mov	dword_10018EA0,	0
		mov	dword_1000E404,	800h
		sub	esi, 96000h
		or	eax, eax
		mov	dword_101DBDF8,	eax
		jnz	loc_100031A6
		pop	ebx
		pop	edi
		pop	esi
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_10003090	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_10003400	proc near		; DATA XREF: CADraw_Init+A0o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	edx, [esp+arg_0]
		xor	eax, eax
		mov	cl, [edx]
		test	cl, cl
		jz	short locret_1000342E
		push	ebx
		push	esi
		mov	esi, [esp+8+arg_4]

loc_10003412:				; CODE XREF: x_sub_10003400+2Aj
		and	ecx, 0FFh
		xor	ebx, ebx
		inc	edx
		mov	bl, [esi+ecx*2+404h]
		mov	cl, [edx]
		test	cl, cl
		lea	eax, [eax+ebx+2]
		jnz	short loc_10003412
		pop	esi
		pop	ebx

locret_1000342E:			; CODE XREF: x_sub_10003400+Aj
		retn
x_sub_10003400	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_10003430_call proc near		; DATA XREF: CADraw_Init+B4o

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		push	esi
		push	edi
		mov	edi, [esp+8+arg_8]
		xor	esi, esi
		mov	al, [edi]
		test	al, al
		jz	short loc_10003484
		push	ebx
		mov	ebx, [esp+0Ch+arg_C]
		push	ebp
		mov	ebp, [esp+10h+arg_10]

loc_10003448:				; CODE XREF: x_sub_10003430_call+50j
		mov	edx, [esp+10h+arg_0]
		mov	ecx, [esp+10h+arg_4]
		and	eax, 0FFh
		mov	eax, [ebx+eax*4]
		add	eax, ebx
		push	eax
		push	ebp
		lea	eax, [esi+edx]
		push	ecx
		push	eax
		call	sub_100051AF
		mov	al, [edi+1]
		xor	ecx, ecx
		mov	cl, [edi]
		add	esp, 10h
		xor	edx, edx
		inc	edi
		mov	dl, [ebx+ecx*2+404h]
		test	al, al
		lea	esi, [esi+edx+2]
		jnz	short loc_10003448
		pop	ebp
		pop	ebx

loc_10003484:				; CODE XREF: x_sub_10003430_call+Cj
		pop	edi
		pop	esi
		retn
x_sub_10003430_call endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


x_sub_10003490_call proc near		; DATA XREF: CADraw_Init+AAo

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch
arg_C		= dword	ptr  10h
arg_10		= dword	ptr  14h

		push	esi
		push	edi
		mov	edi, [esp+8+arg_8]
		xor	esi, esi
		mov	al, [edi]
		test	al, al
		jz	short loc_100034E5
		push	ebx
		mov	ebx, [esp+0Ch+arg_C]
		push	ebp
		mov	ebp, [esp+10h+arg_4]

loc_100034A8:				; CODE XREF: x_sub_10003490_call+51j
		mov	ecx, [esp+10h+arg_10]
		mov	edx, [esp+10h+arg_0]
		and	eax, 0FFh
		mov	eax, [ebx+eax*4]
		add	eax, ebx
		push	eax
		push	ecx
		push	ebp
		lea	eax, [esi+edx]
		push	ebp
		push	eax
		call	sub_10005F01
		mov	al, [edi+1]
		xor	ecx, ecx
		mov	cl, [edi]
		add	esp, 14h
		xor	edx, edx
		inc	edi
		mov	dl, [ebx+ecx*2+404h]
		test	al, al
		lea	esi, [esi+edx+2]
		jnz	short loc_100034A8
		pop	ebp
		pop	ebx

loc_100034E5:				; CODE XREF: x_sub_10003490_call+Cj
		pop	edi
		pop	esi
		retn
x_sub_10003490_call endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

h_________________sub_100034F0 proc near ; CODE	XREF: x_sub_10001EA0_call+32p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch
arg_18		= dword	ptr  20h
arg_1C		= dword	ptr  24h
arg_20		= dword	ptr  28h

		enter	0, 0
		push	ebx
		push	esi
		push	edi
		mov	eax, g_uBufferOrigin16
		xor	edx, edx
		mov	ecx, 500h
		div	ecx
		add	edx, [ebp+arg_20]
		add	edx, 96000h
		mov	dword_1000E038,	edx
		mov	eax, offset g_rcScreenRect
		mov	ax, word ptr g_rcScreenRect.left
		add	ax, 21h
		mov	rcRect_left, ax
		mov	ax, word ptr g_rcScreenRect.right
		add	ax, 21h
		mov	rcRect_right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	rcRect_top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	rcRect_bottom, ax
		mov	dword_1000E034,	0
		cld
		movzx	eax, rcRect_right
		inc	eax
		cmp	eax, [ebp+arg_10]
		jl	loc_10003865
		movzx	eax, rcRect_left
		sub	eax, 40h
		cmp	eax, [ebp+arg_10]
		jg	loc_10003865
		movzx	eax, rcRect_bottom
		inc	eax
		cmp	eax, [ebp+arg_14]
		jl	loc_10003865
		movzx	eax, rcRect_top
		sub	eax, 20h
		cmp	eax, [ebp+arg_14]
		jg	loc_10003865
		mov	esi, [ebp+arg_1C]
		mov	eax, [ebp+arg_14]
		mul	[ebp+arg_18]
		add	eax, [ebp+arg_10]
		add	eax, [ebp+arg_10]
		add	eax, [ebp+arg_20]
		add	eax, g_uBufferOrigin16
		mov	edi, eax
		sub	edi, 2
		add	[ebp+arg_10], 20h
		mov	edx, [ebp+arg_4]
		sub	edx, [ebp+arg_0]
		shl	edx, 2
		movzx	eax, rcRect_top
		sub	eax, 10h
		cmp	eax, [ebp+arg_14]
		jg	loc_1000386A
		mov	eax, [ebp+arg_0]
		sub	eax, [ebp+arg_8]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		mov	ebx, [ebp+arg_8]
		shl	ebx, 8
		add	ebx, dword_1000E03D
		add	ebx, edx
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_14]
		cmp	eax, 10h
		jl	short loc_10003612
		mov	eax, 10h

loc_10003612:				; CODE XREF: h_________________sub_100034F0+11Bj
		mov	dword_1000E041,	eax
		mov	ecx, 3
		movzx	eax, rcRect_top
		sub	eax, [ebp+arg_14]
		jle	short loc_10003649
		sub	dword_1000E041,	eax
		add	[ebp+arg_14], eax

loc_10003631:				; CODE XREF: h_________________sub_100034F0+157j
		add	esi, ecx
		add	ebx, dword_1000E03D
		add	ecx, 4
		sub	edi, 4
		sub	[ebp+arg_10], 2
		add	edi, [ebp+arg_18]
		dec	eax
		jnz	short loc_10003631

loc_10003649:				; CODE XREF: h_________________sub_100034F0+136j
		mov	eax, dword_1000E041
		cmp	eax, 0
		mov	dword_1000E045,	eax
		jle	loc_10003743
		add	eax, [ebp+arg_14]
		mov	[ebp+arg_14], eax
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_1000366C
		xor	eax, eax

loc_1000366C:				; CODE XREF: h_________________sub_100034F0+178j
		sub	dword_1000E041,	eax
		jbe	loc_10003715
		mov	dword_1000E045,	eax

loc_1000367D:				; CODE XREF: h_________________sub_100034F0+21Fj
					; h_________________sub_100034F0+247j
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+arg_10]
		jle	short loc_100036F4
		push	esi
		push	edi
		push	ebx
		push	ecx
		cmp	eax, ecx
		jge	short loc_10003694
		mov	ecx, eax

loc_10003694:				; CODE XREF: h_________________sub_100034F0+1A0j
		movzx	eax, rcRect_left
		sub	eax, [ebp+arg_10]
		jle	short loc_100036B1
		cmp	eax, ecx
		jge	short loc_100036F0
		add	esi, eax
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_100036AC:				; CODE XREF: h_________________sub_100034F0+1BFj
		add	ebx, edx
		dec	eax
		jnz	short loc_100036AC

loc_100036B1:				; CODE XREF: h_________________sub_100034F0+1AEj
		cmp	edi, dword_1000E038
		jb	short loc_100036BF
		sub	edi, 96000h

loc_100036BF:				; CODE XREF: h_________________sub_100034F0+1C7j
		cmp	edi, [ebp+arg_20]
		jnb	short loc_100036CA
		add	edi, 96000h

loc_100036CA:				; CODE XREF: h_________________sub_100034F0+1D2j
		xor	bh, byte_1000E049
		xor	byte_1000E049, 20h
		xor	eax, eax

loc_100036D9:				; CODE XREF: h_________________sub_100034F0+1FEj
		mov	ah, bh
		mov	al, [esi]
		inc	esi
		mov	ax, word_10010784[eax*2]
		stosw
		add	ebx, edx
		xor	bh, 20h
		dec	ecx
		jnz	short loc_100036D9

loc_100036F0:				; CODE XREF: h_________________sub_100034F0+1B2j
		pop	ecx
		pop	ebx
		pop	edi
		pop	esi

loc_100036F4:				; CODE XREF: h_________________sub_100034F0+198j
		add	esi, ecx
		add	ecx, 4
		sub	edi, 4
		add	ebx, dword_1000E03D
		add	edi, [ebp+arg_18]
		sub	[ebp+arg_10], 2
		dec	dword_1000E041
		jnz	loc_1000367D

loc_10003715:				; CODE XREF: h_________________sub_100034F0+182j
		sub	edi, 96000h
		mov	eax, dword_1000E045
		inc	dword_1000E034
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_1000367D
		add	edi, 96000h

loc_10003743:				; CODE XREF: h_________________sub_100034F0+166j
		xor	byte_1000E049, 20h
		sub	ecx, 6
		add	edi, 6
		add	[ebp+arg_10], 3
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_14]
		jl	loc_10003865
		cmp	eax, 10h
		jl	short loc_1000376F
		mov	eax, 10h

loc_1000376F:				; CODE XREF: h_________________sub_100034F0+278j
		mov	dword_1000E041,	eax
		mov	ebx, [ebp+arg_0]
		shl	ebx, 8
		mov	eax, [ebp+arg_C]
		sub	eax, [ebp+arg_0]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		add	ebx, eax

loc_1000378A:				; CODE XREF: h_________________sub_100034F0:loc_100038E9j
		mov	eax, dword_1000E041
		cmp	eax, 0
		jle	loc_10003865
		cmp	dword_1000E034,	2
		jnb	short loc_100037C4
		mov	dword_1000E045,	eax
		add	eax, [ebp+arg_14]
		sub	eax, g_dwSurfaceHeight
		jge	short loc_100037B3
		xor	eax, eax

loc_100037B3:				; CODE XREF: h_________________sub_100034F0+2BFj
		sub	dword_1000E041,	eax
		jbe	loc_10003843
		mov	dword_1000E045,	eax

loc_100037C4:				; CODE XREF: h_________________sub_100034F0+2AFj
					; h_________________sub_100034F0+351j ...
		push	esi
		push	edi
		push	ebx
		push	ecx
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+arg_10]
		jle	short loc_100037EB
		cmp	eax, ecx
		jge	short loc_100037DB
		mov	ecx, eax

loc_100037DB:				; CODE XREF: h_________________sub_100034F0+2E7j
		movzx	eax, rcRect_left
		sub	eax, [ebp+arg_10]
		jle	short loc_100037FC
		cmp	eax, ecx
		jl	short loc_100037EF

loc_100037EB:				; CODE XREF: h_________________sub_100034F0+2E3j
		pop	ecx
		pop	ebx
		jmp	short loc_10003824
; ---------------------------------------------------------------------------

loc_100037EF:				; CODE XREF: h_________________sub_100034F0+2F9j
		add	esi, eax
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_100037F7:				; CODE XREF: h_________________sub_100034F0+30Aj
		add	ebx, edx
		dec	eax
		jnz	short loc_100037F7

loc_100037FC:				; CODE XREF: h_________________sub_100034F0+2F5j
		xor	bh, byte_1000E049
		xor	byte_1000E049, 20h
		xor	eax, eax

loc_1000380B:				; CODE XREF: h_________________sub_100034F0+330j
		mov	ah, bh
		mov	al, [esi]
		inc	esi
		mov	ax, word_10010784[eax*2]
		stosw
		add	ebx, edx
		xor	bh, 20h
		dec	ecx
		jnz	short loc_1000380B
		pop	ecx
		pop	ebx

loc_10003824:				; CODE XREF: h_________________sub_100034F0+2FDj
		pop	edi
		pop	esi
		add	esi, ecx
		sub	ecx, 4
		add	edi, 4
		add	ebx, dword_1000E03D
		add	edi, [ebp+arg_18]
		add	[ebp+arg_10], 2
		dec	dword_1000E041
		jnz	short loc_100037C4

loc_10003843:				; CODE XREF: h_________________sub_100034F0+2C9j
		sub	edi, 96000h
		mov	eax, dword_1000E045
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_100037C4

loc_10003865:				; CODE XREF: h_________________sub_100034F0+77j
					; h_________________sub_100034F0+8Aj ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_1000386A:				; CODE XREF: h_________________sub_100034F0+EBj
		mov	ebx, [ebp+arg_0]
		shl	ebx, 8
		mov	eax, [ebp+arg_C]
		sub	eax, [ebp+arg_0]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		add	ebx, eax
		mov	eax, 10h
		push	edx
		mul	[ebp+arg_18]
		pop	edx
		add	eax, 0FFFFFFC6h
		add	edi, eax
		sub	[ebp+arg_10], 1Dh
		mov	ecx, 3Dh
		add	esi, 210h
		add	[ebp+arg_14], 10h
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_14]
		cmp	eax, 10h
		jl	short loc_100038B7
		mov	eax, 10h

loc_100038B7:				; CODE XREF: h_________________sub_100034F0+3C0j
		mov	dword_1000E041,	eax
		movzx	eax, rcRect_top
		sub	eax, [ebp+arg_14]
		jle	short loc_100038E9
		add	[ebp+arg_14], eax
		sub	dword_1000E041,	eax

loc_100038D1:				; CODE XREF: h_________________sub_100034F0+3F7j
		add	esi, ecx
		add	ebx, dword_1000E03D
		sub	ecx, 4
		add	edi, 4
		add	edi, [ebp+arg_18]
		add	[ebp+arg_10], 2
		dec	eax
		jnz	short loc_100038D1

loc_100038E9:				; CODE XREF: h_________________sub_100034F0+3D6j
		jmp	loc_1000378A
h_________________sub_100034F0 endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_100038EE(int a1, int a2, int a3, int a4, int x, int y, unsigned int a7, unsigned int a8)
sub_100038EE	proc near		; CODE XREF: x_sub_10001EE0_call+2Cp

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
x		= dword	ptr  18h
y		= dword	ptr  1Ch
arg_18		= dword	ptr  20h
arg_1C		= dword	ptr  24h

		enter	0, 0
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E030,	eax
		push	ebx
		push	esi
		push	edi
		mov	eax, g_uBufferOrigin16
		xor	edx, edx
		mov	ecx, 500h
		div	ecx
		add	edx, [ebp+arg_1C]
		add	edx, 96000h
		mov	dword_1000E038,	edx
		mov	eax, offset g_rcScreenRect
		mov	ax, word ptr g_rcScreenRect.left
		add	ax, 21h
		mov	rcRect_left, ax
		mov	ax, word ptr g_rcScreenRect.right
		add	ax, 21h
		mov	rcRect_right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	rcRect_top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	rcRect_bottom, ax
		mov	dword_1000E034,	0
		cld
		movzx	eax, rcRect_right
		inc	eax
		cmp	eax, [ebp+x]
		jl	loc_10003C97
		movzx	eax, rcRect_left
		sub	eax, 40h
		cmp	eax, [ebp+x]
		jg	loc_10003C97
		movzx	eax, rcRect_bottom
		inc	eax
		cmp	eax, [ebp+y]
		jl	loc_10003C97
		movzx	eax, rcRect_top
		sub	eax, 20h
		cmp	eax, [ebp+y]
		jg	loc_10003C97
		mov	eax, [ebp+y]
		mul	[ebp+arg_18]
		add	eax, [ebp+x]
		add	eax, [ebp+x]
		add	eax, [ebp+arg_1C]
		add	eax, g_uBufferOrigin16
		mov	edi, eax
		sub	edi, 2
		add	[ebp+x], 20h
		mov	esi, [ebp+arg_4]
		sub	esi, [ebp+arg_0]
		shl	esi, 2
		movzx	eax, rcRect_top
		sub	eax, 10h
		cmp	eax, [ebp+y]
		jg	loc_10003C9C
		mov	eax, [ebp+arg_0]
		sub	eax, [ebp+arg_8]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		mov	ebx, [ebp+arg_8]
		shl	ebx, 8
		add	ebx, dword_1000E03D
		add	ebx, esi
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+y]
		cmp	eax, 10h
		jl	short loc_10003A2A
		mov	eax, 10h

loc_10003A2A:				; CODE XREF: sub_100038EE+135j
		mov	dword_1000E041,	eax
		mov	ecx, 3
		movzx	eax, rcRect_top
		sub	eax, [ebp+y]
		jle	short loc_10003A5F
		sub	dword_1000E041,	eax
		add	[ebp+y], eax

loc_10003A49:				; CODE XREF: sub_100038EE+16Fj
		add	ebx, dword_1000E03D
		add	ecx, 4
		sub	edi, 4
		sub	[ebp+x], 2
		add	edi, [ebp+arg_18]
		dec	eax
		jnz	short loc_10003A49

loc_10003A5F:				; CODE XREF: sub_100038EE+150j
		mov	eax, dword_1000E041
		cmp	eax, 0
		mov	dword_1000E045,	eax
		jle	loc_10003B65
		add	eax, [ebp+y]
		mov	[ebp+y], eax
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10003A82
		xor	eax, eax

loc_10003A82:				; CODE XREF: sub_100038EE+190j
		sub	dword_1000E041,	eax
		jbe	loc_10003B37
		mov	dword_1000E045,	eax

loc_10003A93:				; CODE XREF: sub_100038EE+243j
					; sub_100038EE+26Bj
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+x]
		jle	short loc_10003B18
		push	edi
		push	ebx
		push	ecx
		cmp	eax, ecx
		jge	short loc_10003AA9
		mov	ecx, eax

loc_10003AA9:				; CODE XREF: sub_100038EE+1B7j
		movzx	eax, rcRect_left
		sub	eax, [ebp+x]
		jle	short loc_10003AC4
		cmp	eax, ecx
		jge	short loc_10003B15
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_10003ABF:				; CODE XREF: sub_100038EE+1D4j
		add	ebx, esi
		dec	eax
		jnz	short loc_10003ABF

loc_10003AC4:				; CODE XREF: sub_100038EE+1C5j
		cmp	edi, dword_1000E038
		jb	short loc_10003AD2
		sub	edi, 96000h

loc_10003AD2:				; CODE XREF: sub_100038EE+1DCj
		cmp	edi, [ebp+arg_1C]
		jnb	short loc_10003ADD
		add	edi, 96000h

loc_10003ADD:				; CODE XREF: sub_100038EE+1E7j
		xor	eax, eax

loc_10003ADF:				; CODE XREF: sub_100038EE+225j
		movzx	eax, bh
		cmp	al, 20h
		jnb	short loc_10003B0E
		or	al, al
		jz	short loc_10003B0B
		mov	dx, [edi]
		shl	edx, 10h
		mov	dx, [edi]
		and	edx, dword_1000E030
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E030
		mov	edx, eax
		shr	edx, 10h
		or	eax, edx

loc_10003B0B:				; CODE XREF: sub_100038EE+1FAj
		mov	[edi], ax

loc_10003B0E:				; CODE XREF: sub_100038EE+1F6j
		inc	edi
		inc	edi
		add	ebx, esi
		dec	ecx
		jnz	short loc_10003ADF

loc_10003B15:				; CODE XREF: sub_100038EE+1C9j
		pop	ecx
		pop	ebx
		pop	edi

loc_10003B18:				; CODE XREF: sub_100038EE+1B0j
		add	ecx, 4
		sub	edi, 4
		add	ebx, dword_1000E03D
		add	edi, [ebp+arg_18]
		sub	[ebp+x], 2
		dec	dword_1000E041
		jnz	loc_10003A93

loc_10003B37:				; CODE XREF: sub_100038EE+19Aj
		sub	edi, 96000h
		mov	eax, dword_1000E045
		inc	dword_1000E034
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_10003A93
		add	edi, 96000h

loc_10003B65:				; CODE XREF: sub_100038EE+17Ej
		xor	byte_1000E049, 20h
		sub	ecx, 6
		add	edi, 6
		add	[ebp+x], 3
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+y]
		jl	loc_10003C97
		cmp	eax, 10h
		jl	short loc_10003B91
		mov	eax, 10h

loc_10003B91:				; CODE XREF: sub_100038EE+29Cj
		mov	dword_1000E041,	eax
		mov	ebx, [ebp+arg_0]
		shl	ebx, 8
		mov	eax, [ebp+arg_C]
		sub	eax, [ebp+arg_0]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		add	ebx, eax

loc_10003BAC:				; CODE XREF: sub_100038EE:loc_10003D13j
		mov	eax, dword_1000E041
		cmp	eax, 0
		jle	loc_10003C97
		cmp	dword_1000E034,	2
		jnb	short loc_10003BE6
		mov	dword_1000E045,	eax
		add	eax, [ebp+y]
		sub	eax, g_dwSurfaceHeight
		jge	short loc_10003BD5
		xor	eax, eax

loc_10003BD5:				; CODE XREF: sub_100038EE+2E3j
		sub	dword_1000E041,	eax
		jbe	loc_10003C75
		mov	dword_1000E045,	eax

loc_10003BE6:				; CODE XREF: sub_100038EE+2D3j
					; sub_100038EE+381j ...
		push	edi
		push	ebx
		push	ecx
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+x]
		jle	short loc_10003C0C
		cmp	eax, ecx
		jge	short loc_10003BFC
		mov	ecx, eax

loc_10003BFC:				; CODE XREF: sub_100038EE+30Aj
		movzx	eax, rcRect_left
		sub	eax, [ebp+x]
		jle	short loc_10003C1B
		cmp	eax, ecx
		jl	short loc_10003C10

loc_10003C0C:				; CODE XREF: sub_100038EE+306j
		pop	ecx
		pop	ebx
		jmp	short loc_10003C55
; ---------------------------------------------------------------------------

loc_10003C10:				; CODE XREF: sub_100038EE+31Cj
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_10003C16:				; CODE XREF: sub_100038EE+32Bj
		add	ebx, esi
		dec	eax
		jnz	short loc_10003C16

loc_10003C1B:				; CODE XREF: sub_100038EE+318j
		xor	eax, eax

loc_10003C1D:				; CODE XREF: sub_100038EE+363j
		movzx	eax, bh
		cmp	al, 20h
		jnb	short loc_10003C4C
		or	al, al
		jz	short loc_10003C49
		mov	dx, [edi]
		shl	edx, 10h
		mov	dx, [edi]
		and	edx, dword_1000E030
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E030
		mov	edx, eax
		shr	edx, 10h
		or	eax, edx

loc_10003C49:				; CODE XREF: sub_100038EE+338j
		mov	[edi], ax

loc_10003C4C:				; CODE XREF: sub_100038EE+334j
		inc	edi
		inc	edi
		add	ebx, esi
		dec	ecx
		jnz	short loc_10003C1D
		pop	ecx
		pop	ebx

loc_10003C55:				; CODE XREF: sub_100038EE+320j
		pop	edi
		sub	ecx, 4
		add	edi, 4
		add	ebx, dword_1000E03D
		add	edi, [ebp+arg_18]
		add	[ebp+x], 2
		dec	dword_1000E041
		jnz	loc_10003BE6

loc_10003C75:				; CODE XREF: sub_100038EE+2EDj
		sub	edi, 96000h
		mov	eax, dword_1000E045
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_10003BE6

loc_10003C97:				; CODE XREF: sub_100038EE+94j
					; sub_100038EE+A7j ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_10003C9C:				; CODE XREF: sub_100038EE+105j
		mov	ebx, [ebp+arg_0]
		shl	ebx, 8
		mov	eax, [ebp+arg_C]
		sub	eax, [ebp+arg_0]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		add	ebx, eax
		mov	eax, 10h
		push	edx
		mul	[ebp+arg_18]
		pop	edx
		add	eax, 0FFFFFFC6h
		add	edi, eax
		sub	[ebp+x], 1Dh
		mov	ecx, 3Dh
		add	[ebp+y], 10h
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+y]
		cmp	eax, 10h
		jl	short loc_10003CE3
		mov	eax, 10h

loc_10003CE3:				; CODE XREF: sub_100038EE+3EEj
		mov	dword_1000E041,	eax
		movzx	eax, rcRect_top
		sub	eax, [ebp+y]
		jle	short loc_10003D13
		add	[ebp+y], eax
		sub	dword_1000E041,	eax

loc_10003CFD:				; CODE XREF: sub_100038EE+423j
		add	ebx, dword_1000E03D
		sub	ecx, 4
		add	edi, 4
		add	edi, [ebp+arg_18]
		add	[ebp+x], 2
		dec	eax
		jnz	short loc_10003CFD

loc_10003D13:				; CODE XREF: sub_100038EE+404j
		jmp	loc_10003BAC
sub_100038EE	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10003D18	proc near		; CODE XREF: x_sub_10001F50_call+32p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch
arg_18		= dword	ptr  20h
arg_1C		= dword	ptr  24h
arg_20		= dword	ptr  28h

		enter	0, 0
		push	ebx
		push	esi
		push	edi
		mov	eax, g_uBufferOrigin16
		xor	edx, edx
		mov	ecx, 500h
		div	ecx
		add	edx, [ebp+arg_20]
		add	edx, 96000h
		mov	dword_1000E038,	edx
		mov	eax, offset g_rcScreenRect
		mov	ax, word ptr g_rcScreenRect.left
		add	ax, 21h
		mov	rcRect_left, ax
		mov	ax, word ptr g_rcScreenRect.right
		add	ax, 21h
		mov	rcRect_right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	rcRect_top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	rcRect_bottom, ax
		mov	dword_1000E034,	0
		cld
		movzx	eax, rcRect_right
		inc	eax
		cmp	eax, [ebp+arg_10]
		jl	loc_1000405D
		movzx	eax, rcRect_left
		sub	eax, 40h
		cmp	eax, [ebp+arg_10]
		jg	loc_1000405D
		movzx	eax, rcRect_bottom
		inc	eax
		cmp	eax, [ebp+arg_14]
		jl	loc_1000405D
		movzx	eax, rcRect_top
		sub	eax, 20h
		cmp	eax, [ebp+arg_14]
		jg	loc_1000405D
		mov	esi, [ebp+arg_1C]
		mov	eax, [ebp+arg_14]
		mul	[ebp+arg_18]
		add	eax, [ebp+arg_10]
		add	eax, [ebp+arg_10]
		add	eax, [ebp+arg_20]
		add	eax, g_uBufferOrigin16
		mov	edi, eax
		sub	edi, 2
		add	[ebp+arg_10], 20h
		mov	edx, [ebp+arg_4]
		sub	edx, [ebp+arg_0]
		shl	edx, 2
		movzx	eax, rcRect_top
		sub	eax, 10h
		cmp	eax, [ebp+arg_14]
		jg	loc_10004062
		mov	eax, [ebp+arg_0]
		sub	eax, [ebp+arg_8]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		mov	ebx, [ebp+arg_8]
		shl	ebx, 8
		add	ebx, dword_1000E03D
		add	ebx, edx
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_14]
		cmp	eax, 10h
		jl	short loc_10003E3A
		mov	eax, 10h

loc_10003E3A:				; CODE XREF: sub_10003D18+11Bj
		mov	dword_1000E041,	eax
		mov	ecx, 3
		movzx	eax, rcRect_top
		sub	eax, [ebp+arg_14]
		jle	short loc_10003E71
		sub	dword_1000E041,	eax
		add	[ebp+arg_14], eax

loc_10003E59:				; CODE XREF: sub_10003D18+157j
		add	esi, ecx
		add	ebx, dword_1000E03D
		add	ecx, 4
		sub	edi, 4
		sub	[ebp+arg_10], 2
		add	edi, [ebp+arg_18]
		dec	eax
		jnz	short loc_10003E59

loc_10003E71:				; CODE XREF: sub_10003D18+136j
		mov	eax, dword_1000E041
		cmp	eax, 0
		mov	dword_1000E045,	eax
		jle	loc_10003F53
		add	eax, [ebp+arg_14]
		mov	[ebp+arg_14], eax
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10003E94
		xor	eax, eax

loc_10003E94:				; CODE XREF: sub_10003D18+178j
		sub	dword_1000E041,	eax
		jbe	loc_10003F25
		mov	dword_1000E045,	eax

loc_10003EA5:				; CODE XREF: sub_10003D18+20Bj
					; sub_10003D18+22Fj
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+arg_10]
		jle	short loc_10003F08
		push	esi
		push	edi
		push	ebx
		push	ecx
		cmp	eax, ecx
		jge	short loc_10003EBC
		mov	ecx, eax

loc_10003EBC:				; CODE XREF: sub_10003D18+1A0j
		movzx	eax, rcRect_left
		sub	eax, [ebp+arg_10]
		jle	short loc_10003ED9
		cmp	eax, ecx
		jge	short loc_10003F04
		add	esi, eax
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_10003ED4:				; CODE XREF: sub_10003D18+1BFj
		add	ebx, edx
		dec	eax
		jnz	short loc_10003ED4

loc_10003ED9:				; CODE XREF: sub_10003D18+1AEj
		cmp	edi, dword_1000E038
		jb	short loc_10003EE7
		sub	edi, 96000h

loc_10003EE7:				; CODE XREF: sub_10003D18+1C7j
		cmp	edi, [ebp+arg_20]
		jnb	short loc_10003EF2
		add	edi, 96000h

loc_10003EF2:				; CODE XREF: sub_10003D18+1D2j
		xor	eax, eax

loc_10003EF4:				; CODE XREF: sub_10003D18+1EAj
		cmp	[esi], al
		jz	short loc_10003EFB
		mov	[edi], ax

loc_10003EFB:				; CODE XREF: sub_10003D18+1DEj
		inc	esi
		add	edi, 2
		add	ebx, edx
		dec	ecx
		jnz	short loc_10003EF4

loc_10003F04:				; CODE XREF: sub_10003D18+1B2j
		pop	ecx
		pop	ebx
		pop	edi
		pop	esi

loc_10003F08:				; CODE XREF: sub_10003D18+198j
		add	esi, ecx
		add	ecx, 4
		sub	edi, 4
		add	ebx, dword_1000E03D
		add	edi, [ebp+arg_18]
		sub	[ebp+arg_10], 2
		dec	dword_1000E041
		jnz	short loc_10003EA5

loc_10003F25:				; CODE XREF: sub_10003D18+182j
		sub	edi, 96000h
		mov	eax, dword_1000E045
		inc	dword_1000E034
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_10003EA5
		add	edi, 96000h

loc_10003F53:				; CODE XREF: sub_10003D18+166j
		xor	byte_1000E049, 20h
		sub	ecx, 6
		add	edi, 6
		add	[ebp+arg_10], 3
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_14]
		jl	loc_1000405D
		cmp	eax, 10h
		jl	short loc_10003F7F
		mov	eax, 10h

loc_10003F7F:				; CODE XREF: sub_10003D18+260j
		mov	dword_1000E041,	eax
		mov	ebx, [ebp+arg_0]
		shl	ebx, 8
		mov	eax, [ebp+arg_C]
		sub	eax, [ebp+arg_0]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		add	ebx, eax

loc_10003F9A:				; CODE XREF: sub_10003D18:loc_100040E1j
		mov	eax, dword_1000E041
		cmp	eax, 0
		jle	loc_1000405D
		cmp	dword_1000E034,	2
		jnb	short loc_10003FD0
		mov	dword_1000E045,	eax
		add	eax, [ebp+arg_14]
		sub	eax, g_dwSurfaceHeight
		jge	short loc_10003FC3
		xor	eax, eax

loc_10003FC3:				; CODE XREF: sub_10003D18+2A7j
		sub	dword_1000E041,	eax
		jbe	short loc_1000403B
		mov	dword_1000E045,	eax

loc_10003FD0:				; CODE XREF: sub_10003D18+297j
					; sub_10003D18+321j ...
		push	esi
		push	edi
		push	ebx
		push	ecx
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+arg_10]
		jle	short loc_10003FF7
		cmp	eax, ecx
		jge	short loc_10003FE7
		mov	ecx, eax

loc_10003FE7:				; CODE XREF: sub_10003D18+2CBj
		movzx	eax, rcRect_left
		sub	eax, [ebp+arg_10]
		jle	short loc_10004008
		cmp	eax, ecx
		jl	short loc_10003FFB

loc_10003FF7:				; CODE XREF: sub_10003D18+2C7j
		pop	ecx
		pop	ebx
		jmp	short loc_1000401C
; ---------------------------------------------------------------------------

loc_10003FFB:				; CODE XREF: sub_10003D18+2DDj
		add	esi, eax
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_10004003:				; CODE XREF: sub_10003D18+2EEj
		add	ebx, edx
		dec	eax
		jnz	short loc_10004003

loc_10004008:				; CODE XREF: sub_10003D18+2D9j
		xor	eax, eax

loc_1000400A:				; CODE XREF: sub_10003D18+300j
		cmp	[esi], al
		jz	short loc_10004011
		mov	[edi], ax

loc_10004011:				; CODE XREF: sub_10003D18+2F4j
		inc	esi
		add	edi, 2
		add	ebx, edx
		dec	ecx
		jnz	short loc_1000400A
		pop	ecx
		pop	ebx

loc_1000401C:				; CODE XREF: sub_10003D18+2E1j
		pop	edi
		pop	esi
		add	esi, ecx
		sub	ecx, 4
		add	edi, 4
		add	ebx, dword_1000E03D
		add	edi, [ebp+arg_18]
		add	[ebp+arg_10], 2
		dec	dword_1000E041
		jnz	short loc_10003FD0

loc_1000403B:				; CODE XREF: sub_10003D18+2B1j
		sub	edi, 96000h
		mov	eax, dword_1000E045
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_10003FD0

loc_1000405D:				; CODE XREF: sub_10003D18+77j
					; sub_10003D18+8Aj ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_10004062:				; CODE XREF: sub_10003D18+EBj
		mov	ebx, [ebp+arg_0]
		shl	ebx, 8
		mov	eax, [ebp+arg_C]
		sub	eax, [ebp+arg_0]
		shl	eax, 4
		mov	dword_1000E03D,	eax
		add	ebx, eax
		mov	eax, 10h
		push	edx
		mul	[ebp+arg_18]
		pop	edx
		add	eax, 0FFFFFFC6h
		add	edi, eax
		sub	[ebp+arg_10], 1Dh
		mov	ecx, 3Dh
		add	esi, 210h
		add	[ebp+arg_14], 10h
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_14]
		cmp	eax, 10h
		jl	short loc_100040AF
		mov	eax, 10h

loc_100040AF:				; CODE XREF: sub_10003D18+390j
		mov	dword_1000E041,	eax
		movzx	eax, rcRect_top
		sub	eax, [ebp+arg_14]
		jle	short loc_100040E1
		add	[ebp+arg_14], eax
		sub	dword_1000E041,	eax

loc_100040C9:				; CODE XREF: sub_10003D18+3C7j
		add	esi, ecx
		add	ebx, dword_1000E03D
		sub	ecx, 4
		add	edi, 4
		add	edi, [ebp+arg_18]
		add	[ebp+arg_10], 2
		dec	eax
		jnz	short loc_100040C9

loc_100040E1:				; CODE XREF: sub_10003D18+3A6j
		jmp	loc_10003F9A
sub_10003D18	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100040E6	proc near		; CODE XREF: x_sub_10001F20_call+1Ep

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E030,	eax
		push	ebx
		push	esi
		push	edi
		mov	eax, g_uBufferOrigin16
		xor	edx, edx
		mov	ecx, 500h
		div	ecx
		add	edx, [ebp+arg_10]
		add	edx, 96000h
		mov	dword_1000E038,	edx
		mov	eax, offset g_rcScreenRect
		mov	ax, word ptr g_rcScreenRect.left
		add	ax, 21h
		mov	rcRect_left, ax
		mov	ax, word ptr g_rcScreenRect.right
		add	ax, 21h
		mov	rcRect_right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	rcRect_top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	rcRect_bottom, ax
		mov	dword_1000E034,	0
		cld
		movzx	eax, rcRect_right
		inc	eax
		cmp	eax, [ebp+arg_0]
		jl	loc_100043F8
		movzx	eax, rcRect_left
		sub	eax, 40h
		cmp	eax, [ebp+arg_0]
		jg	loc_100043F8
		movzx	eax, rcRect_bottom
		inc	eax
		cmp	eax, [ebp+arg_4]
		jl	loc_100043F8
		movzx	eax, rcRect_top
		sub	eax, 20h
		cmp	eax, [ebp+arg_4]
		jg	loc_100043F8
		mov	eax, [ebp+arg_4]
		mul	[ebp+arg_8]
		add	eax, [ebp+arg_0]
		add	eax, [ebp+arg_0]
		add	eax, [ebp+arg_10]
		add	eax, g_uBufferOrigin16
		mov	edi, eax
		sub	edi, 2
		add	[ebp+arg_0], 20h
		movzx	eax, rcRect_top
		sub	eax, 10h
		cmp	eax, [ebp+arg_4]
		jg	loc_100043FD
		mov	ebx, [ebp+arg_C]
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_4]
		cmp	eax, 10h
		jl	short loc_10004200
		mov	eax, 10h

loc_10004200:				; CODE XREF: sub_100040E6+113j
		mov	dword_1000E041,	eax
		mov	ecx, 3
		movzx	eax, rcRect_top
		sub	eax, [ebp+arg_4]
		jle	short loc_1000422F
		sub	dword_1000E041,	eax
		add	[ebp+arg_4], eax

loc_1000421F:				; CODE XREF: sub_100040E6+147j
		add	ecx, 4
		sub	edi, 4
		sub	[ebp+arg_0], 2
		add	edi, [ebp+arg_8]
		dec	eax
		jnz	short loc_1000421F

loc_1000422F:				; CODE XREF: sub_100040E6+12Ej
		mov	eax, dword_1000E041
		cmp	eax, 0
		mov	dword_1000E045,	eax
		jle	loc_10004309
		add	eax, [ebp+arg_4]
		mov	[ebp+arg_4], eax
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10004252
		xor	eax, eax

loc_10004252:				; CODE XREF: sub_100040E6+168j
		sub	dword_1000E041,	eax
		jbe	loc_100042DB
		mov	dword_1000E045,	eax

loc_10004263:				; CODE XREF: sub_100040E6+1F3j
					; sub_100040E6+217j
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+arg_0]
		jle	short loc_100042C6
		push	edi
		push	ebx
		push	ecx
		cmp	eax, ecx
		jge	short loc_10004279
		mov	ecx, eax

loc_10004279:				; CODE XREF: sub_100040E6+18Fj
		movzx	eax, rcRect_left
		sub	eax, [ebp+arg_0]
		jle	short loc_10004292
		cmp	eax, ecx
		jge	short loc_100042C3
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_1000428F:				; CODE XREF: sub_100040E6+1AAj
		dec	eax
		jnz	short loc_1000428F

loc_10004292:				; CODE XREF: sub_100040E6+19Dj
		cmp	edi, dword_1000E038
		jb	short loc_100042A0
		sub	edi, 96000h

loc_100042A0:				; CODE XREF: sub_100040E6+1B2j
		cmp	edi, [ebp+arg_10]
		jnb	short loc_100042AB
		add	edi, 96000h

loc_100042AB:				; CODE XREF: sub_100040E6+1BDj
		xor	eax, eax

loc_100042AD:				; CODE XREF: sub_100040E6+1DBj
		mov	ax, [edi]
		and	eax, dword_1000E468
		shr	eax, 1
		add	eax, ebx
		mov	[edi], ax
		add	edi, 2
		dec	ecx
		jnz	short loc_100042AD

loc_100042C3:				; CODE XREF: sub_100040E6+1A1j
		pop	ecx
		pop	ebx
		pop	edi

loc_100042C6:				; CODE XREF: sub_100040E6+188j
		add	ecx, 4
		sub	edi, 4
		add	edi, [ebp+arg_8]
		sub	[ebp+arg_0], 2
		dec	dword_1000E041
		jnz	short loc_10004263

loc_100042DB:				; CODE XREF: sub_100040E6+172j
		sub	edi, 96000h
		mov	eax, dword_1000E045
		inc	dword_1000E034
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_10004263
		add	edi, 96000h

loc_10004309:				; CODE XREF: sub_100040E6+156j
		xor	byte_1000E049, 20h
		sub	ecx, 6
		add	edi, 6
		add	[ebp+arg_0], 3
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_4]
		jl	loc_100043F8
		cmp	eax, 10h
		jl	short loc_10004335
		mov	eax, 10h

loc_10004335:				; CODE XREF: sub_100040E6+248j
		mov	dword_1000E041,	eax
		mov	ebx, [ebp+arg_C]

loc_1000433D:				; CODE XREF: sub_100040E6:loc_1000445Bj
		mov	eax, dword_1000E041
		cmp	eax, 0
		jle	loc_100043F8
		cmp	dword_1000E034,	2
		jnb	short loc_10004373
		mov	dword_1000E045,	eax
		add	eax, [ebp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jge	short loc_10004366
		xor	eax, eax

loc_10004366:				; CODE XREF: sub_100040E6+27Cj
		sub	dword_1000E041,	eax
		jbe	short loc_100043D6
		mov	dword_1000E045,	eax

loc_10004373:				; CODE XREF: sub_100040E6+26Cj
					; sub_100040E6+2EEj ...
		push	edi
		push	ebx
		push	ecx
		movzx	eax, rcRect_right
		inc	eax
		sub	eax, [ebp+arg_0]
		jle	short loc_10004399
		cmp	eax, ecx
		jge	short loc_10004389
		mov	ecx, eax

loc_10004389:				; CODE XREF: sub_100040E6+29Fj
		movzx	eax, rcRect_left
		sub	eax, [ebp+arg_0]
		jle	short loc_100043A6
		cmp	eax, ecx
		jl	short loc_1000439D

loc_10004399:				; CODE XREF: sub_100040E6+29Bj
		pop	ecx
		pop	ebx
		jmp	short loc_100043C0
; ---------------------------------------------------------------------------

loc_1000439D:				; CODE XREF: sub_100040E6+2B1j
		add	edi, eax
		add	edi, eax
		sub	ecx, eax

loc_100043A3:				; CODE XREF: sub_100040E6+2BEj
		dec	eax
		jnz	short loc_100043A3

loc_100043A6:				; CODE XREF: sub_100040E6+2ADj
		xor	eax, eax

loc_100043A8:				; CODE XREF: sub_100040E6+2D6j
		mov	ax, [edi]
		and	eax, dword_1000E468
		shr	eax, 1
		add	eax, ebx
		mov	[edi], ax
		add	edi, 2
		dec	ecx
		jnz	short loc_100043A8
		pop	ecx
		pop	ebx

loc_100043C0:				; CODE XREF: sub_100040E6+2B5j
		pop	edi
		sub	ecx, 4
		add	edi, 4
		add	edi, [ebp+arg_8]
		add	[ebp+arg_0], 2
		dec	dword_1000E041
		jnz	short loc_10004373

loc_100043D6:				; CODE XREF: sub_100040E6+286j
		sub	edi, 96000h
		mov	eax, dword_1000E045
		or	eax, eax
		mov	dword_1000E041,	eax
		mov	dword_1000E045,	0
		jnz	loc_10004373

loc_100043F8:				; CODE XREF: sub_100040E6+94j
					; sub_100040E6+A7j ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_100043FD:				; CODE XREF: sub_100040E6+FCj
		mov	ebx, [ebp+arg_C]
		mov	eax, 10h
		push	edx
		mul	[ebp+arg_8]
		pop	edx
		add	eax, 0FFFFFFC6h
		add	edi, eax
		sub	[ebp+arg_0], 1Dh
		mov	ecx, 3Dh
		add	[ebp+arg_4], 10h
		movzx	eax, rcRect_bottom
		inc	eax
		sub	eax, [ebp+arg_4]
		cmp	eax, 10h
		jl	short loc_10004431
		mov	eax, 10h

loc_10004431:				; CODE XREF: sub_100040E6+344j
		mov	dword_1000E041,	eax
		movzx	eax, rcRect_top
		sub	eax, [ebp+arg_4]
		jle	short loc_1000445B
		add	[ebp+arg_4], eax
		sub	dword_1000E041,	eax

loc_1000444B:				; CODE XREF: sub_100040E6+373j
		sub	ecx, 4
		add	edi, 4
		add	edi, [ebp+arg_8]
		add	[ebp+arg_0], 2
		dec	eax
		jnz	short loc_1000444B

loc_1000445B:				; CODE XREF: sub_100040E6+35Aj
		jmp	loc_1000433D
sub_100040E6	endp


; =============== S U B	R O U T	I N E =======================================


sub_10004460	proc near		; DATA XREF: CADraw_Init+D2o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, offset aTemp512Buff2
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_8]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10004504
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_1000476C
		mov	ecx, edx

loc_100044FE:				; CODE XREF: sub_10004460+A2j
		lodsw
		add	esi, eax
		loop	loc_100044FE

loc_10004504:				; CODE XREF: sub_10004460+88j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10004526
		sub	dword_1000E09A,	edx
		jle	loc_1000476C

loc_10004526:				; CODE XREF: sub_10004460+B8j
		mov	edi, offset g_aBufferSecondary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10004635
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_1000458C
		mov	dword_1000E06C,	offset loc_10004641

loc_1000458C:				; CODE XREF: sub_10004460+120j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100045A4
		xor	eax, eax

loc_100045A4:				; CODE XREF: sub_10004460+140j
		sub	dword_1000E09A,	eax
		jbe	loc_10004736
		mov	dword_1000E09E,	eax

loc_100045B5:				; CODE XREF: sub_10004460+2D0j
					; sub_10004460+306j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10004635

loc_100045CB:				; CODE XREF: sub_10004460+18Aj
					; sub_10004460+1B3j ...
		cmp	esi, ebp
		jnb	loc_100046F6
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10004602
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100045CB
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_1000464C
		or	al, 40h
		jmp	short loc_1000464C
; ---------------------------------------------------------------------------

loc_10004602:				; CODE XREF: sub_10004460+178j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_10004617
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100045CB
		jmp	short loc_10004635
; ---------------------------------------------------------------------------

loc_10004617:				; CODE XREF: sub_10004460+1A9j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100045CB
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_1000464C
; ---------------------------------------------------------------------------

loc_10004635:				; CODE XREF: sub_10004460+169j
					; sub_10004460+1B5j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_100046F6

loc_10004641:				; DATA XREF: sub_10004460+122o
		cmp	esi, ebp
		jnb	loc_100046F6
		mov	al, [esi]
		inc	esi

loc_1000464C:				; CODE XREF: sub_10004460+19Cj
					; sub_10004460+1A0j ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10004660
		mov	eax, dword_1000E060

loc_10004660:				; CODE XREF: sub_10004460+1F9j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_100046D0
		jnz	short loc_10004690

loc_1000466B:				; CODE XREF: sub_10004460+21Dj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_1000466B
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10004690:				; CODE XREF: sub_10004460+209j
					; sub_10004460+25Cj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10004690
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100046D0:				; CODE XREF: sub_10004460+207j
		jnp	short loc_100046E0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100046E0:				; CODE XREF: sub_10004460:loc_100046D0j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100046F6:				; CODE XREF: sub_10004460+16Dj
					; sub_10004460+1DBj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_100045B5

loc_10004736:				; CODE XREF: sub_10004460+14Aj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_100045B5

loc_1000476C:				; CODE XREF: sub_10004460+96j
					; sub_10004460+C0j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10004460	endp


; =============== S U B	R O U T	I N E =======================================


sub_10004786	proc near		; DATA XREF: CADraw_Init+DCo

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, offset aTemp512Buff3
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_8]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000482A
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10004A9C
		mov	ecx, edx

loc_10004824:				; CODE XREF: sub_10004786+A2j
		lodsw
		add	esi, eax
		loop	loc_10004824

loc_1000482A:				; CODE XREF: sub_10004786+88j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_1000484C
		sub	dword_1000E09A,	edx
		jle	loc_10004A9C

loc_1000484C:				; CODE XREF: sub_10004786+B8j
		mov	edi, offset g_aBufferSecondary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_1000495B
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100048B2
		mov	dword_1000E06C,	offset loc_10004967

loc_100048B2:				; CODE XREF: sub_10004786+120j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100048CA
		xor	eax, eax

loc_100048CA:				; CODE XREF: sub_10004786+140j
		sub	dword_1000E09A,	eax
		jbe	loc_10004A66
		mov	dword_1000E09E,	eax

loc_100048DB:				; CODE XREF: sub_10004786+2DAj
					; sub_10004786+310j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_1000495B

loc_100048F1:				; CODE XREF: sub_10004786+18Aj
					; sub_10004786+1B3j ...
		cmp	esi, ebp
		jnb	loc_10004A26
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10004928
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100048F1
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_10004972
		or	al, 40h
		jmp	short loc_10004972
; ---------------------------------------------------------------------------

loc_10004928:				; CODE XREF: sub_10004786+178j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_1000493D
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100048F1
		jmp	short loc_1000495B
; ---------------------------------------------------------------------------

loc_1000493D:				; CODE XREF: sub_10004786+1A9j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100048F1
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10004972
; ---------------------------------------------------------------------------

loc_1000495B:				; CODE XREF: sub_10004786+169j
					; sub_10004786+1B5j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10004A26

loc_10004967:				; DATA XREF: sub_10004786+122o
		cmp	esi, ebp
		jnb	loc_10004A26
		mov	al, [esi]
		inc	esi

loc_10004972:				; CODE XREF: sub_10004786+19Cj
					; sub_10004786+1A0j ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10004990
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10004990:				; CODE XREF: sub_10004786+1F9j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10004A00
		jnz	short loc_100049C0

loc_1000499B:				; CODE XREF: sub_10004786+227j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_1000499B
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100049C0:				; CODE XREF: sub_10004786+213j
					; sub_10004786+266j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100049C0
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10004A00:				; CODE XREF: sub_10004786+211j
		jnp	short loc_10004A10
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10004A10:				; CODE XREF: sub_10004786:loc_10004A00j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10004A26:				; CODE XREF: sub_10004786+16Dj
					; sub_10004786+1DBj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_100048DB

loc_10004A66:				; CODE XREF: sub_10004786+14Aj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_100048DB

loc_10004A9C:				; CODE XREF: sub_10004786+96j
					; sub_10004786+C0j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10004786	endp


; =============== S U B	R O U T	I N E =======================================


sub_10004AB6	proc near		; DATA XREF: CADraw_Init+E6o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, offset aTemp512Buff1
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_C]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10004B71
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10004E66
		mov	ecx, edx

loc_10004B6B:				; CODE XREF: sub_10004AB6+B9j
		lodsw
		add	esi, eax
		loop	loc_10004B6B

loc_10004B71:				; CODE XREF: sub_10004AB6+9Fj
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10004B93
		sub	dword_1000E09A,	edx
		jle	loc_10004E66

loc_10004B93:				; CODE XREF: sub_10004AB6+CFj
		mov	edi, offset g_aBufferSecondary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10004CA9
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10004BF9
		mov	dword_1000E06C,	offset loc_10004CB5

loc_10004BF9:				; CODE XREF: sub_10004AB6+137j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10004C11
		xor	eax, eax

loc_10004C11:				; CODE XREF: sub_10004AB6+157j
		sub	dword_1000E09A,	eax
		jbe	loc_10004E30
		mov	dword_1000E09E,	eax

loc_10004C22:				; CODE XREF: sub_10004AB6+374j
					; sub_10004AB6+3AAj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10004CA9

loc_10004C3B:				; CODE XREF: sub_10004AB6+1A8j
					; sub_10004AB6+1D1j ...
		cmp	esi, dword_1000E080
		jnb	loc_10004DEC
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10004C76
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10004C3B
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_10004CC4
		or	al, 40h
		jmp	short loc_10004CC4
; ---------------------------------------------------------------------------

loc_10004C76:				; CODE XREF: sub_10004AB6+196j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_10004C8B
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10004C3B
		jmp	short loc_10004CA9
; ---------------------------------------------------------------------------

loc_10004C8B:				; CODE XREF: sub_10004AB6+1C7j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10004C3B
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10004CC4
; ---------------------------------------------------------------------------

loc_10004CA9:				; CODE XREF: sub_10004AB6+183j
					; sub_10004AB6+1D3j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10004DEC

loc_10004CB5:				; DATA XREF: sub_10004AB6+139o
		cmp	esi, dword_1000E080
		jnb	loc_10004DEC
		mov	al, [esi]
		inc	esi

loc_10004CC4:				; CODE XREF: sub_10004AB6+1BAj
					; sub_10004AB6+1BEj ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10004CE0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10004CE0:				; CODE XREF: sub_10004AB6+21Bj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	loc_10004D90
		jnz	short loc_10004D30

loc_10004CEF:				; CODE XREF: sub_10004AB6+272j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, ds:96524h[edi*2]
		and	edx, 3
		or	edx, ebp
		mov	ds:96524h[edi*2], dx
		test	dl, 2
		jz	short loc_10004D1E
		and	eax, dword_1000E468
		shr	eax, 1
		add	eax, dword_1000E480

loc_10004D1E:				; CODE XREF: sub_10004AB6+258j
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10004CEF
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10004D30:				; CODE XREF: sub_10004AB6+237j
					; sub_10004AB6+2CDj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	edx, ds:96524h[edi*2]
		and	edx, 3
		or	edx, ebp
		mov	ds:96524h[edi*2], dx
		test	dl, 2
		jz	short loc_10004D79
		and	eax, dword_1000E468
		shr	eax, 1
		add	eax, dword_1000E480

loc_10004D79:				; CODE XREF: sub_10004AB6+2B3j
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10004D30
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10004D90:				; CODE XREF: sub_10004AB6+231j
		jnp	short loc_10004DA0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10004DA0:				; CODE XREF: sub_10004AB6:loc_10004D90j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_10004DA9:				; CODE XREF: sub_10004AB6+324j
					; sub_10004AB6+32Ej
		mov	edx, ds:96524h[edi*2]
		and	edx, 3
		or	edx, ebp
		mov	ds:96524h[edi*2], dx
		test	dl, 2
		jz	short loc_10004DD0
		and	eax, dword_1000E468
		shr	eax, 1
		add	eax, dword_1000E480

loc_10004DD0:				; CODE XREF: sub_10004AB6+30Aj
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10004DA9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		inc	edi
		dec	ecx
		jnz	short loc_10004DA9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10004DEC:				; CODE XREF: sub_10004AB6+18Bj
					; sub_10004AB6+1F9j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10004C22

loc_10004E30:				; CODE XREF: sub_10004AB6+161j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10004C22

loc_10004E66:				; CODE XREF: sub_10004AB6+ADj
					; sub_10004AB6+D7j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10004AB6	endp


; =============== S U B	R O U T	I N E =======================================


sub_10004E80	proc near		; DATA XREF: CADraw_Init+15Eo

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10004F3A
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10005195
		mov	ecx, edx

loc_10004F34:				; CODE XREF: sub_10004E80+B8j
		lodsw
		add	esi, eax
		loop	loc_10004F34

loc_10004F3A:				; CODE XREF: sub_10004E80+9Ej
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10004F5C
		sub	dword_1000E09A,	edx
		jle	loc_10005195

loc_10004F5C:				; CODE XREF: sub_10004E80+CEj
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10005069
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10004FC2
		mov	dword_1000E06C,	offset loc_10005075

loc_10004FC2:				; CODE XREF: sub_10004E80+136j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10004FDA
		xor	eax, eax

loc_10004FDA:				; CODE XREF: sub_10004E80+156j
		sub	dword_1000E09A,	eax
		jbe	loc_1000515F
		mov	dword_1000E09E,	eax

loc_10004FEB:				; CODE XREF: sub_10004E80+2D9j
					; sub_10004E80+30Fj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10005069

loc_10005004:				; CODE XREF: sub_10004E80+1A4j
					; sub_10004E80+1CAj ...
		cmp	esi, dword_1000E080
		jnb	loc_1000511B
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10005036
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005004
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10005084
; ---------------------------------------------------------------------------

loc_10005036:				; CODE XREF: sub_10004E80+195j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_1000504E
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005004
		jmp	short loc_10005069
; ---------------------------------------------------------------------------

loc_1000504E:				; CODE XREF: sub_10004E80+1C0j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005004
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10005084
; ---------------------------------------------------------------------------

loc_10005069:				; CODE XREF: sub_10004E80+182j
					; sub_10004E80+1CCj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_1000511B

loc_10005075:				; DATA XREF: sub_10004E80+138o
		cmp	esi, dword_1000E080
		jnb	loc_1000511B
		mov	al, [esi]
		inc	esi

loc_10005084:				; CODE XREF: sub_10004E80+1B4j
					; sub_10004E80+1E7j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_100050A0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_100050A0:				; CODE XREF: sub_10004E80+211j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_100050E0

loc_100050A9:				; CODE XREF: sub_10004E80+244j
					; sub_10004E80+253j
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_100050D0
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100050A9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100050D0:				; CODE XREF: sub_10004E80+230j
		inc	esi
		inc	edi
		dec	ecx
		jnz	short loc_100050A9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100050E0:				; CODE XREF: sub_10004E80+227j
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_100050F0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100050F0:				; CODE XREF: sub_10004E80+265j
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_100050F6:				; CODE XREF: sub_10004E80+289j
					; sub_10004E80+293j
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10005111
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100050F6
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10005111:				; CODE XREF: sub_10004E80+27Dj
		inc	edi
		dec	ecx
		jnz	short loc_100050F6
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_1000511B:				; CODE XREF: sub_10004E80+18Aj
					; sub_10004E80+1EFj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10004FEB

loc_1000515F:				; CODE XREF: sub_10004E80+160j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10004FEB

loc_10005195:				; CODE XREF: sub_10004E80+ACj
					; sub_10004E80+D6j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10004E80	endp


; =============== S U B	R O U T	I N E =======================================


sub_100051AF	proc near		; CODE XREF: x_sub_10003430_call+31p
					; DATA XREF: CADraw_Init+140o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_8]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_C]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10005252
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10005479
		mov	ecx, edx

loc_1000524C:				; CODE XREF: sub_100051AF+A1j
		lodsw
		add	esi, eax
		loop	loc_1000524C

loc_10005252:				; CODE XREF: sub_100051AF+87j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10005274
		sub	dword_1000E09A,	edx
		jle	loc_10005479

loc_10005274:				; CODE XREF: sub_100051AF+B7j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_1000537A
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100052DA
		mov	dword_1000E06C,	offset loc_10005386

loc_100052DA:				; CODE XREF: sub_100051AF+11Fj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100052F2
		xor	eax, eax

loc_100052F2:				; CODE XREF: sub_100051AF+13Fj
		sub	dword_1000E09A,	eax
		jbe	loc_10005443
		mov	dword_1000E09E,	eax

loc_10005303:				; CODE XREF: sub_100051AF+28Ej
					; sub_100051AF+2C4j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_1000537A

loc_10005319:				; CODE XREF: sub_100051AF+186j
					; sub_100051AF+1ACj ...
		cmp	esi, ebp
		jnb	loc_10005403
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10005347
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005319
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_1000538D
; ---------------------------------------------------------------------------

loc_10005347:				; CODE XREF: sub_100051AF+177j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_1000535F
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005319
		jmp	short loc_1000537A
; ---------------------------------------------------------------------------

loc_1000535F:				; CODE XREF: sub_100051AF+1A2j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005319
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_1000538D
; ---------------------------------------------------------------------------

loc_1000537A:				; CODE XREF: sub_100051AF+168j
					; sub_100051AF+1AEj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10005403

loc_10005386:				; DATA XREF: sub_100051AF+121o
		cmp	esi, ebp
		jnb	short loc_10005403
		mov	al, [esi]
		inc	esi

loc_1000538D:				; CODE XREF: sub_100051AF+196j
					; sub_100051AF+1C9j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_100053B0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_100053B0:				; CODE XREF: sub_100051AF+1EBj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_100053E0

loc_100053B9:				; CODE XREF: sub_100051AF+21Cj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100053B9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100053E0:				; CODE XREF: sub_100051AF+208j
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_100053F0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100053F0:				; CODE XREF: sub_100051AF+236j
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10005403:				; CODE XREF: sub_100051AF+16Cj
					; sub_100051AF+1D1j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10005303

loc_10005443:				; CODE XREF: sub_100051AF+149j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10005303

loc_10005479:				; CODE XREF: sub_100051AF+95j
					; sub_100051AF+BFj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_100051AF	endp


; =============== S U B	R O U T	I N E =======================================


sub_10005493	proc near		; DATA XREF: CADraw_Init+1A4o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	eax, [esp+arg_8]
		mov	dword_1000E068,	eax
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E084,	eax
		mov	edx, eax
		shl	eax, 1
		or	eax, edx
		mov	dword_1000E088,	eax
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10005567
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10005852
		mov	ecx, edx

loc_10005561:				; CODE XREF: sub_10005493+D2j
		lodsw
		add	esi, eax
		loop	loc_10005561

loc_10005567:				; CODE XREF: sub_10005493+B8j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10005589
		sub	dword_1000E09A,	edx
		jle	loc_10005852

loc_10005589:				; CODE XREF: sub_10005493+E8j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_1000568F
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100055EF
		mov	dword_1000E06C,	offset loc_1000569B

loc_100055EF:				; CODE XREF: sub_10005493+150j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10005607
		xor	eax, eax

loc_10005607:				; CODE XREF: sub_10005493+170j
		sub	dword_1000E09A,	eax
		jbe	loc_1000581C
		mov	dword_1000E09E,	eax

loc_10005618:				; CODE XREF: sub_10005493+383j
					; sub_10005493+3B9j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_1000568F

loc_1000562E:				; CODE XREF: sub_10005493+1B7j
					; sub_10005493+1DDj ...
		cmp	esi, ebp
		jnb	loc_100057DC
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_1000565C
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000562E
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_100056A6
; ---------------------------------------------------------------------------

loc_1000565C:				; CODE XREF: sub_10005493+1A8j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10005674
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000562E
		jmp	short loc_1000568F
; ---------------------------------------------------------------------------

loc_10005674:				; CODE XREF: sub_10005493+1D3j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000562E
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_100056A6
; ---------------------------------------------------------------------------

loc_1000568F:				; CODE XREF: sub_10005493+199j
					; sub_10005493+1DFj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_100057DC

loc_1000569B:				; DATA XREF: sub_10005493+152o
		cmp	esi, ebp
		jnb	loc_100057DC
		mov	al, [esi]
		inc	esi

loc_100056A6:				; CODE XREF: sub_10005493+1C7j
					; sub_10005493+1FAj
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_100056C0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop

loc_100056C0:				; CODE XREF: sub_10005493+220j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	loc_10005750

loc_100056CD:				; CODE XREF: sub_10005493+2B0j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		push	eax
		mov	eax, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		push	edx
		mov	edx, eax
		shl	eax, 10h
		mov	ax, dx
		mov	edx, 1Fh
		and	eax, dword_1000E084
		sub	edx, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_100056CD
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005750:				; CODE XREF: sub_10005493+234j
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10005760
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005760:				; CODE XREF: sub_10005493+2C2j
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_10005766:				; CODE XREF: sub_10005493+341j
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		push	eax
		mov	eax, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		push	edx
		mov	edx, eax
		shl	eax, 10h
		mov	ax, dx
		mov	edx, 1Fh
		and	eax, dword_1000E084
		sub	edx, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_10005766
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100057DC:				; CODE XREF: sub_10005493+19Dj
					; sub_10005493+202j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10005618

loc_1000581C:				; CODE XREF: sub_10005493+17Aj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10005618

loc_10005852:				; CODE XREF: sub_10005493+C6j
					; sub_10005493+F0j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10005493	endp


; =============== S U B	R O U T	I N E =======================================


sub_1000586C	proc near		; DATA XREF: CADraw_Init+104o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_8]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_C]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000590F
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10005B7C
		mov	ecx, edx

loc_10005909:				; CODE XREF: sub_1000586C+A1j
		lodsw
		add	esi, eax
		loop	loc_10005909

loc_1000590F:				; CODE XREF: sub_1000586C+87j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10005931
		sub	dword_1000E09A,	edx
		jle	loc_10005B7C

loc_10005931:				; CODE XREF: sub_1000586C+B7j
		mov	edi, offset g_aBufferSecondary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10005A40
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10005997
		mov	dword_1000E06C,	offset loc_10005A4C

loc_10005997:				; CODE XREF: sub_1000586C+11Fj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100059AF
		xor	eax, eax

loc_100059AF:				; CODE XREF: sub_1000586C+13Fj
		sub	dword_1000E09A,	eax
		jbe	loc_10005B46
		mov	dword_1000E09E,	eax

loc_100059C0:				; CODE XREF: sub_1000586C+2D4j
					; sub_1000586C+30Aj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10005A40

loc_100059D6:				; CODE XREF: sub_1000586C+189j
					; sub_1000586C+1B2j ...
		cmp	esi, ebp
		jnb	loc_10005B06
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10005A0D
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100059D6
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_10005A57
		or	al, 40h
		jmp	short loc_10005A57
; ---------------------------------------------------------------------------

loc_10005A0D:				; CODE XREF: sub_1000586C+177j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_10005A22
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100059D6
		jmp	short loc_10005A40
; ---------------------------------------------------------------------------

loc_10005A22:				; CODE XREF: sub_1000586C+1A8j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100059D6
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10005A57
; ---------------------------------------------------------------------------

loc_10005A40:				; CODE XREF: sub_1000586C+168j
					; sub_1000586C+1B4j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10005B06

loc_10005A4C:				; DATA XREF: sub_1000586C+121o
		cmp	esi, ebp
		jnb	loc_10005B06
		mov	al, [esi]
		inc	esi

loc_10005A57:				; CODE XREF: sub_1000586C+19Bj
					; sub_1000586C+19Fj ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10005A70
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop

loc_10005A70:				; CODE XREF: sub_1000586C+1F8j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10005AE0
		jnz	short loc_10005AA0

loc_10005A7B:				; CODE XREF: sub_1000586C+221j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10005A7B
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005AA0:				; CODE XREF: sub_1000586C+20Dj
					; sub_1000586C+260j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10005AA0
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005AE0:				; CODE XREF: sub_1000586C+20Bj
		jnp	short loc_10005AF0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005AF0:				; CODE XREF: sub_1000586C:loc_10005AE0j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10005B06:				; CODE XREF: sub_1000586C+16Cj
					; sub_1000586C+1DAj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_100059C0

loc_10005B46:				; CODE XREF: sub_1000586C+149j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_100059C0

loc_10005B7C:				; CODE XREF: sub_1000586C+95j
					; sub_1000586C+BFj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_1000586C	endp


; =============== S U B	R O U T	I N E =======================================


sub_10005B96	proc near		; DATA XREF: CADraw_Init+FAo

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10005C50
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10005EE7
		mov	ecx, edx

loc_10005C4A:				; CODE XREF: sub_10005B96+B8j
		lodsw
		add	esi, eax
		loop	loc_10005C4A

loc_10005C50:				; CODE XREF: sub_10005B96+9Ej
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10005C72
		sub	dword_1000E09A,	edx
		jle	loc_10005EE7

loc_10005C72:				; CODE XREF: sub_10005B96+CEj
		mov	edi, offset g_aBufferSecondary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10005D88
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10005CD8
		mov	dword_1000E06C,	offset loc_10005D94

loc_10005CD8:				; CODE XREF: sub_10005B96+136j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10005CF0
		xor	eax, eax

loc_10005CF0:				; CODE XREF: sub_10005B96+156j
		sub	dword_1000E09A,	eax
		jbe	loc_10005EB1
		mov	dword_1000E09E,	eax

loc_10005D01:				; CODE XREF: sub_10005B96+315j
					; sub_10005B96+34Bj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10005D88

loc_10005D1A:				; CODE XREF: sub_10005B96+1A7j
					; sub_10005B96+1D0j ...
		cmp	esi, dword_1000E080
		jnb	loc_10005E6D
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10005D55
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005D1A
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_10005DA3
		or	al, 40h
		jmp	short loc_10005DA3
; ---------------------------------------------------------------------------

loc_10005D55:				; CODE XREF: sub_10005B96+195j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_10005D6A
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005D1A
		jmp	short loc_10005D88
; ---------------------------------------------------------------------------

loc_10005D6A:				; CODE XREF: sub_10005B96+1C6j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10005D1A
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10005DA3
; ---------------------------------------------------------------------------

loc_10005D88:				; CODE XREF: sub_10005B96+182j
					; sub_10005B96+1D2j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10005E6D

loc_10005D94:				; DATA XREF: sub_10005B96+138o
		cmp	esi, dword_1000E080
		jnb	loc_10005E6D
		mov	al, [esi]
		inc	esi

loc_10005DA3:				; CODE XREF: sub_10005B96+1B9j
					; sub_10005B96+1BDj ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10005DC0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10005DC0:				; CODE XREF: sub_10005B96+21Aj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10005E30
		jnz	short loc_10005DF0

loc_10005DCB:				; CODE XREF: sub_10005B96+24Fj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:96524h[edi*2], bp
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10005DCB
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005DF0:				; CODE XREF: sub_10005B96+233j
					; sub_10005B96+28Ej
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:96524h[edi*2], bp
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10005DF0
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005E30:				; CODE XREF: sub_10005B96+231j
		jnp	short loc_10005E40
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10005E40:				; CODE XREF: sub_10005B96:loc_10005E30j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_10005E49:				; CODE XREF: sub_10005B96+2C5j
					; sub_10005B96+2CFj
		mov	ds:96524h[edi*2], bp
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10005E49
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		inc	edi
		dec	ecx
		jnz	short loc_10005E49
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10005E6D:				; CODE XREF: sub_10005B96+18Aj
					; sub_10005B96+1F8j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10005D01

loc_10005EB1:				; CODE XREF: sub_10005B96+160j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10005D01

loc_10005EE7:				; CODE XREF: sub_10005B96+ACj
					; sub_10005B96+D6j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10005B96	endp


; =============== S U B	R O U T	I N E =======================================


sub_10005F01	proc near		; CODE XREF: x_sub_10003490_call+32p
					; DATA XREF: CADraw_Init+F0o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10005FBB
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10006243
		mov	ecx, edx

loc_10005FB5:				; CODE XREF: sub_10005F01+B8j
		lodsw
		add	esi, eax
		loop	loc_10005FB5

loc_10005FBB:				; CODE XREF: sub_10005F01+9Ej
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10005FDD
		sub	dword_1000E09A,	edx
		jle	loc_10006243

loc_10005FDD:				; CODE XREF: sub_10005F01+CEj
		mov	edi, offset g_aBufferSecondary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_100060EA
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10006043
		mov	dword_1000E06C,	offset loc_100060F6

loc_10006043:				; CODE XREF: sub_10005F01+136j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_1000605B
		xor	eax, eax

loc_1000605B:				; CODE XREF: sub_10005F01+156j
		sub	dword_1000E09A,	eax
		jbe	loc_1000620D
		mov	dword_1000E09E,	eax

loc_1000606C:				; CODE XREF: sub_10005F01+306j
					; sub_10005F01+33Cj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_100060EA

loc_10006085:				; CODE XREF: sub_10005F01+1A4j
					; sub_10005F01+1CAj ...
		cmp	esi, dword_1000E080
		jnb	loc_100061C9
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_100060B7
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006085
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10006105
; ---------------------------------------------------------------------------

loc_100060B7:				; CODE XREF: sub_10005F01+195j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_100060CF
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006085
		jmp	short loc_100060EA
; ---------------------------------------------------------------------------

loc_100060CF:				; CODE XREF: sub_10005F01+1C0j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006085
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10006105
; ---------------------------------------------------------------------------

loc_100060EA:				; CODE XREF: sub_10005F01+182j
					; sub_10005F01+1CCj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_100061C9

loc_100060F6:				; DATA XREF: sub_10005F01+138o
		cmp	esi, dword_1000E080
		jnb	loc_100061C9
		mov	al, [esi]
		inc	esi

loc_10006105:				; CODE XREF: sub_10005F01+1B4j
					; sub_10005F01+1E7j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10006120
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10006120:				; CODE XREF: sub_10005F01+211j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10006170

loc_10006129:				; CODE XREF: sub_10005F01+261j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, ds:96524h[edi*2]
		and	edx, 3
		or	edx, ebp
		mov	ds:96524h[edi*2], dx
		test	dl, 2
		jz	short loc_10006158
		and	eax, dword_1000E468
		shr	eax, 1
		add	eax, dword_1000E480

loc_10006158:				; CODE XREF: sub_10005F01+247j
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10006129
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006170:				; CODE XREF: sub_10005F01+226j
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10006180
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006180:				; CODE XREF: sub_10005F01+274j
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_10006186:				; CODE XREF: sub_10005F01+2B6j
					; sub_10005F01+2C0j
		mov	edx, ds:96524h[edi*2]
		and	edx, 3
		or	edx, ebp
		mov	ds:96524h[edi*2], dx
		test	dl, 2
		jz	short loc_100061AD
		and	eax, dword_1000E468
		shr	eax, 1
		add	eax, dword_1000E480

loc_100061AD:				; CODE XREF: sub_10005F01+29Cj
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10006186
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		inc	edi
		dec	ecx
		jnz	short loc_10006186
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100061C9:				; CODE XREF: sub_10005F01+18Aj
					; sub_10005F01+1EFj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_1000606C

loc_1000620D:				; CODE XREF: sub_10005F01+160j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_1000606C

loc_10006243:				; CODE XREF: sub_10005F01+ACj
					; sub_10005F01+D6j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10005F01	endp


; =============== S U B	R O U T	I N E =======================================


sub_1000625D	proc near		; DATA XREF: CADraw_Init+154o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_8]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_C]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10006300
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_1000656C
		mov	ecx, edx

loc_100062FA:				; CODE XREF: sub_1000625D+A1j
		lodsw
		add	esi, eax
		loop	loc_100062FA

loc_10006300:				; CODE XREF: sub_1000625D+87j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10006322
		sub	dword_1000E09A,	edx
		jle	loc_1000656C

loc_10006322:				; CODE XREF: sub_1000625D+B7j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10006431
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10006388
		mov	dword_1000E06C,	offset loc_1000643D

loc_10006388:				; CODE XREF: sub_1000625D+11Fj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100063A0
		xor	eax, eax

loc_100063A0:				; CODE XREF: sub_1000625D+13Fj
		sub	dword_1000E09A,	eax
		jbe	loc_10006536
		mov	dword_1000E09E,	eax

loc_100063B1:				; CODE XREF: sub_1000625D+2D3j
					; sub_1000625D+309j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10006431

loc_100063C7:				; CODE XREF: sub_1000625D+189j
					; sub_1000625D+1B2j ...
		cmp	esi, ebp
		jnb	loc_100064F6
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_100063FE
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100063C7
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_10006448
		or	al, 40h
		jmp	short loc_10006448
; ---------------------------------------------------------------------------

loc_100063FE:				; CODE XREF: sub_1000625D+177j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_10006413
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100063C7
		jmp	short loc_10006431
; ---------------------------------------------------------------------------

loc_10006413:				; CODE XREF: sub_1000625D+1A8j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100063C7
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10006448
; ---------------------------------------------------------------------------

loc_10006431:				; CODE XREF: sub_1000625D+168j
					; sub_1000625D+1B4j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_100064F6

loc_1000643D:				; DATA XREF: sub_1000625D+121o
		cmp	esi, ebp
		jnb	loc_100064F6
		mov	al, [esi]
		inc	esi

loc_10006448:				; CODE XREF: sub_1000625D+19Bj
					; sub_1000625D+19Fj ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10006460
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop

loc_10006460:				; CODE XREF: sub_1000625D+1F8j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_100064D0
		jnz	short loc_10006490

loc_1000646B:				; CODE XREF: sub_1000625D+220j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_1000646B
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006490:				; CODE XREF: sub_1000625D+20Cj
					; sub_1000625D+25Fj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10006490
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100064D0:				; CODE XREF: sub_1000625D+20Aj
		jnp	short loc_100064E0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100064E0:				; CODE XREF: sub_1000625D:loc_100064D0j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100064F6:				; CODE XREF: sub_1000625D+16Cj
					; sub_1000625D+1DAj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_100063B1

loc_10006536:				; CODE XREF: sub_1000625D+149j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_100063B1

loc_1000656C:				; CODE XREF: sub_1000625D+95j
					; sub_1000625D+BFj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_1000625D	endp


; =============== S U B	R O U T	I N E =======================================


sub_10006586	proc near		; DATA XREF: CADraw_Init+14Ao

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, 0
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_8]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000662A
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10006863
		mov	ecx, edx

loc_10006624:				; CODE XREF: sub_10006586+A2j
		lodsw
		add	esi, eax
		loop	loc_10006624

loc_1000662A:				; CODE XREF: sub_10006586+88j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_1000664C
		sub	dword_1000E09A,	edx
		jle	loc_10006863

loc_1000664C:				; CODE XREF: sub_10006586+B8j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10006758
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100066B2
		mov	dword_1000E06C,	offset loc_10006764

loc_100066B2:				; CODE XREF: sub_10006586+120j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100066CA
		xor	eax, eax

loc_100066CA:				; CODE XREF: sub_10006586+140j
		sub	dword_1000E09A,	eax
		jbe	loc_1000682D
		mov	dword_1000E09E,	eax

loc_100066DB:				; CODE XREF: sub_10006586+2A1j
					; sub_10006586+2D7j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10006758

loc_100066F1:				; CODE XREF: sub_10006586+189j
					; sub_10006586+1B3j ...
		cmp	esi, ebp
		jnb	loc_100067ED
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10006721
		movzx	ecx, al
		add	esi, ecx
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100066F1
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_1000676F
; ---------------------------------------------------------------------------

loc_10006721:				; CODE XREF: sub_10006586+178j
		and	eax, 7Fh
		mov	ecx, eax
		mov	eax, [esi]
		add	esi, 2
		cmp	ax, 0F81Fh
		jnz	short loc_1000673D
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100066F1
		jmp	short loc_10006758
; ---------------------------------------------------------------------------

loc_1000673D:				; CODE XREF: sub_10006586+1A9j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100066F1
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_1000676F
; ---------------------------------------------------------------------------

loc_10006758:				; CODE XREF: sub_10006586+169j
					; sub_10006586+1B5j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_100067ED

loc_10006764:				; DATA XREF: sub_10006586+122o
		cmp	esi, ebp
		jnb	loc_100067ED
		mov	al, [esi]
		inc	esi

loc_1000676F:				; CODE XREF: sub_10006586+199j
					; sub_10006586+1D0j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10006790
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10006790:				; CODE XREF: sub_10006586+1F6j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_100067C0

loc_10006799:				; CODE XREF: sub_10006586+224j
		xor	eax, eax
		mov	eax, [esi]
		add	esi, 2
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10006799
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100067C0:				; CODE XREF: sub_10006586+211j
		mov	eax, [esi]
		add	esi, 2
		cmp	ax, 0F81Fh
		jnz	short loc_100067E0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100067E0:				; CODE XREF: sub_10006586+243j
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100067ED:				; CODE XREF: sub_10006586+16Dj
					; sub_10006586+1D8j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_100066DB

loc_1000682D:				; CODE XREF: sub_10006586+14Aj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_100066DB

loc_10006863:				; CODE XREF: sub_10006586+96j
					; sub_10006586+C0j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10006586	endp


; =============== S U B	R O U T	I N E =======================================


sub_1000687D	proc near		; DATA XREF: CADraw_Init+17Co

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E084,	eax
		mov	edx, eax
		shl	eax, 1
		or	eax, edx
		mov	dword_1000E088,	eax
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000695F
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10006C2E
		mov	ecx, edx

loc_10006959:				; CODE XREF: sub_1000687D+E0j
		lodsw
		add	esi, eax
		loop	loc_10006959

loc_1000695F:				; CODE XREF: sub_1000687D+C6j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10006981
		sub	dword_1000E09A,	edx
		jle	loc_10006C2E

loc_10006981:				; CODE XREF: sub_1000687D+F6j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10006A8E
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100069E7
		mov	dword_1000E06C,	offset loc_10006A9A

loc_100069E7:				; CODE XREF: sub_1000687D+15Ej
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100069FF
		xor	eax, eax

loc_100069FF:				; CODE XREF: sub_1000687D+17Ej
		sub	dword_1000E09A,	eax
		jbe	loc_10006BF8
		mov	dword_1000E09E,	eax

loc_10006A10:				; CODE XREF: sub_1000687D+375j
					; sub_1000687D+3ABj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10006A8E

loc_10006A29:				; CODE XREF: sub_1000687D+1CCj
					; sub_1000687D+1F2j ...
		cmp	esi, dword_1000E080
		jnb	loc_10006BB4
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10006A5B
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006A29
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10006AA9
; ---------------------------------------------------------------------------

loc_10006A5B:				; CODE XREF: sub_1000687D+1BDj
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10006A73
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006A29
		jmp	short loc_10006A8E
; ---------------------------------------------------------------------------

loc_10006A73:				; CODE XREF: sub_1000687D+1E8j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006A29
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10006AA9
; ---------------------------------------------------------------------------

loc_10006A8E:				; CODE XREF: sub_1000687D+1AAj
					; sub_1000687D+1F4j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10006BB4

loc_10006A9A:				; DATA XREF: sub_1000687D+160o
		cmp	esi, dword_1000E080
		jnb	loc_10006BB4
		mov	al, [esi]
		inc	esi

loc_10006AA9:				; CODE XREF: sub_1000687D+1DCj
					; sub_1000687D+20Fj
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10006AC0
		mov	eax, dword_1000E060
		nop
		nop
		nop

loc_10006AC0:				; CODE XREF: sub_1000687D+239j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10006B40

loc_10006AC9:				; CODE XREF: sub_1000687D+2A0j
					; sub_1000687D+2B6j
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10006B30
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*4]
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		shr	eax, 13h
		cmp	al, 1Fh
		jz	short loc_10006B1A
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		push	eax

loc_10006B1A:				; CODE XREF: sub_1000687D+27Cj
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_10006AC9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006B30:				; CODE XREF: sub_1000687D+253j
		inc	esi
		inc	edi
		dec	ecx
		jnz	short loc_10006AC9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006B40:				; CODE XREF: sub_1000687D+24Aj
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10006B50
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006B50:				; CODE XREF: sub_1000687D+2C8j
		movzx	eax, al
		mov	eax, [ebx+eax*4]

loc_10006B56:				; CODE XREF: sub_1000687D+325j
					; sub_1000687D+32Fj
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10006BAA
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		shr	eax, 13h
		cmp	al, 1Fh
		jz	short loc_10006B9F
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		push	eax

loc_10006B9F:				; CODE XREF: sub_1000687D+301j
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_10006B56
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10006BAA:				; CODE XREF: sub_1000687D+2E0j
		inc	edi
		dec	ecx
		jnz	short loc_10006B56
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10006BB4:				; CODE XREF: sub_1000687D+1B2j
					; sub_1000687D+217j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10006A10

loc_10006BF8:				; CODE XREF: sub_1000687D+188j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10006A10

loc_10006C2E:				; CODE XREF: sub_1000687D+D4j
					; sub_1000687D+FEj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_1000687D	endp


; =============== S U B	R O U T	I N E =======================================


sub_10006C48	proc near		; DATA XREF: CADraw_Init+168o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10006D02
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10006FC8
		mov	ecx, edx

loc_10006CFC:				; CODE XREF: sub_10006C48+B8j
		lodsw
		add	esi, eax
		loop	loc_10006CFC

loc_10006D02:				; CODE XREF: sub_10006C48+9Ej
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10006D24
		sub	dword_1000E09A,	edx
		jle	loc_10006FC8

loc_10006D24:				; CODE XREF: sub_10006C48+CEj
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10006E3A
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10006D8A
		mov	dword_1000E06C,	offset loc_10006E46

loc_10006D8A:				; CODE XREF: sub_10006C48+136j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10006DA2
		xor	eax, eax

loc_10006DA2:				; CODE XREF: sub_10006C48+156j
		sub	dword_1000E09A,	eax
		jbe	loc_10006F92
		mov	dword_1000E09E,	eax

loc_10006DB3:				; CODE XREF: sub_10006C48+344j
					; sub_10006C48+37Aj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10006E3A

loc_10006DCC:				; CODE XREF: sub_10006C48+1A7j
					; sub_10006C48+1D0j ...
		cmp	esi, dword_1000E080
		jnb	loc_10006F4E
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10006E07
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006DCC
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_10006E55
		or	al, 40h
		jmp	short loc_10006E55
; ---------------------------------------------------------------------------

loc_10006E07:				; CODE XREF: sub_10006C48+195j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_10006E1C
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006DCC
		jmp	short loc_10006E3A
; ---------------------------------------------------------------------------

loc_10006E1C:				; CODE XREF: sub_10006C48+1C6j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10006DCC
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10006E55
; ---------------------------------------------------------------------------

loc_10006E3A:				; CODE XREF: sub_10006C48+182j
					; sub_10006C48+1D2j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10006F4E

loc_10006E46:				; DATA XREF: sub_10006C48+138o
		cmp	esi, dword_1000E080
		jnb	loc_10006F4E
		mov	al, [esi]
		inc	esi

loc_10006E55:				; CODE XREF: sub_10006C48+1B9j
					; sub_10006C48+1BDj ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10006E70
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10006E70:				; CODE XREF: sub_10006C48+21Aj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	loc_10006F10
		jnz	short loc_10006EC0

loc_10006E7F:				; CODE XREF: sub_10006C48+252j
					; sub_10006C48+26Bj
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10006EB0
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10006E7F
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006EB0:				; CODE XREF: sub_10006C48+23Ej
		inc	esi
		inc	edi
		dec	ecx
		jnz	short loc_10006E7F
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006EC0:				; CODE XREF: sub_10006C48+235j
					; sub_10006C48+2ADj ...
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10006EFD
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10006EC0
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10006EFD:				; CODE XREF: sub_10006C48+27Fj
		inc	esi
		inc	edi
		dec	ecx
		jnz	short loc_10006EC0
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006F10:				; CODE XREF: sub_10006C48+22Fj
		jnp	short loc_10006F20
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10006F20:				; CODE XREF: sub_10006C48:loc_10006F10j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_10006F29:				; CODE XREF: sub_10006C48+2F4j
					; sub_10006C48+2FEj
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10006F44
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10006F29
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10006F44:				; CODE XREF: sub_10006C48+2E8j
		inc	edi
		dec	ecx
		jnz	short loc_10006F29
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10006F4E:				; CODE XREF: sub_10006C48+18Aj
					; sub_10006C48+1F8j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10006DB3

loc_10006F92:				; CODE XREF: sub_10006C48+160j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10006DB3

loc_10006FC8:				; CODE XREF: sub_10006C48+ACj
					; sub_10006C48+D6j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10006C48	endp


; =============== S U B	R O U T	I N E =======================================


sub_10006FE2	proc near		; DATA XREF: CADraw_Init+172o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		mov	eax, [esp+arg_4]
		mov	dword_1000E054,	eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_100070AB
		mov	[esp+arg_4], eax
		neg	edx
		add	dword_1000E054,	edx
		sub	dword_1000E09A,	edx
		jle	loc_10007398
		mov	ecx, edx

loc_100070A5:				; CODE XREF: sub_10006FE2+C7j
		lodsw
		add	esi, eax
		loop	loc_100070A5

loc_100070AB:				; CODE XREF: sub_10006FE2+A7j
		and	dword_1000E054,	1
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_100070D4
		sub	dword_1000E09A,	edx
		jle	loc_10007398

loc_100070D4:				; CODE XREF: sub_10006FE2+E4j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_100071F1
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_1000713A
		mov	dword_1000E06C,	offset loc_100071FD

loc_1000713A:				; CODE XREF: sub_10006FE2+14Cj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10007152
		xor	eax, eax

loc_10007152:				; CODE XREF: sub_10006FE2+16Cj
		sub	dword_1000E09A,	eax
		jbe	loc_10007362
		mov	dword_1000E09E,	eax

loc_10007163:				; CODE XREF: sub_10006FE2+37Aj
					; sub_10006FE2+3B0j
		xor	dword_1000E054,	1
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_100071F1

loc_10007183:				; CODE XREF: sub_10006FE2+1C4j
					; sub_10006FE2+1EDj ...
		cmp	esi, dword_1000E080
		jnb	loc_1000731E
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_100071BE
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007183
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_1000720C
		or	al, 40h
		jmp	short loc_1000720C
; ---------------------------------------------------------------------------

loc_100071BE:				; CODE XREF: sub_10006FE2+1B2j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_100071D3
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007183
		jmp	short loc_100071F1
; ---------------------------------------------------------------------------

loc_100071D3:				; CODE XREF: sub_10006FE2+1E3j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007183
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_1000720C
; ---------------------------------------------------------------------------

loc_100071F1:				; CODE XREF: sub_10006FE2+19Fj
					; sub_10006FE2+1EFj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_1000731E

loc_100071FD:				; DATA XREF: sub_10006FE2+14Eo
		cmp	esi, dword_1000E080
		jnb	loc_1000731E
		mov	al, [esi]
		inc	esi

loc_1000720C:				; CODE XREF: sub_10006FE2+1D6j
					; sub_10006FE2+1DAj ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10007220
		mov	eax, dword_1000E060

loc_10007220:				; CODE XREF: sub_10006FE2+237j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	loc_100072D0
		jnz	short loc_10007270

loc_1000722F:				; CODE XREF: sub_10006FE2+276j
					; sub_10006FE2+281j
		mov	eax, dword_1000E054
		xor	eax, edi
		test	eax, 1
		jnz	short loc_10007246
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10007260

loc_10007246:				; CODE XREF: sub_10006FE2+259j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_1000722F
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10007260:				; CODE XREF: sub_10006FE2+262j
		inc	esi
		inc	edi
		dec	ecx
		jnz	short loc_1000722F
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10007270:				; CODE XREF: sub_10006FE2+24Bj
					; sub_10006FE2+2D1j ...
		mov	eax, dword_1000E054
		xor	eax, edi
		test	eax, 1
		jnz	short loc_10007287
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_100072BB

loc_10007287:				; CODE XREF: sub_10006FE2+29Aj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10007270
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100072BB:				; CODE XREF: sub_10006FE2+2A3j
		inc	esi
		inc	edi
		dec	ecx
		jnz	short loc_10007270
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100072D0:				; CODE XREF: sub_10006FE2+245j
		jnp	short loc_100072E0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100072E0:				; CODE XREF: sub_10006FE2:loc_100072D0j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_100072E9:				; CODE XREF: sub_10006FE2+32Aj
					; sub_10006FE2+334j
		mov	edx, dword_1000E054
		xor	edx, edi
		test	edx, 1
		jnz	short loc_10007302
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10007314

loc_10007302:				; CODE XREF: sub_10006FE2+315j
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100072E9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10007314:				; CODE XREF: sub_10006FE2+31Ej
		inc	edi
		dec	ecx
		jnz	short loc_100072E9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_1000731E:				; CODE XREF: sub_10006FE2+1A7j
					; sub_10006FE2+215j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10007163

loc_10007362:				; CODE XREF: sub_10006FE2+176j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10007163

loc_10007398:				; CODE XREF: sub_10006FE2+BBj
					; sub_10006FE2+ECj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10006FE2	endp


; =============== S U B	R O U T	I N E =======================================


sub_100073B2	proc near		; DATA XREF: CADraw_Init+186o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, 0
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_C]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10007456
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_1000765E
		mov	ecx, edx

loc_10007450:				; CODE XREF: sub_100073B2+A2j
		lodsw
		add	esi, eax
		loop	loc_10007450

loc_10007456:				; CODE XREF: sub_100073B2+88j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10007478
		sub	dword_1000E09A,	edx
		jle	loc_1000765E

loc_10007478:				; CODE XREF: sub_100073B2+B8j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10007556
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100074DE
		mov	dword_1000E06C,	offset loc_10007562

loc_100074DE:				; CODE XREF: sub_100073B2+120j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100074F6
		xor	eax, eax

loc_100074F6:				; CODE XREF: sub_100073B2+140j
		sub	dword_1000E09A,	eax
		jbe	loc_10007628
		mov	dword_1000E09E,	eax

loc_10007507:				; CODE XREF: sub_100073B2+270j
					; sub_100073B2+2A6j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10007556

loc_1000751D:				; CODE XREF: sub_100073B2+185j
					; sub_100073B2+1A2j
		cmp	esi, ebp
		jnb	loc_100075E8
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10007547
		movzx	ecx, al
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000751D
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		mov	al, cl
		jmp	short loc_1000756D
; ---------------------------------------------------------------------------

loc_10007547:				; CODE XREF: sub_100073B2+178j
		and	al, 7Fh
		movzx	ecx, al
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000751D

loc_10007556:				; CODE XREF: sub_100073B2+169j
					; DATA XREF: sub_100073B2+108o
		cmp	edi, dword_1000E060
		jnb	loc_100075E8

loc_10007562:				; DATA XREF: sub_100073B2+122o
		cmp	esi, ebp
		jnb	loc_100075E8
		mov	al, [esi]
		inc	esi

loc_1000756D:				; CODE XREF: sub_100073B2+193j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10007590
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10007590:				; CODE XREF: sub_100073B2+1C8j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_100075E0

loc_10007599:				; CODE XREF: sub_100073B2+21Fj
		mov	eax, ds:12CA48h[edi*2]
		mov	edx, ds:0[edi*2]
		test	eax, 8007h
		jnz	short loc_100075CF
		or	eax, [esp+arg_8]
		and	edx, dword_1000E468
		shr	edx, 1
		add	edx, dword_1000E480
		mov	ds:12CA48h[edi*2], eax
		mov	ds:0[edi*2], dx

loc_100075CF:				; CODE XREF: sub_100073B2+1FAj
		inc	edi
		dec	ecx
		jnz	short loc_10007599
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100075E0:				; CODE XREF: sub_100073B2+1E5j
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100075E8:				; CODE XREF: sub_100073B2+16Dj
					; sub_100073B2+1AAj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10007507

loc_10007628:				; CODE XREF: sub_100073B2+14Aj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10007507

loc_1000765E:				; CODE XREF: sub_100073B2+96j
					; sub_100073B2+C0j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_100073B2	endp


; =============== S U B	R O U T	I N E =======================================


sub_10007678	proc near		; DATA XREF: CADraw_Init+10Eo

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, 0
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+arg_C]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000771C
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_1000791E
		mov	ecx, edx

loc_10007716:				; CODE XREF: sub_10007678+A2j
		lodsw
		add	esi, eax
		loop	loc_10007716

loc_1000771C:				; CODE XREF: sub_10007678+88j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_1000773E
		sub	dword_1000E09A,	edx
		jle	loc_1000791E

loc_1000773E:				; CODE XREF: sub_10007678+B8j
		mov	edi, offset g_aBufferSecondary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_1000781C
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100077A4
		mov	dword_1000E06C,	offset loc_10007828

loc_100077A4:				; CODE XREF: sub_10007678+120j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100077BC
		xor	eax, eax

loc_100077BC:				; CODE XREF: sub_10007678+140j
		sub	dword_1000E09A,	eax
		jbe	loc_100078E8
		mov	dword_1000E09E,	eax

loc_100077CD:				; CODE XREF: sub_10007678+26Aj
					; sub_10007678+2A0j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_1000781C

loc_100077E3:				; CODE XREF: sub_10007678+185j
					; sub_10007678+1A2j
		cmp	esi, ebp
		jnb	loc_100078A8
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_1000780D
		movzx	ecx, al
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100077E3
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		mov	al, cl
		jmp	short loc_1000782F
; ---------------------------------------------------------------------------

loc_1000780D:				; CODE XREF: sub_10007678+178j
		and	al, 7Fh
		movzx	ecx, al
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100077E3

loc_1000781C:				; CODE XREF: sub_10007678+169j
					; DATA XREF: sub_10007678+108o
		cmp	edi, dword_1000E060
		jnb	loc_100078A8

loc_10007828:				; DATA XREF: sub_10007678+122o
		cmp	esi, ebp
		jnb	short loc_100078A8
		mov	al, [esi]
		inc	esi

loc_1000782F:				; CODE XREF: sub_10007678+193j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10007850
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10007850:				; CODE XREF: sub_10007678+1C4j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_100078A0

loc_10007859:				; CODE XREF: sub_10007678+219j
		mov	eax, ds:96524h[edi*2]
		mov	edx, ds:0[edi*2]
		test	eax, 8007h
		jnz	short loc_1000788F
		or	eax, [esp+arg_8]
		and	edx, dword_1000E468
		shr	edx, 1
		add	edx, dword_1000E480
		mov	ds:96524h[edi*2], eax
		mov	ds:0[edi*2], dx

loc_1000788F:				; CODE XREF: sub_10007678+1F4j
		inc	edi
		dec	ecx
		jnz	short loc_10007859
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100078A0:				; CODE XREF: sub_10007678+1DFj
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100078A8:				; CODE XREF: sub_10007678+16Dj
					; sub_10007678+1AAj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_100077CD

loc_100078E8:				; CODE XREF: sub_10007678+14Aj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_100077CD

loc_1000791E:				; CODE XREF: sub_10007678+96j
					; sub_10007678+C0j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10007678	endp


; =============== S U B	R O U T	I N E =======================================


sub_10007938	proc near		; DATA XREF: CADraw_Init+19Ao

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h

		enter	0, 0
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E084,	eax
		mov	edx, eax
		shl	eax, 1
		or	eax, edx
		mov	dword_1000E088,	eax
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, 0
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_C]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10007A1B
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10007CF2
		mov	ecx, edx

loc_10007A15:				; CODE XREF: sub_10007938+E1j
		lodsw
		add	esi, eax
		loop	loc_10007A15

loc_10007A1B:				; CODE XREF: sub_10007938+C7j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10007A3D
		sub	dword_1000E09A,	edx
		jle	loc_10007CF2

loc_10007A3D:				; CODE XREF: sub_10007938+F7j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10007B4A
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10007AA3
		mov	dword_1000E06C,	offset loc_10007B56

loc_10007AA3:				; CODE XREF: sub_10007938+15Fj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10007ABB
		xor	eax, eax

loc_10007ABB:				; CODE XREF: sub_10007938+17Fj
		sub	dword_1000E09A,	eax
		jbe	loc_10007CBC
		mov	dword_1000E09E,	eax

loc_10007ACC:				; CODE XREF: sub_10007938+37Ej
					; sub_10007938+3B4j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10007B4A

loc_10007AE5:				; CODE XREF: sub_10007938+1CDj
					; sub_10007938+1F3j ...
		cmp	esi, dword_1000E080
		jnb	loc_10007C78
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10007B17
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007AE5
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10007B65
; ---------------------------------------------------------------------------

loc_10007B17:				; CODE XREF: sub_10007938+1BEj
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10007B2F
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007AE5
		jmp	short loc_10007B4A
; ---------------------------------------------------------------------------

loc_10007B2F:				; CODE XREF: sub_10007938+1E9j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007AE5
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10007B65
; ---------------------------------------------------------------------------

loc_10007B4A:				; CODE XREF: sub_10007938+1ABj
					; sub_10007938+1F5j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10007C78

loc_10007B56:				; DATA XREF: sub_10007938+161o
		cmp	esi, dword_1000E080
		jnb	loc_10007C78
		mov	al, [esi]
		inc	esi

loc_10007B65:				; CODE XREF: sub_10007938+1DDj
					; sub_10007938+210j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10007B80
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10007B80:				; CODE XREF: sub_10007938+23Aj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10007C00

loc_10007B89:				; CODE XREF: sub_10007938+2A9j
					; sub_10007938+2BBj
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10007BF0
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		push	eax
		movzx	eax, word ptr ds:0[edi*2]
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		and	edx, dword_1000E084
		pop	eax
		push	eax
		and	al, 1Fh
		mul	edx
		mov	edx, dword_1000E084
		shr	eax, 4
		and	eax, dword_1000E088
		sub	edx, eax
		shr	edx, 5
		or	eax, edx
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	eax, edx
		mov	ds:0[edi*2], ax
		inc	edi
		pop	eax
		dec	ecx
		jnz	short loc_10007B89
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10007BF0:				; CODE XREF: sub_10007938+258j
		inc	esi
		inc	edi
		dec	ecx
		jnz	short loc_10007B89
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10007C00:				; CODE XREF: sub_10007938+24Fj
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10007C10
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10007C10:				; CODE XREF: sub_10007938+2CDj
		movzx	eax, al

loc_10007C13:				; CODE XREF: sub_10007938+32Ej
					; sub_10007938+338j
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10007C6E
		push	eax
		movzx	eax, word ptr ds:0[edi*2]
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		and	edx, dword_1000E084
		pop	eax
		push	eax
		and	al, 1Fh
		mul	edx
		mov	edx, dword_1000E084
		shr	eax, 4
		and	eax, dword_1000E088
		sub	edx, eax
		shr	edx, 5
		or	eax, edx
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	eax, edx
		mov	ds:0[edi*2], ax
		inc	edi
		pop	eax
		dec	ecx
		jnz	short loc_10007C13
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10007C6E:				; CODE XREF: sub_10007938+2E2j
		inc	edi
		dec	ecx
		jnz	short loc_10007C13
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10007C78:				; CODE XREF: sub_10007938+1B3j
					; sub_10007938+218j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10007ACC

loc_10007CBC:				; CODE XREF: sub_10007938+189j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10007ACC

loc_10007CF2:				; CODE XREF: sub_10007938+D5j
					; sub_10007938+FFj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10007938	endp


; =============== S U B	R O U T	I N E =======================================


sub_10007D0C	proc near		; DATA XREF: CADraw_Init+190o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= word ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E084,	eax
		mov	edx, eax
		shl	eax, 1
		or	eax, edx
		mov	dword_1000E088,	eax
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+arg_C]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	bp, [esp+arg_8]
		add	bp, 440h
		shl	bp, 5
		mov	ax, bp
		shl	ebp, 10h
		mov	bp, ax
		mov	esi, [esp+arg_10]
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10007DEE
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_100080F9
		mov	ecx, edx

loc_10007DE8:				; CODE XREF: sub_10007D0C+E0j
		lodsw
		add	esi, eax
		loop	loc_10007DE8

loc_10007DEE:				; CODE XREF: sub_10007D0C+C6j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10007E10
		sub	dword_1000E09A,	edx
		jle	loc_100080F9

loc_10007E10:				; CODE XREF: sub_10007D0C+F6j
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10007F1D
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10007E76
		mov	dword_1000E06C,	offset loc_10007F29

loc_10007E76:				; CODE XREF: sub_10007D0C+15Ej
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10007E8E
		xor	eax, eax

loc_10007E8E:				; CODE XREF: sub_10007D0C+17Ej
		sub	dword_1000E09A,	eax
		jbe	loc_100080C3
		mov	dword_1000E09E,	eax

loc_10007E9F:				; CODE XREF: sub_10007D0C+3B1j
					; sub_10007D0C+3E7j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	dword_1000E080,	eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10007F1D

loc_10007EB8:				; CODE XREF: sub_10007D0C+1CCj
					; sub_10007D0C+1F2j ...
		cmp	esi, dword_1000E080
		jnb	loc_1000807F
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10007EEA
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007EB8
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10007F38
; ---------------------------------------------------------------------------

loc_10007EEA:				; CODE XREF: sub_10007D0C+1BDj
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10007F02
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007EB8
		jmp	short loc_10007F1D
; ---------------------------------------------------------------------------

loc_10007F02:				; CODE XREF: sub_10007D0C+1E8j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10007EB8
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10007F38
; ---------------------------------------------------------------------------

loc_10007F1D:				; CODE XREF: sub_10007D0C+1AAj
					; sub_10007D0C+1F4j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_1000807F

loc_10007F29:				; DATA XREF: sub_10007D0C+160o
		cmp	esi, dword_1000E080
		jnb	loc_1000807F
		mov	al, [esi]
		inc	esi

loc_10007F38:				; CODE XREF: sub_10007D0C+1DCj
					; sub_10007D0C+20Fj
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10007F50
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop

loc_10007F50:				; CODE XREF: sub_10007D0C+239j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	loc_10007FF0

loc_10007F5D:				; CODE XREF: sub_10007D0C+2C0j
					; sub_10007D0C+2D7j
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10007FE0
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		push	eax
		movzx	eax, ax
		movzx	edx, word ptr ds:0[edi*2]
		add	edx, eax
		xor	ax, ds:0[edi*2]
		xor	eax, edx
		shr	eax, 1
		and	ax, word ptr dword_1000E464
		sub	edx, eax
		test	word ptr g_dwRBitDoubleMask, ax
		jz	short loc_10007FA1
		or	dx, word ptr g_dwRBitDoubleMask

loc_10007FA1:				; CODE XREF: sub_10007D0C+28Cj
		test	word ptr g_dwGBitDoubleMask, ax
		jz	short loc_10007FB1
		or	dx, word ptr g_dwGBitDoubleMask

loc_10007FB1:				; CODE XREF: sub_10007D0C+29Cj
		test	word ptr g_dwBBitDoubleMask, ax
		jz	short loc_10007FC1
		or	dx, word ptr g_dwBBitDoubleMask

loc_10007FC1:				; CODE XREF: sub_10007D0C+2ACj
		mov	ds:0[edi*2], dx
		inc	edi
		pop	eax
		dec	ecx
		jnz	short loc_10007F5D
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10007FE0:				; CODE XREF: sub_10007D0C+258j
		inc	esi
		inc	edi
		dec	ecx
		jnz	loc_10007F5D
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10007FF0:				; CODE XREF: sub_10007D0C+24Bj
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10008000
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10008000:				; CODE XREF: sub_10007D0C+2E9j
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_10008006:				; CODE XREF: sub_10007D0C+361j
					; sub_10007D0C+36Bj
		cmp	ds:12CA46h[edi*2], ebp
		jnb	short loc_10008075
		push	eax
		movzx	eax, ax
		movzx	edx, word ptr ds:0[edi*2]
		add	edx, eax
		xor	ax, ds:0[edi*2]
		xor	eax, edx
		shr	eax, 1
		and	ax, word ptr dword_1000E464
		sub	edx, eax
		test	word ptr g_dwRBitDoubleMask, ax
		jz	short loc_10008042
		or	dx, word ptr g_dwRBitDoubleMask

loc_10008042:				; CODE XREF: sub_10007D0C+32Dj
		test	word ptr g_dwGBitDoubleMask, ax
		jz	short loc_10008052
		or	dx, word ptr g_dwGBitDoubleMask

loc_10008052:				; CODE XREF: sub_10007D0C+33Dj
		test	word ptr g_dwBBitDoubleMask, ax
		jz	short loc_10008062
		or	dx, word ptr g_dwBBitDoubleMask

loc_10008062:				; CODE XREF: sub_10007D0C+34Dj
		mov	ds:0[edi*2], dx
		inc	edi
		pop	eax
		dec	ecx
		jnz	short loc_10008006
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10008075:				; CODE XREF: sub_10007D0C+301j
		inc	edi
		dec	ecx
		jnz	short loc_10008006
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_1000807F:				; CODE XREF: sub_10007D0C+1B2j
					; sub_10007D0C+217j ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, dword_1000E080
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10007E9F

loc_100080C3:				; CODE XREF: sub_10007D0C+188j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10007E9F

loc_100080F9:				; CODE XREF: sub_10007D0C+D4j
					; sub_10007D0C+FEj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
sub_10007D0C	endp

; ---------------------------------------------------------------------------
		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+10h]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+14h]
		movsx	eax, word ptr [esi]
		add	[esp+8], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+0Ch], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+0Ch]
		sub	edx, eax
		jge	short loc_100081B6
		mov	[esp+0Ch], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10008469
		mov	ecx, edx

loc_100081B0:				; CODE XREF: .text:100081B4j
		lodsw
		add	esi, eax
		loop	loc_100081B0

loc_100081B6:				; CODE XREF: .text:1000819Aj
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+0Ch]
		sub	edx, eax
		jle	short loc_100081D8
		sub	dword_1000E09A,	edx
		jle	loc_10008469

loc_100081D8:				; CODE XREF: .text:100081CAj
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	dword ptr [esp+0Ch]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+8]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_100082E7
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_1000823E
		mov	dword_1000E06C,	offset loc_100082F3

loc_1000823E:				; CODE XREF: .text:10008232j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+0Ch]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_10008256
		xor	eax, eax

loc_10008256:				; CODE XREF: .text:10008252j
		sub	dword_1000E09A,	eax
		jbe	loc_10008433
		mov	dword_1000E09E,	eax

loc_10008267:				; CODE XREF: .text:1000842Dj
					; .text:10008463j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_100082E7

loc_1000827D:				; CODE XREF: .text:1000829Cj
					; .text:100082C5j ...
		cmp	esi, ebp
		jnb	loc_100083F3
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_100082B4
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000827D
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_100082FE
		or	al, 40h
		jmp	short loc_100082FE
; ---------------------------------------------------------------------------

loc_100082B4:				; CODE XREF: .text:1000828Aj
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_100082C9
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000827D
		jmp	short loc_100082E7
; ---------------------------------------------------------------------------

loc_100082C9:				; CODE XREF: .text:100082BBj
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000827D
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_100082FE
; ---------------------------------------------------------------------------

loc_100082E7:				; CODE XREF: .text:1000827Bj
					; .text:100082C7j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_100083F3

loc_100082F3:				; DATA XREF: .text:10008234o
		cmp	esi, ebp
		jnb	loc_100083F3
		mov	al, [esi]
		inc	esi

loc_100082FE:				; CODE XREF: .text:100082AEj
					; .text:100082B2j ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10008320
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10008320:				; CODE XREF: .text:1000830Bj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	loc_100083B0
		jnz	short loc_10008370

loc_1000832F:				; CODE XREF: .text:1000835Cj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [esp+10h]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_1000832F
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10008370:				; CODE XREF: .text:1000832Dj
					; .text:1000839Dj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [esp+10h]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10008370
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100083B0:				; CODE XREF: .text:10008327j
		jnp	short loc_100083C0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100083C0:				; CODE XREF: .text:loc_100083B0j
		mov	al, [esi]
		inc	esi

loc_100083C3:				; CODE XREF: .text:100083EBj
		mov	eax, [esp+10h]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100083C3
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_100083F3:				; CODE XREF: .text:1000827Fj
					; .text:100082EDj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10008267

loc_10008433:				; CODE XREF: .text:1000825Cj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10008267

loc_10008469:				; CODE XREF: .text:100081A8j
					; .text:100081D2j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
; ---------------------------------------------------------------------------
		enter	0, 0
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, [esp+10h]
		mov	ax, word ptr g_rcScreenRect.left
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr g_rcScreenRect.right
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr g_rcScreenRect.top
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr g_rcScreenRect.bottom
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, [esp+14h]
		movsx	eax, word ptr [esi]
		add	[esp+8], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+0Ch], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+0Ch]
		sub	edx, eax
		jge	short loc_10008526
		mov	[esp+0Ch], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10008787
		mov	ecx, edx

loc_10008520:				; CODE XREF: .text:10008524j
		lodsw
		add	esi, eax
		loop	loc_10008520

loc_10008526:				; CODE XREF: .text:1000850Aj
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+0Ch]
		sub	edx, eax
		jle	short loc_10008548
		sub	dword_1000E09A,	edx
		jle	loc_10008787

loc_10008548:				; CODE XREF: .text:1000853Aj
		mov	edi, offset g_aBufferPrimary16
		add	edi, g_uBufferOrigin16
		shr	edi, 1
		mov	eax, g_dwWidthInBytes
		mul	dword ptr [esp+0Ch]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+8]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10008634
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100085AE
		mov	dword_1000E06C,	offset loc_10008640

loc_100085AE:				; CODE XREF: .text:100085A2j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+0Ch]
		sub	eax, g_dwSurfaceHeight
		jnb	short loc_100085C6
		xor	eax, eax

loc_100085C6:				; CODE XREF: .text:100085C2j
		sub	dword_1000E09A,	eax
		jbe	loc_10008751
		mov	dword_1000E09E,	eax

loc_100085D7:				; CODE XREF: .text:1000874Bj
					; .text:10008781j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10008634

loc_100085ED:				; CODE XREF: .text:10008605j
					; .text:10008618j ...
		cmp	esi, ebp
		jnb	loc_10008711
		mov	al, [esi]
		inc	esi
		lodsw
		or	al, al
		js	short loc_10008609
		inc	edi
		cmp	edi, dword_1000E05C
		jbe	short loc_100085ED
		jmp	short loc_10008634
; ---------------------------------------------------------------------------

loc_10008609:				; CODE XREF: .text:100085FCj
		movzx	ecx, ah
		add	edi, ecx
		test	al, 1Fh
		jnz	short loc_1000861C
		cmp	edi, dword_1000E05C
		jbe	short loc_100085ED
		jmp	short loc_10008634
; ---------------------------------------------------------------------------

loc_1000861C:				; CODE XREF: .text:10008610j
		add	esi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_100085ED
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		jmp	short loc_100086A6
; ---------------------------------------------------------------------------

loc_10008634:				; CODE XREF: .text:100085EBj
					; .text:10008607j ...
		cmp	edi, dword_1000E060
		jnb	loc_10008711

loc_10008640:				; DATA XREF: .text:100085A4o
		cmp	esi, ebp
		jnb	loc_10008711
		lodsw
		or	al, al
		js	short loc_1000869F
		test	al, 1Fh
		jz	short loc_10008698
		movzx	ecx, word ptr ds:0[edi*2]
		mov	edx, ecx
		shl	ecx, 10h
		or	edx, ecx
		mov	cx, ax
		and	eax, 1Fh
		and	edx, dword_1000E084
		mul	edx
		shr	eax, 5
		mov	dl, ch
		mov	dx, [ebx+edx*2]
		shr	ecx, 10h
		sub	cx, ax
		shr	eax, 10h
		sub	cx, ax
		add	cx, dx
		mov	eax, ecx
		mov	ds:0[edi*2], ax
		inc	edi
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10008698:				; CODE XREF: .text:10008650j
		inc	edi
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_1000869F:				; CODE XREF: .text:1000864Cj
		movzx	ecx, ah
		and	al, 7Fh
		jz	short loc_10008707

loc_100086A6:				; CODE XREF: .text:10008632j
		add	ecx, edi
		cmp	ecx, dword_1000E060
		jnb	short loc_100086B6
		mov	ecx, dword_1000E060

loc_100086B6:				; CODE XREF: .text:100086AEj
		sub	ecx, edi

loc_100086B8:				; CODE XREF: .text:100086FFj
		push	eax
		mov	ah, [esi]
		inc	esi
		movzx	ecx, word ptr ds:0[edi*2]
		mov	edx, ecx
		shl	ecx, 10h
		or	edx, ecx
		mov	cx, ax
		and	eax, 1Fh
		and	edx, dword_1000E084
		mul	edx
		shr	eax, 5
		mov	dl, ch
		mov	dx, [ebx+edx*2]
		shr	ecx, 10h
		sub	cx, ax
		shr	eax, 10h
		sub	cx, ax
		add	cx, dx
		mov	eax, ecx
		mov	ds:0[edi*2], ax
		inc	edi
		pop	eax
		dec	ah
		jnz	short loc_100086B8
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10008707:				; CODE XREF: .text:100086A4j
		add	esi, ecx
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10008711:				; CODE XREF: .text:100085EFj
					; .text:1000863Aj ...
		mov	edi, dword_1000E07C
		mov	eax, g_dwWidthInBytes
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_100085D7

loc_10008751:				; CODE XREF: .text:100085CCj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_100085D7

loc_10008787:				; CODE XREF: .text:10008518j
					; .text:10008542j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn

; =============== S U B	R O U T	I N E =======================================


x_sub_100087A1	proc near		; CODE XREF: .text:1000883Cp
					; .text:10008841p ...
		mov	eax, edx
		and	ax, word ptr g_dwRBitDoubleMask
		add	dword_1000E0AA,	eax
		mov	eax, edx
		and	ax, word ptr g_dwGBitDoubleMask
		add	dword_1000E0AE,	eax
		mov	eax, edx
		and	ax, word ptr g_dwBBitDoubleMask
		add	dword_1000E0B2,	eax
		retn
x_sub_100087A1	endp

; ---------------------------------------------------------------------------
		enter	0, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		push	ebp
		movzx	eax, word ptr [esi+6]
		mov	dword_1000E0A6,	eax
		add	esi, 9

__cfltcvt_init:
		mov	dword_1000E0A2,	0
		mov	dword_1000E0AA,	0
		mov	dword_1000E0AE,	0
		mov	dword_1000E0B2,	0

loc_10008811:				; CODE XREF: .text:10008887j
		movzx	ebp, word ptr [esi]
		add	esi, 2
		add	ebp, esi

loc_10008819:				; CODE XREF: .text:10008848j
					; .text:1000885Cj ...
		cmp	esi, ebp
		jnb	short loc_10008881
		lodsb
		mov	cl, al
		and	ecx, 3Fh
		or	al, al
		js	short loc_1000885E
		test	al, 40h
		jnz	short loc_1000884A
		add	dword_1000E0A2,	ecx
		add	dword_1000E0A2,	ecx

loc_10008837:				; CODE XREF: .text:10008846j
		lodsb
		movzx	edx, word ptr [ebx+eax*2]
		call	x_sub_100087A1
		call	x_sub_100087A1
		loop	loc_10008837
		jmp	short loc_10008819
; ---------------------------------------------------------------------------

loc_1000884A:				; CODE XREF: .text:10008829j
		add	dword_1000E0A2,	ecx

loc_10008850:				; CODE XREF: .text:1000885Aj
		lodsb
		movzx	edx, word ptr [ebx+eax*2]
		call	x_sub_100087A1
		loop	loc_10008850
		jmp	short loc_10008819
; ---------------------------------------------------------------------------

loc_1000885E:				; CODE XREF: .text:10008825j
		test	al, 40h
		jnz	short loc_10008819
		lodsb
		add	dword_1000E0A2,	ecx
		add	dword_1000E0A2,	ecx
		movzx	edx, word ptr [ebx+eax*2]

loc_10008873:				; CODE XREF: .text:1000887Dj
		call	x_sub_100087A1
		call	x_sub_100087A1
		loop	loc_10008873
		jmp	short loc_10008819
; ---------------------------------------------------------------------------

loc_10008881:				; CODE XREF: .text:1000881Bj
		dec	dword_1000E0A6
		jnz	short loc_10008811
		xor	edx, edx
		xor	ecx, ecx
		mov	eax, dword_1000E0AA
		or	eax, eax
		jz	short loc_100088D9
		div	dword_1000E0A2
		and	ax, word ptr g_dwRBitDoubleMask
		mov	ecx, eax
		xor	edx, edx
		mov	eax, dword_1000E0AE
		div	dword_1000E0A2
		and	ax, word ptr g_dwGBitDoubleMask
		or	ecx, eax
		xor	edx, edx
		mov	eax, dword_1000E0B2
		div	dword_1000E0A2
		and	ax, word ptr g_dwBBitDoubleMask
		or	eax, ecx
		mov	ecx, dword_1000E0A2
		shr	ecx, 1

loc_100088D9:				; CODE XREF: .text:10008894j
		pop	ebp
		mov	edx, [ebp+10h]
		mov	[edx], eax
		mov	edx, [ebp+14h]
		mov	[edx], ecx
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn

; =============== S U B	R O U T	I N E =======================================


x_sub_100088E9_DrawStruct proc near	; DATA XREF: CADraw_Init+244o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	eax, [ebp+arg_10]
		mov	edx, [eax]
		mov	dword_1000E0B6,	edx
		mov	edx, [eax+4]
		shl	edx, 1
		mov	dword_1000E0BA,	edx
		mov	edx, [eax+8]
		mov	dword_1000E0BE,	edx
		mov	edx, [eax+0Ch]
		mov	dword_1000E0C2,	edx
		mov	edx, [eax+10h]
		mov	dword_1000E0C6,	edx
		mov	edx, [eax+14h]
		mov	dword_1000E0CA,	edx
		mov	edx, [ebp+arg_C]
		mov	dword_1000E0CE,	edx
		mov	edx, [ebp+arg_8]
		mov	dword_1000E0D2,	edx
		mov	al, [edx+8]
		cmp	al, 0A1h
		jz	short loc_10008958
		cmp	al, 0A2h
		jz	loc_10008FB6
		cmp	al, 0A3h
		jz	loc_100092EB
		cmp	al, 0A9h
		jz	loc_10008C38

loc_10008958:				; CODE XREF: x_sub_100088E9_DrawStruct+55j
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_100089FB
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10008C19
		mov	ecx, edx

loc_100089F5:				; CODE XREF: x_sub_100088E9_DrawStruct+110j
		lodsw
		add	esi, eax
		loop	loc_100089F5

loc_100089FB:				; CODE XREF: x_sub_100088E9_DrawStruct+F6j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10008A1D
		sub	dword_1000E09A,	edx
		jle	loc_10008C19

loc_10008A1D:				; CODE XREF: x_sub_100088E9_DrawStruct+126j
		mov	edi, dword_1000E0B6
		add	edi, 0
		shr	edi, 1
		mov	eax, dword_1000E0BA
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10008B20
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10008A81
		mov	dword_1000E06C,	offset loc_10008B28

loc_10008A81:				; CODE XREF: x_sub_100088E9_DrawStruct+18Cj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, 1E0h
		jnb	short loc_10008A98
		xor	eax, eax

loc_10008A98:				; CODE XREF: x_sub_100088E9_DrawStruct+1ABj
		sub	dword_1000E09A,	eax
		jbe	loc_10008BE3
		mov	dword_1000E09E,	eax

loc_10008AA9:				; CODE XREF: x_sub_100088E9_DrawStruct+2F4j
					; x_sub_100088E9_DrawStruct+32Aj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10008B20

loc_10008ABF:				; CODE XREF: x_sub_100088E9_DrawStruct+1F2j
					; x_sub_100088E9_DrawStruct+218j ...
		cmp	esi, ebp
		jnb	loc_10008BA3
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10008AED
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10008ABF
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10008B2F
; ---------------------------------------------------------------------------

loc_10008AED:				; CODE XREF: x_sub_100088E9_DrawStruct+1E3j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10008B05
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10008ABF
		jmp	short loc_10008B20
; ---------------------------------------------------------------------------

loc_10008B05:				; CODE XREF: x_sub_100088E9_DrawStruct+20Ej
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10008ABF
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10008B2F
; ---------------------------------------------------------------------------

loc_10008B20:				; CODE XREF: x_sub_100088E9_DrawStruct+1D4j
					; x_sub_100088E9_DrawStruct+21Aj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	short loc_10008BA3

loc_10008B28:				; DATA XREF: x_sub_100088E9_DrawStruct+18Eo
		cmp	esi, ebp
		jnb	short loc_10008BA3
		mov	al, [esi]
		inc	esi

loc_10008B2F:				; CODE XREF: x_sub_100088E9_DrawStruct+202j
					; x_sub_100088E9_DrawStruct+235j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10008B50
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10008B50:				; CODE XREF: x_sub_100088E9_DrawStruct+253j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10008B80

loc_10008B59:				; CODE XREF: x_sub_100088E9_DrawStruct+282j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10008B59
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10008B80:				; CODE XREF: x_sub_100088E9_DrawStruct+26Ej
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10008B90
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10008B90:				; CODE XREF: x_sub_100088E9_DrawStruct+29Cj
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10008BA3:				; CODE XREF: x_sub_100088E9_DrawStruct+1D8j
					; x_sub_100088E9_DrawStruct+23Dj ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10008AA9

loc_10008BE3:				; CODE XREF: x_sub_100088E9_DrawStruct+1B5j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10008AA9

loc_10008C19:				; CODE XREF: x_sub_100088E9_DrawStruct+104j
					; x_sub_100088E9_DrawStruct+12Ej
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
; ---------------------------------------------------------------------------
		jmp	x_sub_100095A8_DrawStruct
; ---------------------------------------------------------------------------

loc_10008C38:				; CODE XREF: x_sub_100088E9_DrawStruct+69j
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E084,	eax
		mov	edx, eax
		shl	eax, 1
		or	eax, edx
		mov	dword_1000E088,	eax
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10008D03
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10008F97
		mov	ecx, edx

loc_10008CFD:				; CODE XREF: x_sub_100088E9_DrawStruct+418j
		lodsw
		add	esi, eax
		loop	loc_10008CFD

loc_10008D03:				; CODE XREF: x_sub_100088E9_DrawStruct+3FEj
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_10008D25
		sub	dword_1000E09A,	edx
		jle	loc_10008F97

loc_10008D25:				; CODE XREF: x_sub_100088E9_DrawStruct+42Ej
		mov	edi, dword_1000E0B6
		add	edi, 0
		shr	edi, 1
		mov	eax, dword_1000E0BA
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10008E28
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10008D89
		mov	dword_1000E06C,	offset loc_10008E34

loc_10008D89:				; CODE XREF: x_sub_100088E9_DrawStruct+494j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, 1E0h
		jnb	short loc_10008DA0
		xor	eax, eax

loc_10008DA0:				; CODE XREF: x_sub_100088E9_DrawStruct+4B3j
		sub	dword_1000E09A,	eax
		jbe	loc_10008F61
		mov	dword_1000E09E,	eax

loc_10008DB1:				; CODE XREF: x_sub_100088E9_DrawStruct+672j
					; x_sub_100088E9_DrawStruct+6A8j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10008E28

loc_10008DC7:				; CODE XREF: x_sub_100088E9_DrawStruct+4FAj
					; x_sub_100088E9_DrawStruct+520j ...
		cmp	esi, ebp
		jnb	loc_10008F21
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10008DF5
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10008DC7
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10008E3F
; ---------------------------------------------------------------------------

loc_10008DF5:				; CODE XREF: x_sub_100088E9_DrawStruct+4EBj
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10008E0D
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10008DC7
		jmp	short loc_10008E28
; ---------------------------------------------------------------------------

loc_10008E0D:				; CODE XREF: x_sub_100088E9_DrawStruct+516j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10008DC7
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10008E3F
; ---------------------------------------------------------------------------

loc_10008E28:				; CODE XREF: x_sub_100088E9_DrawStruct+4DCj
					; x_sub_100088E9_DrawStruct+522j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10008F21

loc_10008E34:				; DATA XREF: x_sub_100088E9_DrawStruct+496o
		cmp	esi, ebp
		jnb	loc_10008F21
		mov	al, [esi]
		inc	esi

loc_10008E3F:				; CODE XREF: x_sub_100088E9_DrawStruct+50Aj
					; x_sub_100088E9_DrawStruct+53Dj
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10008E60
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10008E60:				; CODE XREF: x_sub_100088E9_DrawStruct+563j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10008EC0

loc_10008E69:				; CODE XREF: x_sub_100088E9_DrawStruct+5CBj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*4]
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		shr	eax, 13h
		cmp	al, 1Fh
		jz	short loc_10008EB1
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		push	eax

loc_10008EB1:				; CODE XREF: x_sub_100088E9_DrawStruct+5A7j
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_10008E69
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10008EC0:				; CODE XREF: x_sub_100088E9_DrawStruct+57Ej
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10008ED0
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10008ED0:				; CODE XREF: x_sub_100088E9_DrawStruct+5DCj
		movzx	eax, al
		mov	eax, [ebx+eax*4]

loc_10008ED6:				; CODE XREF: x_sub_100088E9_DrawStruct+630j
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		shr	eax, 13h
		cmp	al, 1Fh
		jz	short loc_10008F16
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		push	eax

loc_10008F16:				; CODE XREF: x_sub_100088E9_DrawStruct+60Cj
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_10008ED6
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10008F21:				; CODE XREF: x_sub_100088E9_DrawStruct+4E0j
					; x_sub_100088E9_DrawStruct+545j ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10008DB1

loc_10008F61:				; CODE XREF: x_sub_100088E9_DrawStruct+4BDj
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10008DB1

loc_10008F97:				; CODE XREF: x_sub_100088E9_DrawStruct+40Cj
					; x_sub_100088E9_DrawStruct+436j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
; ---------------------------------------------------------------------------
		jmp	x_sub_100095A8_DrawStruct
; ---------------------------------------------------------------------------

loc_10008FB6:				; CODE XREF: x_sub_100088E9_DrawStruct+59j
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_10009059
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_100092CC
		mov	ecx, edx

loc_10009053:				; CODE XREF: x_sub_100088E9_DrawStruct+76Ej
		lodsw
		add	esi, eax
		loop	loc_10009053

loc_10009059:				; CODE XREF: x_sub_100088E9_DrawStruct+754j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_1000907B
		sub	dword_1000E09A,	edx
		jle	loc_100092CC

loc_1000907B:				; CODE XREF: x_sub_100088E9_DrawStruct+784j
		mov	edi, dword_1000E0B6
		add	edi, 0
		shr	edi, 1
		mov	eax, dword_1000E0BA
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10009187
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_100090DF
		mov	dword_1000E06C,	offset loc_10009193

loc_100090DF:				; CODE XREF: x_sub_100088E9_DrawStruct+7EAj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, 1E0h
		jnb	short loc_100090F6
		xor	eax, eax

loc_100090F6:				; CODE XREF: x_sub_100088E9_DrawStruct+809j
		sub	dword_1000E09A,	eax
		jbe	loc_10009296
		mov	dword_1000E09E,	eax

loc_10009107:				; CODE XREF: x_sub_100088E9_DrawStruct+9A7j
					; x_sub_100088E9_DrawStruct+9DDj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10009187

loc_1000911D:				; CODE XREF: x_sub_100088E9_DrawStruct+853j
					; x_sub_100088E9_DrawStruct+87Cj ...
		cmp	esi, ebp
		jnb	loc_10009256
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10009154
		movzx	ecx, al
		and	cl, 3Fh
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000911D
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		test	al, 40h
		mov	eax, ecx
		jz	short loc_1000919E
		or	al, 40h
		jmp	short loc_1000919E
; ---------------------------------------------------------------------------

loc_10009154:				; CODE XREF: x_sub_100088E9_DrawStruct+841j
		mov	cl, al
		and	ecx, 3Fh
		test	al, 40h
		jz	short loc_10009169
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000911D
		jmp	short loc_10009187
; ---------------------------------------------------------------------------

loc_10009169:				; CODE XREF: x_sub_100088E9_DrawStruct+872j
		mov	al, [esi]
		inc	esi
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000911D
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_1000919E
; ---------------------------------------------------------------------------

loc_10009187:				; CODE XREF: x_sub_100088E9_DrawStruct+832j
					; x_sub_100088E9_DrawStruct+87Ej
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_10009256

loc_10009193:				; DATA XREF: x_sub_100088E9_DrawStruct+7ECo
		cmp	esi, ebp
		jnb	loc_10009256
		mov	al, [esi]
		inc	esi

loc_1000919E:				; CODE XREF: x_sub_100088E9_DrawStruct+865j
					; x_sub_100088E9_DrawStruct+869j ...
		mov	ecx, eax
		and	eax, 3Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_100091C0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_100091C0:				; CODE XREF: x_sub_100088E9_DrawStruct+8C2j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10009230
		jnz	short loc_100091F0

loc_100091CB:				; CODE XREF: x_sub_100088E9_DrawStruct+8F4j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100091CB
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_100091F0:				; CODE XREF: x_sub_100088E9_DrawStruct+8E0j
					; x_sub_100088E9_DrawStruct+933j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	edx, eax
		add	eax, ds:0[edi*2]
		xor	edx, ds:0[edi*2]
		and	edx, dword_1000E460
		sub	eax, edx
		shr	eax, 1
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100091F0
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009230:				; CODE XREF: x_sub_100088E9_DrawStruct+8DEj
		jnp	short loc_10009240
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009240:				; CODE XREF: x_sub_100088E9_DrawStruct:loc_10009230j
		mov	al, [esi]
		inc	esi
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10009256:				; CODE XREF: x_sub_100088E9_DrawStruct+836j
					; x_sub_100088E9_DrawStruct+8A4j ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10009107

loc_10009296:				; CODE XREF: x_sub_100088E9_DrawStruct+813j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10009107

loc_100092CC:				; CODE XREF: x_sub_100088E9_DrawStruct+762j
					; x_sub_100088E9_DrawStruct+78Cj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
; ---------------------------------------------------------------------------
		jmp	x_sub_100095A8_DrawStruct
; ---------------------------------------------------------------------------

loc_100092EB:				; CODE XREF: x_sub_100088E9_DrawStruct+61j
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000938E
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_1000958E
		mov	ecx, edx

loc_10009388:				; CODE XREF: x_sub_100088E9_DrawStruct+AA3j
		lodsw
		add	esi, eax
		loop	loc_10009388

loc_1000938E:				; CODE XREF: x_sub_100088E9_DrawStruct+A89j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_100093B0
		sub	dword_1000E09A,	edx
		jle	loc_1000958E

loc_100093B0:				; CODE XREF: x_sub_100088E9_DrawStruct+AB9j
		mov	edi, dword_1000E0B6
		add	edi, 0
		shr	edi, 1
		mov	eax, dword_1000E0BA
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_1000948B
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10009414
		mov	dword_1000E06C,	offset loc_10009497

loc_10009414:				; CODE XREF: x_sub_100088E9_DrawStruct+B1Fj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, 1E0h
		jnb	short loc_1000942B
		xor	eax, eax

loc_1000942B:				; CODE XREF: x_sub_100088E9_DrawStruct+B3Ej
		sub	dword_1000E09A,	eax
		jbe	loc_10009558
		mov	dword_1000E09E,	eax

loc_1000943C:				; CODE XREF: x_sub_100088E9_DrawStruct+C69j
					; x_sub_100088E9_DrawStruct+C9Fj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_1000948B

loc_10009452:				; CODE XREF: x_sub_100088E9_DrawStruct+B83j
					; x_sub_100088E9_DrawStruct+BA0j
		cmp	esi, ebp
		jnb	loc_10009518
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_1000947C
		movzx	ecx, al
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009452
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		mov	al, cl
		jmp	short loc_1000949E
; ---------------------------------------------------------------------------

loc_1000947C:				; CODE XREF: x_sub_100088E9_DrawStruct+B76j
		and	al, 7Fh
		movzx	ecx, al
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009452

loc_1000948B:				; CODE XREF: x_sub_100088E9_DrawStruct+B67j
					; DATA XREF: x_sub_100088E9_DrawStruct+B07o
		cmp	edi, dword_1000E060
		jnb	loc_10009518

loc_10009497:				; DATA XREF: x_sub_100088E9_DrawStruct+B21o
		cmp	esi, ebp
		jnb	short loc_10009518
		mov	al, [esi]
		inc	esi

loc_1000949E:				; CODE XREF: x_sub_100088E9_DrawStruct+B91j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_100094C0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_100094C0:				; CODE XREF: x_sub_100088E9_DrawStruct+BC2j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10009510

loc_100094C9:				; CODE XREF: x_sub_100088E9_DrawStruct+C17j
		mov	eax, ds:0[edi*2]
		mov	edx, ds:0[edi*2]
		test	eax, 8007h
		jnz	short loc_100094FE
		or	eax, 0
		and	edx, dword_1000E468
		shr	edx, 1
		add	edx, dword_1000E480
		mov	ds:0[edi*2], eax
		mov	ds:0[edi*2], dx

loc_100094FE:				; CODE XREF: x_sub_100088E9_DrawStruct+BF3j
		inc	edi
		dec	ecx
		jnz	short loc_100094C9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009510:				; CODE XREF: x_sub_100088E9_DrawStruct+BDEj
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10009518:				; CODE XREF: x_sub_100088E9_DrawStruct+B6Bj
					; x_sub_100088E9_DrawStruct+BA8j ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_1000943C

loc_10009558:				; CODE XREF: x_sub_100088E9_DrawStruct+B48j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_1000943C

loc_1000958E:				; CODE XREF: x_sub_100088E9_DrawStruct+A97j
					; x_sub_100088E9_DrawStruct+AC1j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
x_sub_100088E9_DrawStruct endp


; =============== S U B	R O U T	I N E =======================================


x_sub_100095A8_DrawStruct proc near	; CODE XREF: x_sub_100088E9_DrawStruct+34Aj
					; x_sub_100088E9_DrawStruct+6C8j ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		enter	0, 0
		mov	eax, [ebp+arg_10]
		mov	edx, [eax]
		mov	dword_1000E0B6,	edx
		mov	edx, [eax+4]
		shl	edx, 1
		mov	dword_1000E0BA,	edx
		mov	edx, [eax+8]
		mov	dword_1000E0BE,	edx
		mov	edx, [eax+0Ch]
		mov	dword_1000E0C2,	edx
		mov	edx, [eax+10h]
		mov	dword_1000E0C6,	edx
		mov	edx, [eax+14h]
		mov	dword_1000E0CA,	edx
		mov	edx, [ebp+arg_C]
		mov	dword_1000E0CE,	edx
		mov	edx, [ebp+arg_8]
		mov	dword_1000E0D2,	edx
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000969B
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_100098B9
		mov	ecx, edx

loc_10009695:				; CODE XREF: x_sub_100095A8_DrawStruct+F1j
		lodsw
		add	esi, eax
		loop	loc_10009695

loc_1000969B:				; CODE XREF: x_sub_100095A8_DrawStruct+D7j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_100096BD
		sub	dword_1000E09A,	edx
		jle	loc_100098B9

loc_100096BD:				; CODE XREF: x_sub_100095A8_DrawStruct+107j
		mov	edi, dword_1000E0B6
		add	edi, 0
		shr	edi, 1
		mov	eax, dword_1000E0BA
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_100097C0
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10009721
		mov	dword_1000E06C,	offset loc_100097C8

loc_10009721:				; CODE XREF: x_sub_100095A8_DrawStruct+16Dj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, 1E0h
		jnb	short loc_10009738
		xor	eax, eax

loc_10009738:				; CODE XREF: x_sub_100095A8_DrawStruct+18Cj
		sub	dword_1000E09A,	eax
		jbe	loc_10009883
		mov	dword_1000E09E,	eax

loc_10009749:				; CODE XREF: x_sub_100095A8_DrawStruct+2D5j
					; x_sub_100095A8_DrawStruct+30Bj
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_100097C0

loc_1000975F:				; CODE XREF: x_sub_100095A8_DrawStruct+1D3j
					; x_sub_100095A8_DrawStruct+1F9j ...
		cmp	esi, ebp
		jnb	loc_10009843
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_1000978D
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000975F
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_100097CF
; ---------------------------------------------------------------------------

loc_1000978D:				; CODE XREF: x_sub_100095A8_DrawStruct+1C4j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_100097A5
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000975F
		jmp	short loc_100097C0
; ---------------------------------------------------------------------------

loc_100097A5:				; CODE XREF: x_sub_100095A8_DrawStruct+1EFj
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000975F
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_100097CF
; ---------------------------------------------------------------------------

loc_100097C0:				; CODE XREF: x_sub_100095A8_DrawStruct+1B5j
					; x_sub_100095A8_DrawStruct+1FBj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	short loc_10009843

loc_100097C8:				; DATA XREF: x_sub_100095A8_DrawStruct+16Fo
		cmp	esi, ebp
		jnb	short loc_10009843
		mov	al, [esi]
		inc	esi

loc_100097CF:				; CODE XREF: x_sub_100095A8_DrawStruct+1E3j
					; x_sub_100095A8_DrawStruct+216j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_100097F0
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_100097F0:				; CODE XREF: x_sub_100095A8_DrawStruct+234j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10009820

loc_100097F9:				; CODE XREF: x_sub_100095A8_DrawStruct+263j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_100097F9
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009820:				; CODE XREF: x_sub_100095A8_DrawStruct+24Fj
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10009830
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009830:				; CODE XREF: x_sub_100095A8_DrawStruct+27Dj
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10009843:				; CODE XREF: x_sub_100095A8_DrawStruct+1B9j
					; x_sub_100095A8_DrawStruct+21Ej ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10009749

loc_10009883:				; CODE XREF: x_sub_100095A8_DrawStruct+196j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10009749

loc_100098B9:				; CODE XREF: x_sub_100095A8_DrawStruct+E5j
					; x_sub_100095A8_DrawStruct+10Fj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
x_sub_100095A8_DrawStruct endp


; =============== S U B	R O U T	I N E =======================================


x_sub_100098D3_DrawStruct proc near	; DATA XREF: CADraw_Init+258o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch

		enter	0, 0
		mov	eax, [ebp+arg_10]
		mov	edx, [ebp+arg_14]
		mov	dword_1000E0B6,	edx
		mov	edx, [eax+4]
		mov	dword_1000E0BA,	edx
		mov	edx, [eax+8]
		mov	dword_1000E0BE,	edx
		mov	edx, [eax+0Ch]
		mov	dword_1000E0C2,	edx
		mov	edx, [eax+10h]
		mov	dword_1000E0C6,	edx
		mov	edx, [eax+14h]
		mov	dword_1000E0CA,	edx
		mov	edx, [ebp+arg_C]
		mov	dword_1000E0CE,	edx
		mov	edx, [ebp+arg_8]
		mov	dword_1000E0D2,	edx
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_100099C5
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10009BC1
		mov	ecx, edx

loc_100099BF:				; CODE XREF: x_sub_100098D3_DrawStruct+F0j
		lodsw
		add	esi, eax
		loop	loc_100099BF

loc_100099C5:				; CODE XREF: x_sub_100098D3_DrawStruct+D6j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_100099E7
		sub	dword_1000E09A,	edx
		jle	loc_10009BC1

loc_100099E7:				; CODE XREF: x_sub_100098D3_DrawStruct+106j
		mov	edi, dword_1000E0B6
		add	edi, 0
		mov	eax, dword_1000E0BA
		mul	[esp+arg_4]
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10009AE6
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10009A47
		mov	dword_1000E06C,	offset loc_10009AEE

loc_10009A47:				; CODE XREF: x_sub_100098D3_DrawStruct+168j
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, 1E0h
		jnb	short loc_10009A5E
		xor	eax, eax

loc_10009A5E:				; CODE XREF: x_sub_100098D3_DrawStruct+187j
		sub	dword_1000E09A,	eax
		jbe	loc_10009B8B
		mov	dword_1000E09E,	eax

loc_10009A6F:				; CODE XREF: x_sub_100098D3_DrawStruct+2B2j
					; x_sub_100098D3_DrawStruct+2E8j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10009AE6

loc_10009A85:				; CODE XREF: x_sub_100098D3_DrawStruct+1CEj
					; x_sub_100098D3_DrawStruct+1F4j ...
		cmp	esi, ebp
		jnb	loc_10009B4D
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10009AB3
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009A85
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10009AF5
; ---------------------------------------------------------------------------

loc_10009AB3:				; CODE XREF: x_sub_100098D3_DrawStruct+1BFj
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10009ACB
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009A85
		jmp	short loc_10009AE6
; ---------------------------------------------------------------------------

loc_10009ACB:				; CODE XREF: x_sub_100098D3_DrawStruct+1EAj
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009A85
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10009AF5
; ---------------------------------------------------------------------------

loc_10009AE6:				; CODE XREF: x_sub_100098D3_DrawStruct+1B0j
					; x_sub_100098D3_DrawStruct+1F6j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	short loc_10009B4D

loc_10009AEE:				; DATA XREF: x_sub_100098D3_DrawStruct+16Ao
		cmp	esi, ebp
		jnb	short loc_10009B4D
		mov	al, [esi]
		inc	esi

loc_10009AF5:				; CODE XREF: x_sub_100098D3_DrawStruct+1DEj
					; x_sub_100098D3_DrawStruct+211j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10009B10
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10009B10:				; CODE XREF: x_sub_100098D3_DrawStruct+22Fj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10009B30

loc_10009B19:				; CODE XREF: x_sub_100098D3_DrawStruct+252j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, ebx
		mov	[edi], ax
		inc	edi
		dec	ecx
		jnz	short loc_10009B19
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009B30:				; CODE XREF: x_sub_100098D3_DrawStruct+244j
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10009B40
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009B40:				; CODE XREF: x_sub_100098D3_DrawStruct+262j
		movzx	eax, al
		mov	eax, ebx
		rep stosb
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10009B4D:				; CODE XREF: x_sub_100098D3_DrawStruct+1B4j
					; x_sub_100098D3_DrawStruct+219j ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10009A6F

loc_10009B8B:				; CODE XREF: x_sub_100098D3_DrawStruct+191j
		sub	edi, 96000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10009A6F

loc_10009BC1:				; CODE XREF: x_sub_100098D3_DrawStruct+E4j
					; x_sub_100098D3_DrawStruct+10Ej
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
x_sub_100098D3_DrawStruct endp

; ---------------------------------------------------------------------------
		enter	0, 0
		mov	eax, [ebp+18h]
		mov	edx, [eax]
		mov	dword_1000E0B6,	edx
		mov	edx, [eax+4]
		shl	edx, 1
		mov	dword_1000E0BA,	edx
		mov	edx, [eax+8]
		mov	dword_1000E0BE,	edx
		mov	edx, [eax+0Ch]
		mov	ecx, [ebp+1Ch]
		cmp	edx, ecx
		jnb	short loc_10009C0A
		mov	edx, ecx

loc_10009C0A:				; CODE XREF: .text:10009C06j
		mov	dword_1000E0C2,	edx
		mov	edx, [eax+10h]
		mov	dword_1000E0C6,	edx
		mov	edx, [eax+14h]
		add	ecx, [ebp+20h]
		cmp	edx, ecx
		jbe	short loc_10009C25
		mov	edx, ecx

loc_10009C25:				; CODE XREF: .text:10009C21j
		mov	dword_1000E0CA,	edx
		mov	edx, [ebp+14h]
		mov	dword_1000E0CE,	edx
		mov	edx, [ebp+10h]
		mov	dword_1000E0D2,	edx
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+8], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+0Ch], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+0Ch]
		sub	edx, eax
		jge	short loc_10009CE0
		mov	[esp+0Ch], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_10009EF9
		mov	ecx, edx

loc_10009CDA:				; CODE XREF: .text:10009CDEj
		lodsw
		add	esi, eax
		loop	loc_10009CDA

loc_10009CE0:				; CODE XREF: .text:10009CC4j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+0Ch]
		sub	edx, eax
		jle	short loc_10009D02
		sub	dword_1000E09A,	edx
		jle	loc_10009EF9

loc_10009D02:				; CODE XREF: .text:10009CF4j
		mov	edi, dword_1000E0B6
		add	edi, 0
		shr	edi, 1
		mov	eax, dword_1000E0BA
		mul	dword ptr [esp+0Ch]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+8]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_10009E05
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_10009D66
		mov	dword_1000E06C,	offset loc_10009E0D

loc_10009D66:				; CODE XREF: .text:10009D5Aj
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+0Ch]
		sub	eax, 1E0h
		jnb	short loc_10009D7D
		xor	eax, eax

loc_10009D7D:				; CODE XREF: .text:10009D79j
		sub	dword_1000E09A,	eax
		jbe	loc_10009EC3
		mov	dword_1000E09E,	eax

loc_10009D8E:				; CODE XREF: .text:10009EBDj
					; .text:10009EF3j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_10009E05

loc_10009DA4:				; CODE XREF: .text:10009DC0j
					; .text:10009DE6j ...
		cmp	esi, ebp
		jnb	loc_10009E83
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_10009DD2
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009DA4
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_10009E14
; ---------------------------------------------------------------------------

loc_10009DD2:				; CODE XREF: .text:10009DB1j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10009DEA
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009DA4
		jmp	short loc_10009E05
; ---------------------------------------------------------------------------

loc_10009DEA:				; CODE XREF: .text:10009DDCj
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_10009DA4
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_10009E14
; ---------------------------------------------------------------------------

loc_10009E05:				; CODE XREF: .text:10009DA2j
					; .text:10009DE8j
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	short loc_10009E83

loc_10009E0D:				; DATA XREF: .text:10009D5Co
		cmp	esi, ebp
		jnb	short loc_10009E83
		mov	al, [esi]
		inc	esi

loc_10009E14:				; CODE XREF: .text:10009DD0j
					; .text:10009E03j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_10009E30
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_10009E30:				; CODE XREF: .text:10009E21j
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	short loc_10009E60

loc_10009E39:				; CODE XREF: .text:10009E4Bj
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	ds:0[edi*2], ax
		inc	edi
		dec	ecx
		jnz	short loc_10009E39
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009E60:				; CODE XREF: .text:10009E37j
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_10009E70
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_10009E70:				; CODE XREF: .text:10009E65j
		movzx	eax, al
		mov	eax, [ebx+eax*2]
		add	edi, edi
		rep stosw
		shr	edi, 1
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_10009E83:				; CODE XREF: .text:10009DA6j
					; .text:10009E0Bj ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_10009D8E

loc_10009EC3:				; CODE XREF: .text:10009D83j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_10009D8E

loc_10009EF9:				; CODE XREF: .text:10009CD2j
					; .text:10009CFCj
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn

; =============== S U B	R O U T	I N E =======================================


x_sub_10009F13_DrawStruct proc near	; DATA XREF: CADraw_Init+24Eo

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch

		enter	0, 0
		mov	eax, [ebp+arg_14]
		mov	edx, [eax]
		mov	dword_1000E0B6,	edx
		mov	edx, [eax+4]
		shl	edx, 1
		mov	dword_1000E0BA,	edx
		mov	edx, [eax+8]
		mov	dword_1000E0BE,	edx
		mov	edx, [eax+0Ch]
		mov	dword_1000E0C2,	edx
		mov	edx, [eax+10h]
		mov	dword_1000E0C6,	edx
		mov	edx, [eax+14h]
		mov	dword_1000E0CA,	edx
		mov	edx, [ebp+arg_C]
		mov	dword_1000E0CE,	edx
		mov	edx, [ebp+arg_10]
		mov	dword_1000E0D2,	edx
		mov	edx, [ebp+arg_8]
		mov	dword_1000E068,	edx
		movzx	eax, word ptr g_dwGBitDoubleMask
		shl	eax, 10h
		or	ax, word ptr g_dwRBitDoubleMask
		or	ax, word ptr g_dwBBitDoubleMask
		mov	dword_1000E084,	eax
		mov	edx, eax
		shl	eax, 1
		or	eax, edx
		mov	dword_1000E088,	eax
		mov	dword_1000E08C,	esi
		mov	dword_1000E090,	edi
		mov	dword_1000E094,	ebx
		mov	dword_1000E078,	ebp
		mov	ebx, dword_1000E0CE
		mov	ax, word ptr dword_1000E0BE
		mov	g_rcScreenSmallRect.Left, ax
		mov	ax, word ptr dword_1000E0C6
		mov	g_rcScreenSmallRect.Right, ax
		mov	ax, word ptr dword_1000E0C2
		mov	g_rcScreenSmallRect.Top, ax
		mov	ax, word ptr dword_1000E0CA
		mov	g_rcScreenSmallRect.Bottom, ax
		mov	esi, dword_1000E0D2
		movsx	eax, word ptr [esi]
		add	[esp+arg_0], eax
		movsx	eax, word ptr [esi+2]
		add	[esp+arg_4], eax
		movzx	edx, word ptr [esi+4]
		movzx	eax, word ptr [esi+6]
		inc	edx
		add	esi, 9
		mov	dword_1000E09A,	eax
		mov	dword_1000E064,	edx
		movzx	eax, g_rcScreenSmallRect.Top
		mov	edx, [esp+arg_4]
		sub	edx, eax
		jge	short loc_1000A037
		mov	[esp+arg_4], eax
		neg	edx
		sub	dword_1000E09A,	edx
		jle	loc_1000A322
		mov	ecx, edx

loc_1000A031:				; CODE XREF: x_sub_10009F13_DrawStruct+122j
		lodsw
		add	esi, eax
		loop	loc_1000A031

loc_1000A037:				; CODE XREF: x_sub_10009F13_DrawStruct+108j
		movzx	eax, g_rcScreenSmallRect.Bottom
		inc	eax
		mov	edx, dword_1000E09A
		add	edx, [esp+arg_4]
		sub	edx, eax
		jle	short loc_1000A059
		sub	dword_1000E09A,	edx
		jle	loc_1000A322

loc_1000A059:				; CODE XREF: x_sub_10009F13_DrawStruct+138j
		mov	edi, dword_1000E0B6
		add	edi, 0
		shr	edi, 1
		mov	eax, dword_1000E0BA
		mul	[esp+arg_4]
		shr	eax, 1
		movzx	edx, g_rcScreenSmallRect.Left
		add	edx, eax
		add	edx, edi
		mov	dword_1000E05C,	edx
		movzx	edx, g_rcScreenSmallRect.Right
		lea	edx, [edx+eax+1]
		add	edx, edi
		mov	dword_1000E060,	edx
		add	eax, [esp+arg_0]
		add	edi, eax
		mov	dword_1000E06C,	offset loc_1000A15C
		mov	eax, edi
		add	eax, dword_1000E064
		cmp	eax, dword_1000E060
		jnb	short loc_1000A0BD
		mov	dword_1000E06C,	offset loc_1000A168

loc_1000A0BD:				; CODE XREF: x_sub_10009F13_DrawStruct+19Ej
		mov	eax, dword_1000E09A
		mov	dword_1000E09E,	eax
		add	eax, [esp+arg_4]
		sub	eax, 1E0h
		jnb	short loc_1000A0D4
		xor	eax, eax

loc_1000A0D4:				; CODE XREF: x_sub_10009F13_DrawStruct+1BDj
		sub	dword_1000E09A,	eax
		jbe	loc_1000A2EC
		mov	dword_1000E09E,	eax

loc_1000A0E5:				; CODE XREF: x_sub_10009F13_DrawStruct+3D3j
					; x_sub_10009F13_DrawStruct+409j
		mov	dword_1000E07C,	edi
		xor	eax, eax
		lodsw
		add	eax, esi
		mov	ebp, eax
		cmp	edi, dword_1000E05C
		jnb	short loc_1000A15C

loc_1000A0FB:				; CODE XREF: x_sub_10009F13_DrawStruct+204j
					; x_sub_10009F13_DrawStruct+22Aj ...
		cmp	esi, ebp
		jnb	loc_1000A2AC
		mov	al, [esi]
		inc	esi
		or	al, al
		js	short loc_1000A129
		movzx	ecx, al
		add	esi, ecx
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000A0FB
		mov	ecx, edi
		sub	ecx, dword_1000E05C
		sub	edi, ecx
		sub	esi, ecx
		mov	al, cl
		jmp	short loc_1000A173
; ---------------------------------------------------------------------------

loc_1000A129:				; CODE XREF: x_sub_10009F13_DrawStruct+1F5j
		and	eax, 7Fh
		mov	ecx, eax
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_1000A141
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000A0FB
		jmp	short loc_1000A15C
; ---------------------------------------------------------------------------

loc_1000A141:				; CODE XREF: x_sub_10009F13_DrawStruct+220j
		add	edi, ecx
		cmp	edi, dword_1000E05C
		jbe	short loc_1000A0FB
		mov	ecx, edi
		mov	edi, dword_1000E05C
		sub	ecx, edi
		mov	al, cl
		or	al, 80h
		dec	esi
		jmp	short loc_1000A173
; ---------------------------------------------------------------------------

loc_1000A15C:				; CODE XREF: x_sub_10009F13_DrawStruct+1E6j
					; x_sub_10009F13_DrawStruct+22Cj
					; DATA XREF: ...
		cmp	edi, dword_1000E060
		jnb	loc_1000A2AC

loc_1000A168:				; DATA XREF: x_sub_10009F13_DrawStruct+1A0o
		cmp	esi, ebp
		jnb	loc_1000A2AC
		mov	al, [esi]
		inc	esi

loc_1000A173:				; CODE XREF: x_sub_10009F13_DrawStruct+214j
					; x_sub_10009F13_DrawStruct+247j
		mov	ecx, eax
		and	eax, 7Fh
		add	eax, edi
		cmp	eax, dword_1000E060
		jbe	short loc_1000A190
		mov	eax, dword_1000E060
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_1000A190:				; CODE XREF: x_sub_10009F13_DrawStruct+26Dj
		sub	eax, edi
		and	cl, 0C0h
		mov	ecx, eax
		js	loc_1000A220

loc_1000A19D:				; CODE XREF: x_sub_10009F13_DrawStruct+300j
		xor	eax, eax
		mov	al, [esi]
		inc	esi
		mov	eax, [ebx+eax*2]
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		push	eax
		mov	eax, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		push	edx
		mov	edx, eax
		shl	eax, 10h
		mov	ax, dx
		mov	edx, 1Fh
		and	eax, dword_1000E084
		sub	edx, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_1000A19D
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_1000A220:				; CODE XREF: x_sub_10009F13_DrawStruct+284j
		mov	al, [esi]
		inc	esi
		or	al, al
		jnz	short loc_1000A230
		add	edi, ecx
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------
		align 10h

loc_1000A230:				; CODE XREF: x_sub_10009F13_DrawStruct+312j
		movzx	eax, al
		mov	eax, [ebx+eax*2]

loc_1000A236:				; CODE XREF: x_sub_10009F13_DrawStruct+391j
		mov	dx, ds:0[edi*2]
		shl	edx, 10h
		mov	dx, ds:0[edi*2]
		and	edx, dword_1000E084
		push	eax
		push	eax
		mov	eax, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		push	edx
		mov	edx, eax
		shl	eax, 10h
		mov	ax, dx
		mov	edx, 1Fh
		and	eax, dword_1000E084
		sub	edx, dword_1000E068
		mul	edx
		shr	eax, 5
		and	eax, dword_1000E084
		mov	edx, eax
		shr	edx, 10h
		or	edx, eax
		pop	eax
		add	dx, ax
		mov	ds:0[edi*2], dx
		pop	eax
		inc	edi
		dec	ecx
		jnz	short loc_1000A236
		jmp	dword_1000E06C
; ---------------------------------------------------------------------------

loc_1000A2AC:				; CODE XREF: x_sub_10009F13_DrawStruct+1EAj
					; x_sub_10009F13_DrawStruct+24Fj ...
		mov	edi, dword_1000E07C
		mov	eax, dword_1000E0BA
		shr	eax, 1
		mov	esi, dword_1000E05C
		mov	edx, dword_1000E060
		add	esi, eax
		add	edx, eax
		mov	dword_1000E05C,	esi
		mov	dword_1000E060,	edx
		mov	esi, ebp
		mov	edx, dword_1000E09A
		add	edi, eax
		dec	edx
		mov	dword_1000E09A,	edx
		jnz	loc_1000A0E5

loc_1000A2EC:				; CODE XREF: x_sub_10009F13_DrawStruct+1C7j
		sub	edi, 4B000h
		sub	dword_1000E05C,	4B000h
		sub	dword_1000E060,	4B000h
		mov	eax, dword_1000E09E
		mov	dword_1000E09E,	0
		or	eax, eax
		mov	dword_1000E09A,	eax
		jnz	loc_1000A0E5

loc_1000A322:				; CODE XREF: x_sub_10009F13_DrawStruct+116j
					; x_sub_10009F13_DrawStruct+140j
		mov	ebp, dword_1000E078
		mov	ebx, dword_1000E094
		mov	edi, dword_1000E090
		mov	esi, dword_1000E08C
		leave
		retn
x_sub_10009F13_DrawStruct endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

; HRESULT __stdcall DirectDrawCreate(GUID *lpGUID, LPDIRECTDRAW	*lplpDD, IUnknown *pUnkOuter)
DirectDrawCreate proc near		; CODE XREF: CreateDirectDrawAndSetCooperativeLevel+10p
		jmp	ds:__imp_DirectDrawCreate
DirectDrawCreate endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: library function

; __stdcall _CRT_INIT(x, x, x)
__CRT_INIT@12	proc near		; CODE XREF: DllEntryPoint+3Bp
					; DllEntryPoint+5Fp ...

arg_4		= dword	ptr  8

		mov	eax, [esp+arg_4]
		cmp	eax, 1
		jnz	loc_1000A3D7
		call	ds:GetVersion
		push	1
		mov	dword_101DBE18,	eax
		call	__heap_init
		test	eax, eax
		pop	ecx
		jz	short loc_1000A3A2
		mov	eax, dword_101DBE18
		xor	ecx, ecx
		mov	cl, byte ptr dword_101DBE18+1
		and	eax, 0FFh
		shr	dword_101DBE18,	10h
		mov	dword_101DBE20,	eax
		mov	dword_101DBE24,	ecx
		shl	eax, 8
		add	eax, ecx
		mov	dword_101DBE1C,	eax
		call	__mtinit
		test	eax, eax
		jnz	short loc_1000A3A6
		call	__heap_term

loc_1000A3A2:				; CODE XREF: _CRT_INIT(x,x,x)+22j
					; _CRT_INIT(x,x,x)+A1j
		xor	eax, eax
		jmp	short locret_1000A418
; ---------------------------------------------------------------------------

loc_1000A3A6:				; CODE XREF: _CRT_INIT(x,x,x)+59j
		call	ds:GetCommandLineA
		mov	dword_101DC378,	eax
		call	___crtGetEnvironmentStringsA
		mov	Memory,	eax
		call	__ioinit
		call	__setargv
		call	__setenvp
		call	__cinit
		inc	dword_101DBE00
		jmp	short loc_1000A415
; ---------------------------------------------------------------------------

loc_1000A3D7:				; CODE XREF: _CRT_INIT(x,x,x)+7j
		xor	ecx, ecx
		cmp	eax, ecx
		jnz	short loc_1000A409
		cmp	dword_101DBE00,	ecx
		jle	short loc_1000A3A2
		dec	dword_101DBE00
		cmp	dword_101DBE50,	ecx
		jnz	short loc_1000A3F8
		call	__cexit

loc_1000A3F8:				; CODE XREF: _CRT_INIT(x,x,x)+AFj
		call	__ioterm
		call	__mtterm
		call	__heap_term
		jmp	short loc_1000A415
; ---------------------------------------------------------------------------

loc_1000A409:				; CODE XREF: _CRT_INIT(x,x,x)+99j
		cmp	eax, 3
		jnz	short loc_1000A415
		push	ecx		; Memory
		call	__freeptd
		pop	ecx

loc_1000A415:				; CODE XREF: _CRT_INIT(x,x,x)+93j
					; _CRT_INIT(x,x,x)+C5j	...
		push	1
		pop	eax

locret_1000A418:			; CODE XREF: _CRT_INIT(x,x,x)+62j
		retn	0Ch
__CRT_INIT@12	endp

; [0000009D BYTES: COLLAPSED FUNCTION DllEntryPoint. PRESS CTRL-NUMPAD+	TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: library function noreturn

; int __cdecl _amsg_exit(DWORD NumberOfBytesWritten)
__amsg_exit	proc near		; CODE XREF: __ioinit+1Cp
					; __setenvp+4Ep ...

NumberOfBytesWritten= dword ptr	 4

		mov	eax, dword_101DBE0C
		cmp	eax, 1
		jz	short loc_1000A4CF
		test	eax, eax
		jnz	short loc_1000A4D4
		cmp	dword_101DBE10,	1
		jnz	short loc_1000A4D4

loc_1000A4CF:				; CODE XREF: __amsg_exit+8j
		call	__FF_MSGBANNER

loc_1000A4D4:				; CODE XREF: __amsg_exit+Cj
					; __amsg_exit+15j
		push	[esp+NumberOfBytesWritten] ; NumberOfBytesWritten
		call	__NMSG_WRITE
		push	0FFh		; Code
		call	off_1000E0D8
__amsg_exit	endp

; ---------------------------------------------------------------------------
		pop	ecx
		pop	ecx
		retn
; [0000002D BYTES: COLLAPSED FUNCTION __cinit. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __exit. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __cexit. PRESS CTRL-NUMPAD+ TO EXPAND]
; [000000A3 BYTES: COLLAPSED FUNCTION _doexit. PRESS CTRL-NUMPAD+ TO EXPAND]
; ---------------------------------------------------------------------------
		pop	edi
		retn
; [00000009 BYTES: COLLAPSED FUNCTION __lockexit. PRESS	CTRL-NUMPAD+ TO	EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION __unlockexit. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000001A BYTES: COLLAPSED FUNCTION __initterm. PRESS	CTRL-NUMPAD+ TO	EXPAND]
; [00000054 BYTES: COLLAPSED FUNCTION __mtinit.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000001E BYTES: COLLAPSED FUNCTION __mtterm.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000013 BYTES: COLLAPSED FUNCTION __initptd. PRESS CTRL-NUMPAD+ TO EXPAND]
; [000000A0 BYTES: COLLAPSED FUNCTION __freeptd. PRESS CTRL-NUMPAD+ TO EXPAND]
; [000001BC BYTES: COLLAPSED FUNCTION __ioinit.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000054 BYTES: COLLAPSED FUNCTION __ioterm.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [000000B9 BYTES: COLLAPSED FUNCTION __setenvp. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000099 BYTES: COLLAPSED FUNCTION __setargv. PRESS CTRL-NUMPAD+ TO EXPAND]
; [000001B4 BYTES: COLLAPSED FUNCTION _parse_cmdline. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000132 BYTES: COLLAPSED FUNCTION ___crtGetEnvironmentStringsA. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000003C BYTES: COLLAPSED FUNCTION __heap_init. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000075 BYTES: COLLAPSED FUNCTION __heap_term. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


; BOOL __stdcall DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
_DllMain@12	proc near		; CODE XREF: DllEntryPoint+4Bp

hinstDLL	= dword	ptr  4
fdwReason	= dword	ptr  8
lpvReserved	= dword	ptr  0Ch

		push	1
		pop	eax
		retn	0Ch
_DllMain@12	endp

; [00000039 BYTES: COLLAPSED FUNCTION __FF_MSGBANNER. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000153 BYTES: COLLAPSED FUNCTION __NMSG_WRITE. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000029 BYTES: COLLAPSED FUNCTION __mtinitlocks. PRESS CTRL-NUMPAD+	TO EXPAND]
; [0000006C BYTES: COLLAPSED FUNCTION __mtdeletelocks. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000061 BYTES: COLLAPSED FUNCTION __lock. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000015 BYTES: COLLAPSED FUNCTION __unlock.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000008D BYTES: COLLAPSED FUNCTION _calloc. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000048 BYTES: COLLAPSED FUNCTION _free. PRESS CTRL-NUMPAD+	TO EXPAND]
; [00000012 BYTES: COLLAPSED FUNCTION _malloc. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000002C BYTES: COLLAPSED FUNCTION __nh_malloc. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000004E BYTES: COLLAPSED FUNCTION __heap_alloc. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 10h
; [00000007 BYTES: COLLAPSED FUNCTION _strcpy. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 10h
; [000000E0 BYTES: COLLAPSED FUNCTION _strcat. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000007B BYTES: COLLAPSED FUNCTION _strlen. PRESS CTRL-NUMPAD+ TO EXPAND]
; [000001AD BYTES: COLLAPSED FUNCTION __setmbcp. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000004A BYTES: COLLAPSED FUNCTION _getSystemCP. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000033 BYTES: COLLAPSED FUNCTION _CPtoLCID. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000029 BYTES: COLLAPSED FUNCTION _setSBCS.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000185 BYTES: COLLAPSED FUNCTION _setSBUpLow. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000001C BYTES: COLLAPSED FUNCTION ___initmbctable. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: library function bp-based	frame

; void *__cdecl	memcpy(void *Dst, const	void *Src, size_t Size)
_memcpy		proc near		; CODE XREF: ___crtGetEnvironmentStringsA+116p

Dst		= dword	ptr  8
Src		= dword	ptr  0Ch
Size		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	edi
		push	esi
		mov	esi, [ebp+Src]
		mov	ecx, [ebp+Size]
		mov	edi, [ebp+Dst]
		mov	eax, ecx
		mov	edx, ecx
		add	eax, esi
		cmp	edi, esi
		jbe	short loc_1000B7B0
		cmp	edi, eax
		jb	loc_1000B928

loc_1000B7B0:				; CODE XREF: _memcpy+16j
		test	edi, 3
		jnz	short loc_1000B7CC
		shr	ecx, 2
		and	edx, 3
		cmp	ecx, 8
		jb	short loc_1000B7EC
		rep movsd
		jmp	ds:off_1000B8D8[edx*4]
; ---------------------------------------------------------------------------

loc_1000B7CC:				; CODE XREF: _memcpy+26j
		mov	eax, edi
		mov	edx, 3
		sub	ecx, 4
		jb	short loc_1000B7E4
		and	eax, 3
		add	ecx, eax
		jmp	dword ptr ds:(loc_1000B7EC+4)[eax*4]
; ---------------------------------------------------------------------------

loc_1000B7E4:				; CODE XREF: _memcpy+46j
		jmp	dword ptr ds:TrailUp0[ecx*4]
; ---------------------------------------------------------------------------
		align 4

loc_1000B7EC:				; CODE XREF: _memcpy+31j _memcpy+8Ej ...
		jmp	ds:off_1000B86C[ecx*4]
; ---------------------------------------------------------------------------
		db 90h
		dd offset LeadUp1
		dd offset LeadUp2
		dd offset LeadUp3
; ---------------------------------------------------------------------------

LeadUp1:				; DATA XREF: _memcpy+64o
		and	edx, ecx
		mov	al, [esi]
		mov	[edi], al
		mov	al, [esi+1]
		mov	[edi+1], al
		mov	al, [esi+2]
		shr	ecx, 2
		mov	[edi+2], al
		add	esi, 3
		add	edi, 3
		cmp	ecx, 8
		jb	short loc_1000B7EC
		rep movsd
		jmp	ds:off_1000B8D8[edx*4]
; ---------------------------------------------------------------------------
		align 4

LeadUp2:				; DATA XREF: _memcpy+68o
		and	edx, ecx
		mov	al, [esi]
		mov	[edi], al
		mov	al, [esi+1]
		shr	ecx, 2
		mov	[edi+1], al
		add	esi, 2
		add	edi, 2
		cmp	ecx, 8
		jb	short loc_1000B7EC
		rep movsd
		jmp	ds:off_1000B8D8[edx*4]
; ---------------------------------------------------------------------------
		align 10h

LeadUp3:				; DATA XREF: _memcpy+6Co
		and	edx, ecx
		mov	al, [esi]
		mov	[edi], al
		inc	esi
		shr	ecx, 2
		inc	edi
		cmp	ecx, 8
		jb	short loc_1000B7EC
		rep movsd
		jmp	ds:off_1000B8D8[edx*4]
; ---------------------------------------------------------------------------
		align 4
off_1000B86C	dd offset UnwindUp0	; DATA XREF: _memcpy:loc_1000B7ECr
		dd offset UnwindUp1
		dd offset UnwindUp2
		dd offset UnwindUp3
		dd offset UnwindUp4
		dd offset UnwindUp5
		dd offset UnwindUp6
		dd offset UnwindUp7
; ---------------------------------------------------------------------------

UnwindUp7:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy+F8o
		mov	eax, [esi+ecx*4-1Ch]
		mov	[edi+ecx*4-1Ch], eax

UnwindUp6:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy+F4o
		mov	eax, [esi+ecx*4-18h]
		mov	[edi+ecx*4-18h], eax

UnwindUp5:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy+F0o
		mov	eax, [esi+ecx*4-14h]
		mov	[edi+ecx*4-14h], eax

UnwindUp4:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy+ECo
		mov	eax, [esi+ecx*4-10h]
		mov	[edi+ecx*4-10h], eax

UnwindUp3:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy+E8o
		mov	eax, [esi+ecx*4-0Ch]
		mov	[edi+ecx*4-0Ch], eax

UnwindUp2:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy+E4o
		mov	eax, [esi+ecx*4-8]
		mov	[edi+ecx*4-8], eax

UnwindUp1:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy+E0o
		mov	eax, [esi+ecx*4-4]
		mov	[edi+ecx*4-4], eax
		lea	eax, ds:0[ecx*4]
		add	esi, eax
		add	edi, eax

UnwindUp0:				; CODE XREF: _memcpy:loc_1000B7ECj
					; DATA XREF: _memcpy:off_1000B86Co
		jmp	ds:off_1000B8D8[edx*4]
; ---------------------------------------------------------------------------
		align 4
off_1000B8D8	dd offset TrailUp0	; DATA XREF: _memcpy+35r _memcpy+92r ...
		dd offset TrailUp1
		dd offset TrailUp2
		dd offset TrailUp3
; ---------------------------------------------------------------------------

TrailUp0:				; CODE XREF: _memcpy+35j _memcpy+92j ...
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
		align 10h

TrailUp1:				; CODE XREF: _memcpy+35j _memcpy+92j ...
		mov	al, [esi]
		mov	[edi], al
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
		align 4

TrailUp2:				; CODE XREF: _memcpy+35j _memcpy+92j ...
		mov	al, [esi]
		mov	[edi], al
		mov	al, [esi+1]
		mov	[edi+1], al
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
		align 10h

TrailUp3:				; CODE XREF: _memcpy+35j _memcpy+92j ...
		mov	al, [esi]
		mov	[edi], al
		mov	al, [esi+1]
		mov	[edi+1], al
		mov	al, [esi+2]
		mov	[edi+2], al
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
		align 4

loc_1000B928:				; CODE XREF: _memcpy+1Aj
		lea	esi, [ecx+esi-4]
		lea	edi, [ecx+edi-4]
		test	edi, 3
		jnz	short loc_1000B95C
		shr	ecx, 2
		and	edx, 3
		cmp	ecx, 8
		jb	short loc_1000B950
		std
		rep movsd
		cld
		jmp	ds:off_1000BA70[edx*4]
; ---------------------------------------------------------------------------
		align 10h

loc_1000B950:				; CODE XREF: _memcpy+1B1j _memcpy+208j ...
		neg	ecx
		jmp	ds:off_1000BA20[ecx*4]
; ---------------------------------------------------------------------------
		align 4

loc_1000B95C:				; CODE XREF: _memcpy+1A6j
		mov	eax, edi
		mov	edx, 3
		cmp	ecx, 4
		jb	short loc_1000B974
		and	eax, 3
		sub	ecx, eax
		jmp	dword ptr ds:(loc_1000B974+4)[eax*4]
; ---------------------------------------------------------------------------

loc_1000B974:				; CODE XREF: _memcpy+1D6j
					; DATA XREF: _memcpy+1DDr
		jmp	ds:off_1000BA70[ecx*4]
; ---------------------------------------------------------------------------
		align 4
		dd offset LeadDown1
		dd offset LeadDown2
		dd offset LeadDown3
; ---------------------------------------------------------------------------

LeadDown1:				; DATA XREF: _memcpy+1ECo
		mov	al, [esi+3]
		and	edx, ecx
		mov	[edi+3], al
		dec	esi
		shr	ecx, 2
		dec	edi
		cmp	ecx, 8
		jb	short loc_1000B950
		std
		rep movsd
		cld
		jmp	ds:off_1000BA70[edx*4]
; ---------------------------------------------------------------------------
		align 4

LeadDown2:				; DATA XREF: _memcpy+1F0o
		mov	al, [esi+3]
		and	edx, ecx
		mov	[edi+3], al
		mov	al, [esi+2]
		shr	ecx, 2
		mov	[edi+2], al
		sub	esi, 2
		sub	edi, 2
		cmp	ecx, 8
		jb	short loc_1000B950
		std
		rep movsd
		cld
		jmp	ds:off_1000BA70[edx*4]
; ---------------------------------------------------------------------------
		align 10h

LeadDown3:				; DATA XREF: _memcpy+1F4o
		mov	al, [esi+3]
		and	edx, ecx
		mov	[edi+3], al
		mov	al, [esi+2]
		mov	[edi+2], al
		mov	al, [esi+1]
		shr	ecx, 2
		mov	[edi+1], al
		sub	esi, 3
		sub	edi, 3
		cmp	ecx, 8
		jb	loc_1000B950
		std
		rep movsd
		cld
		jmp	ds:off_1000BA70[edx*4]
; ---------------------------------------------------------------------------
		align 4
		dd offset UnwindDown7
		dd offset UnwindDown6
		dd offset UnwindDown5
		dd offset UnwindDown4
		dd offset UnwindDown3
		dd offset UnwindDown2
		dd offset UnwindDown1
off_1000BA20	dd offset UnwindDown0	; DATA XREF: _memcpy+1C2r
; ---------------------------------------------------------------------------

UnwindDown7:				; DATA XREF: _memcpy+274o
		mov	eax, [esi+ecx*4+1Ch]
		mov	[edi+ecx*4+1Ch], eax

UnwindDown6:				; DATA XREF: _memcpy+278o
		mov	eax, [esi+ecx*4+18h]
		mov	[edi+ecx*4+18h], eax

UnwindDown5:				; DATA XREF: _memcpy+27Co
		mov	eax, [esi+ecx*4+14h]
		mov	[edi+ecx*4+14h], eax

UnwindDown4:				; DATA XREF: _memcpy+280o
		mov	eax, [esi+ecx*4+10h]
		mov	[edi+ecx*4+10h], eax

UnwindDown3:				; DATA XREF: _memcpy+284o
		mov	eax, [esi+ecx*4+0Ch]
		mov	[edi+ecx*4+0Ch], eax

UnwindDown2:				; DATA XREF: _memcpy+288o
		mov	eax, [esi+ecx*4+8]
		mov	[edi+ecx*4+8], eax

UnwindDown1:				; DATA XREF: _memcpy+28Co
		mov	eax, [esi+ecx*4+4]
		mov	[edi+ecx*4+4], eax
		lea	eax, ds:0[ecx*4]
		add	esi, eax
		add	edi, eax

UnwindDown0:				; CODE XREF: _memcpy+1C2j
					; DATA XREF: _memcpy:off_1000BA20o
		jmp	ds:off_1000BA70[edx*4]
; ---------------------------------------------------------------------------
		align 10h
off_1000BA70	dd offset TrailDown0	; DATA XREF: _memcpy+1B7r
					; _memcpy:loc_1000B974r ...
		dd offset TrailDown1
		dd offset TrailDown2
		dd offset TrailDown3
; ---------------------------------------------------------------------------

TrailDown0:				; CODE XREF: _memcpy+1B7j
					; _memcpy:loc_1000B974j ...
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
		align 4

TrailDown1:				; CODE XREF: _memcpy+1B7j
					; _memcpy:loc_1000B974j ...
		mov	al, [esi+3]
		mov	[edi+3], al
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
		align 4

TrailDown2:				; CODE XREF: _memcpy+1B7j
					; _memcpy:loc_1000B974j ...
		mov	al, [esi+3]
		mov	[edi+3], al
		mov	al, [esi+2]
		mov	[edi+2], al
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
		align 4

TrailDown3:				; CODE XREF: _memcpy+1B7j
					; _memcpy:loc_1000B974j ...
		mov	al, [esi+3]
		mov	[edi+3], al
		mov	al, [esi+2]
		mov	[edi+2], al
		mov	al, [esi+1]
		mov	[edi+1], al
		mov	eax, [ebp+Dst]
		pop	esi
		pop	edi
		leave
		retn
_memcpy		endp

; [0000003E BYTES: COLLAPSED FUNCTION ___sbh_heap_init.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION ___sbh_find_block. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000032B BYTES: COLLAPSED FUNCTION ___sbh_free_block. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000309 BYTES: COLLAPSED FUNCTION ___sbh_alloc_block. PRESS	CTRL-NUMPAD+ TO	EXPAND]
; [000000B1 BYTES: COLLAPSED FUNCTION ___sbh_alloc_new_region. PRESS CTRL-NUMPAD+ TO EXPAND]
; [000000FB BYTES: COLLAPSED FUNCTION ___sbh_alloc_new_group. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000089 BYTES: COLLAPSED FUNCTION ___crtMessageBoxA. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 10h
; [000000FE BYTES: COLLAPSED FUNCTION _strncpy.	PRESS CTRL-NUMPAD+ TO EXPAND]
		align 10h
; [00000058 BYTES: COLLAPSED FUNCTION _memset. PRESS CTRL-NUMPAD+ TO EXPAND]
; [0000001B BYTES: COLLAPSED FUNCTION __callnewh. PRESS	CTRL-NUMPAD+ TO	EXPAND]
; [00000224 BYTES: COLLAPSED FUNCTION ___crtLCMapStringA. PRESS	CTRL-NUMPAD+ TO	EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION _strncnt.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000149 BYTES: COLLAPSED FUNCTION ___crtGetStringTypeA. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 10h
; [00000335 BYTES: COLLAPSED FUNCTION _memcpy_0. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 4
; [00000020 BYTES: COLLAPSED FUNCTION __global_unwind2.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000022 BYTES: COLLAPSED FUNCTION __unwind_handler.	PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000068 BYTES: COLLAPSED FUNCTION __local_unwind2. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION __abnormal_termination. PRESS CTRL-NUMPAD+ TO EXPAND]
; ---------------------------------------------------------------------------

__NLG_Notify1:
		push	ebx
		push	ecx
		mov	ebx, offset unk_1000E3F0
		jmp	short loc_1000CCC8
; [00000018 BYTES: COLLAPSED FUNCTION __NLG_Notify. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 4
		push	esi
		inc	ebx
		xor	dh, [eax]
		pop	eax
		inc	ebx
		xor	[eax], dh

; =============== S U B	R O U T	I N E =======================================

; Microsoft VisualC 2-10/net runtime
; Attributes: library function

; int __cdecl unknown_libname_1(int, PVOID TargetFrame,	int)
unknown_libname_1 proc near		; DATA XREF: ___crtLCMapStringA+Ao
					; ___crtGetStringTypeA+Ao

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
TargetFrame	= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	ebx
		push	esi
		push	edi
		push	ebp
		cld
		mov	ebx, [ebp+TargetFrame]
		mov	eax, [ebp+arg_0]
		test	dword ptr [eax+4], 6
		jnz	loc_1000CD80
		mov	[ebp+var_8], eax
		mov	eax, [ebp+arg_8]
		mov	[ebp+var_4], eax
		lea	eax, [ebp+var_8]
		mov	[ebx-4], eax
		mov	esi, [ebx+0Ch]
		mov	edi, [ebx+8]

loc_1000CD13:				; CODE XREF: unknown_libname_1+90j
		cmp	esi, 0FFFFFFFFh
		jz	short loc_1000CD79
		lea	ecx, [esi+esi*2]
		cmp	dword ptr [edi+ecx*4+4], 0
		jz	short loc_1000CD67
		push	esi
		push	ebp
		lea	ebp, [ebx+10h]
		call	dword ptr [edi+ecx*4+4]
		pop	ebp
		pop	esi
		mov	ebx, [ebp+TargetFrame]
		or	eax, eax
		jz	short loc_1000CD67
		js	short loc_1000CD72
		mov	edi, [ebx+8]
		push	ebx		; TargetFrame
		call	__global_unwind2
		add	esp, 4
		lea	ebp, [ebx+10h]
		push	esi
		push	ebx
		call	__local_unwind2
		add	esp, 8
		lea	ecx, [esi+esi*2]
		push	1
		mov	eax, [edi+ecx*4+8]
		call	__NLG_Notify
		mov	eax, [edi+ecx*4]
		mov	[ebx+0Ch], eax
		call	dword ptr [edi+ecx*4+8]

loc_1000CD67:				; CODE XREF: unknown_libname_1+40j
					; unknown_libname_1+52j
		mov	edi, [ebx+8]
		lea	ecx, [esi+esi*2]
		mov	esi, [edi+ecx*4]
		jmp	short loc_1000CD13
; ---------------------------------------------------------------------------

loc_1000CD72:				; CODE XREF: unknown_libname_1+54j
		mov	eax, 0
		jmp	short loc_1000CD95
; ---------------------------------------------------------------------------

loc_1000CD79:				; CODE XREF: unknown_libname_1+36j
		mov	eax, 1
		jmp	short loc_1000CD95
; ---------------------------------------------------------------------------

loc_1000CD80:				; CODE XREF: unknown_libname_1+18j
		push	ebp
		lea	ebp, [ebx+10h]
		push	0FFFFFFFFh
		push	ebx
		call	__local_unwind2
		add	esp, 8
		pop	ebp
		mov	eax, 1

loc_1000CD95:				; CODE XREF: unknown_libname_1+97j
					; unknown_libname_1+9Ej
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
unknown_libname_1 endp

; ---------------------------------------------------------------------------

unknown_libname_2:			; Microsoft VisualC 2-10/net runtime
		push	ebp
		mov	ecx, [esp+8]
		mov	ebp, [ecx]
		mov	eax, [ecx+1Ch]
		push	eax
		mov	eax, [ecx+18h]
		push	eax
		call	__local_unwind2
		add	esp, 8
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h
; [0000002F BYTES: COLLAPSED FUNCTION __alloca_probe. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 10h
; [00000006 BYTES: COLLAPSED FUNCTION RtlUnwind. PRESS CTRL-NUMPAD+ TO EXPAND]
		align 400h
_text		ends

; Section 2. (virtual address 0000D000)
; Virtual size			: 000008AB (   2219.)
; Section size in file		: 00001000 (   4096.)
; Offset to raw	data for section: 0000D000
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from DDRAW.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; HRESULT __stdcall DirectDrawCreate(GUID *lpGUID, LPDIRECTDRAW	*lplpDD, IUnknown *pUnkOuter)
		extrn __imp_DirectDrawCreate:dword ; DATA XREF:	DirectDrawCreater
					; .rdata:1000D440o

;
; Imports from KERNEL32.dll
;
; void __stdcall RtlUnwind(PVOID TargetFrame, PVOID TargetIp, PEXCEPTION_RECORD	ExceptionRecord, PVOID ReturnValue)
		extrn __imp_RtlUnwind:dword ; DATA XREF: RtlUnwindr
					; .rdata:1000D454o
; LPWCH	__stdcall GetEnvironmentStringsW()
		extrn GetEnvironmentStringsW:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+1Bp
					; ___crtGetEnvironmentStringsA+5Bp
					; DATA XREF: ...
; LPSTR	__stdcall GetCommandLineA()
		extrn GetCommandLineA:dword ; CODE XREF: _CRT_INIT(x,x,x):loc_1000A3A6p
					; DATA XREF: _CRT_INIT(x,x,x):loc_1000A3A6r
; DWORD	__stdcall GetVersion()
		extrn GetVersion:dword	; CODE XREF: _CRT_INIT(x,x,x)+Dp
					; DATA XREF: _CRT_INIT(x,x,x)+Dr
; void __stdcall ExitProcess(UINT uExitCode)
		extrn ExitProcess:dword	; CODE XREF: _doexit+9Dp
					; DATA XREF: _doexit+9Dr
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
		extrn TerminateProcess:dword ; CODE XREF: _doexit+1Cp
					; DATA XREF: _doexit+1Cr
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: _doexit+15p
					; DATA XREF: _doexit+15r
; DWORD	__stdcall GetCurrentThreadId()
		extrn GetCurrentThreadId:dword ; CODE XREF: __mtinit+3Fp
					; DATA XREF: __mtinit+3Fr
; BOOL __stdcall TlsSetValue(DWORD dwTlsIndex, LPVOID lpTlsValue)
		extrn TlsSetValue:dword	; CODE XREF: __mtinit+2Ep
					; __freeptd+98p
					; DATA XREF: ...
; DWORD	__stdcall TlsAlloc()
		extrn TlsAlloc:dword	; CODE XREF: __mtinit+6p
					; DATA XREF: __mtinit+6r
; BOOL __stdcall TlsFree(DWORD dwTlsIndex)
		extrn TlsFree:dword	; CODE XREF: __mtterm+10p
					; DATA XREF: __mtterm+10r
; LPVOID __stdcall TlsGetValue(DWORD dwTlsIndex)
		extrn TlsGetValue:dword	; CODE XREF: __freeptd+18p
					; DATA XREF: __freeptd+18r
; UINT __stdcall SetHandleCount(UINT uNumber)
		extrn SetHandleCount:dword ; CODE XREF:	__ioinit+1B1p
					; DATA XREF: __ioinit+1B1r
; HANDLE __stdcall GetStdHandle(DWORD nStdHandle)
		extrn GetStdHandle:dword ; CODE	XREF: __ioinit+16Cp
					; __NMSG_WRITE+143p
					; DATA XREF: ...
; DWORD	__stdcall GetFileType(HANDLE hFile)
		extrn GetFileType:dword	; CODE XREF: __ioinit+109p
					; __ioinit+17Ap
					; DATA XREF: ...
; void __stdcall GetStartupInfoA(LPSTARTUPINFOA	lpStartupInfo)
		extrn GetStartupInfoA:dword ; CODE XREF: __ioinit+5Ep
					; DATA XREF: __ioinit+5Er
; void __stdcall DeleteCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn DeleteCriticalSection:dword ; CODE XREF: __ioterm+23p
					; __mtdeletelocks+34p ...
; DWORD	__stdcall GetModuleFileNameA(HMODULE hModule, LPSTR lpFilename,	DWORD nSize)
		extrn GetModuleFileNameA:dword ; CODE XREF: __setargv+23p
					; __NMSG_WRITE+6Dp
					; DATA XREF: ...
; BOOL __stdcall FreeEnvironmentStringsA(LPCH)
		extrn FreeEnvironmentStringsA:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+11Fp
					; DATA XREF: ___crtGetEnvironmentStringsA+11Fr
; BOOL __stdcall FreeEnvironmentStringsW(LPWCH)
		extrn FreeEnvironmentStringsW:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+CEp
					; DATA XREF: ___crtGetEnvironmentStringsA+CEr
; int __stdcall	WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWSTR lpWideCharStr, int cchWideChar, LPSTR	lpMultiByteStr,	int cbMultiByte, LPCSTR	lpDefaultChar, LPBOOL lpUsedDefaultChar)
		extrn WideCharToMultiByte:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+93p
					; ___crtGetEnvironmentStringsA+B5p ...
; LPCH __stdcall GetEnvironmentStrings()
		extrn GetEnvironmentStrings:dword
					; CODE XREF: ___crtGetEnvironmentStringsA:loc_1000AC73p
					; ___crtGetEnvironmentStringsA+E1p
					; DATA XREF: ...
; BOOL __stdcall HeapDestroy(HANDLE hHeap)
		extrn HeapDestroy:dword	; CODE XREF: __heap_init+2Fp
					; __heap_term+6Cp
					; DATA XREF: ...
; HANDLE __stdcall HeapCreate(DWORD flOptions, SIZE_T dwInitialSize, SIZE_T dwMaximumSize)
		extrn HeapCreate:dword	; CODE XREF: __heap_init+11p
					; DATA XREF: __heap_init+11r
; BOOL __stdcall VirtualFree(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType)
		extrn VirtualFree:dword	; CODE XREF: __heap_term+2Ep
					; __heap_term+39p ...
; BOOL __stdcall HeapFree(HANDLE hHeap,	DWORD dwFlags, LPVOID lpMem)
		extrn HeapFree:dword	; CODE XREF: __heap_term+46p
					; __heap_term+64p ...
; BOOL __stdcall WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,	LPDWORD	lpNumberOfBytesWritten,	LPOVERLAPPED lpOverlapped)
		extrn WriteFile:dword	; CODE XREF: __NMSG_WRITE+14Ap
					; DATA XREF: __NMSG_WRITE+14Ar
; void __stdcall InitializeCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn InitializeCriticalSection:dword ;	CODE XREF: __mtinitlocks+Dp
					; __mtinitlocks+15p ...
; void __stdcall EnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn EnterCriticalSection:dword ; CODE	XREF: __lock+58p
					; DATA XREF: __lock+58r
; void __stdcall LeaveCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn LeaveCriticalSection:dword ; CODE	XREF: __unlock+Dp
					; DATA XREF: __unlock+Dr
; LPVOID __stdcall HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
		extrn HeapAlloc:dword	; CODE XREF: _calloc+55p
					; __heap_alloc+45p ...
; BOOL __stdcall GetCPInfo(UINT	CodePage, LPCPINFO lpCPInfo)
		extrn GetCPInfo:dword	; CODE XREF: __setmbcp+51p
					; _setSBUpLow+14p
					; DATA XREF: ...
; UINT __stdcall GetACP()
		extrn GetACP:dword	; DATA XREF: _getSystemCP+2Fr
; UINT __stdcall GetOEMCP()
		extrn GetOEMCP:dword	; DATA XREF: _getSystemCP+1Ar
; LPVOID __stdcall VirtualAlloc(LPVOID lpAddress, SIZE_T dwSize, DWORD flAllocationType, DWORD flProtect)
		extrn VirtualAlloc:dword ; CODE	XREF: ___sbh_alloc_new_region+76p
					; ___sbh_alloc_new_group+51p
					; DATA XREF: ...
; LPVOID __stdcall HeapReAlloc(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem, SIZE_T dwBytes)
		extrn HeapReAlloc:dword	; CODE XREF: ___sbh_alloc_new_region+28p
					; DATA XREF: ___sbh_alloc_new_region+28r
; FARPROC __stdcall GetProcAddress(HMODULE hModule, LPCSTR lpProcName)
		extrn GetProcAddress:dword ; CODE XREF:	___crtMessageBoxA+2Ap
					; ___crtMessageBoxA+3Bp ...
; HMODULE __stdcall LoadLibraryA(LPCSTR	lpLibFileName)
		extrn LoadLibraryA:dword ; CODE	XREF: ___crtMessageBoxA+12p
					; DATA XREF: ___crtMessageBoxA+12r
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn MultiByteToWideChar:dword	; CODE XREF: ___crtLCMapStringA+DFp
					; ___crtLCMapStringA+137p ...
; int __stdcall	LCMapStringA(LCID Locale, DWORD	dwMapFlags, LPCSTR lpSrcStr, int cchSrc, LPSTR lpDestStr, int cchDest)
		extrn LCMapStringA:dword ; CODE	XREF: ___crtLCMapStringA+5Ep
					; ___crtLCMapStringA+A7p
					; DATA XREF: ...
; int __stdcall	LCMapStringW(LCID Locale, DWORD	dwMapFlags, LPCWSTR lpSrcStr, int cchSrc, LPWSTR lpDestStr, int	cchDest)
		extrn LCMapStringW:dword ; CODE	XREF: ___crtLCMapStringA+42p
					; ___crtLCMapStringA+14Dp ...
; BOOL __stdcall GetStringTypeA(LCID Locale, DWORD dwInfoType, LPCSTR lpSrcStr,	int cchSrc, LPWORD lpCharType)
		extrn GetStringTypeA:dword ; CODE XREF:	___crtGetStringTypeA+59p
					; ___crtGetStringTypeA+8Dp
					; DATA XREF: ...
; BOOL __stdcall GetStringTypeW(DWORD dwInfoType, LPCWSTR lpSrcStr, int	cchSrc,	LPWORD lpCharType)
		extrn GetStringTypeW:dword ; CODE XREF:	___crtGetStringTypeA+3Fp
					; ___crtGetStringTypeA+12Dp
					; DATA XREF: ...

;
; Imports from USER32.dll
;
; BOOL __stdcall SetWindowPos(HWND hWnd, HWND hWndInsertAfter, int X, int Y, int cx, int cy, UINT uFlags)
		extrn SetWindowPos:dword ; CODE	XREF: SetDisplayMode+47p
					; DATA XREF: SetDisplayMode+47r ...


; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 1000D0C0h
aRuntimeError	db 'runtime error ',0   ; DATA XREF: .data:1000E194o
		align 10h
asc_1000D0D0	db 0Dh,0Ah,0		; DATA XREF: .data:1000E18Co
		align 4
aTlossError	db 'TLOSS error',0Dh,0Ah,0 ; DATA XREF: .data:1000E184o
		align 4
aSingError	db 'SING error',0Dh,0Ah,0 ; DATA XREF: .data:1000E17Co
		align 4
aDomainError	db 'DOMAIN error',0Dh,0Ah,0 ; DATA XREF: .data:1000E174o
		align 4
aR6028UnableToI	db 'R6028',0Dh,0Ah      ; DATA XREF: .data:1000E16Co
		db '- unable to initialize heap',0Dh,0Ah,0
		align 4
aR6027NotEnough	db 'R6027',0Dh,0Ah      ; DATA XREF: .data:1000E164o
		db '- not enough space for lowio initialization',0Dh,0Ah,0
		align 4
aR6026NotEnough	db 'R6026',0Dh,0Ah      ; DATA XREF: .data:1000E15Co
		db '- not enough space for stdio initialization',0Dh,0Ah,0
		align 4
aR6025PureVirtu	db 'R6025',0Dh,0Ah      ; DATA XREF: .data:1000E154o
		db '- pure virtual function call',0Dh,0Ah,0
		align 4
aR6024NotEnough	db 'R6024',0Dh,0Ah      ; DATA XREF: .data:1000E14Co
		db '- not enough space for _onexit/atexit table',0Dh,0Ah,0
		align 4
aR6019UnableToO	db 'R6019',0Dh,0Ah      ; DATA XREF: .data:1000E144o
		db '- unable to open console device',0Dh,0Ah,0
		align 4
aR6018Unexpecte	db 'R6018',0Dh,0Ah      ; DATA XREF: .data:1000E13Co
		db '- unexpected heap error',0Dh,0Ah,0
		align 4
aR6017Unexpecte	db 'R6017',0Dh,0Ah      ; DATA XREF: .data:1000E134o
		db '- unexpected multithread lock error',0Dh,0Ah,0
		align 4
aR6016NotEnough	db 'R6016',0Dh,0Ah      ; DATA XREF: .data:1000E12Co
		db '- not enough space for thread data',0Dh,0Ah,0
aAbnormalProgra	db 0Dh,0Ah		; DATA XREF: .data:1000E124o
		db 'abnormal program termination',0Dh,0Ah,0
		align 4
aR6009NotEnough	db 'R6009',0Dh,0Ah      ; DATA XREF: .data:1000E11Co
		db '- not enough space for environment',0Dh,0Ah,0
aR6008NotEnough	db 'R6008',0Dh,0Ah      ; DATA XREF: .data:1000E114o
		db '- not enough space for arguments',0Dh,0Ah,0
		align 4
aR6002FloatingP	db 'R6002',0Dh,0Ah      ; DATA XREF: .data:off_1000E10Co
		db '- floating point not loaded',0Dh,0Ah,0
		align 4
aMicrosoftVisua	db 'Microsoft Visual C++ Runtime Library',0 ; DATA XREF: __NMSG_WRITE+119o
		align 4
; char asc_1000D374[]
asc_1000D374	db 0Ah			; DATA XREF: __NMSG_WRITE+F1o
		db 0Ah,0
		align 4
; char aRuntimeErrorPr[]
aRuntimeErrorPr	db 'Runtime Error!',0Ah ; DATA XREF: __NMSG_WRITE+D3o
		db 0Ah
		db 'Program: ',0
		align 4
; char a___[]
a___		db '...',0              ; DATA XREF: __NMSG_WRITE+BFo
; char Source[]
Source		db '<program name unknown>',0 ; DATA XREF: __NMSG_WRITE+7Do
		align 10h
; char aGetlastactivep[]
aGetlastactivep	db 'GetLastActivePopup',0 ; DATA XREF: ___crtMessageBoxA+3Do
		align 4
; char aGetactivewindo[]
aGetactivewindo	db 'GetActiveWindow',0  ; DATA XREF: ___crtMessageBoxA+35o
; char ProcName[]
ProcName	db 'MessageBoxA',0      ; DATA XREF: ___crtMessageBoxA+24o
; char LibFileName[]
LibFileName	db 'user32.dll',0       ; DATA XREF: ___crtMessageBoxA+Do
		align 4
; char byte_1000D3EC[]
byte_1000D3EC	db 4 dup(0)		; DATA XREF: ___crtLCMapStringA+57o
					; ___crtGetStringTypeA+52o
; const	WCHAR SrcStr
SrcStr		dw 0			; DATA XREF: ___crtLCMapStringA+36o
					; ___crtGetStringTypeA+39o
		align 8
unk_1000D3F8	db 0FFh			; DATA XREF: ___crtLCMapStringA+5o
		db 0FFh
		db 0FFh
		db 0FFh
		dd offset loc_1000C623
		dd offset loc_1000C627
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		dd offset loc_1000C6D7
		dd offset loc_1000C6DB
unk_1000D410	db 0FFh			; DATA XREF: ___crtGetStringTypeA+5o
		db 0FFh
		db 0FFh
		db 0FFh
		dd offset loc_1000C85B
		dd offset loc_1000C85F
__IMPORT_DESCRIPTOR_USER32 dd rva off_1000D524 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aUser32_dll	; DLL Name
		dd rva SetWindowPos	; Import Address Table
__IMPORT_DESCRIPTOR_DDRAW dd rva off_1000D46C ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aDdraw_dll	; DLL Name
		dd rva __imp_DirectDrawCreate ;	Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_1000D474 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva __imp_RtlUnwind	; Import Address Table
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
;
; Import names for DDRAW.dll
;
off_1000D46C	dd rva word_1000D548	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_DDRAWo
		dd 0
;
; Import names for KERNEL32.dll
;
off_1000D474	dd rva word_1000D846	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_1000D6D6
		dd rva word_1000D566
		dd rva word_1000D578
		dd rva word_1000D586
		dd rva word_1000D594
		dd rva word_1000D5A8
		dd rva word_1000D5BC
		dd rva word_1000D5D2
		dd rva word_1000D5E0
		dd rva word_1000D5EC
		dd rva word_1000D5F6
		dd rva word_1000D604
		dd rva word_1000D616
		dd rva word_1000D626
		dd rva word_1000D634
		dd rva word_1000D646
		dd rva word_1000D65E
		dd rva word_1000D674
		dd rva word_1000D68E
		dd rva word_1000D6A8
		dd rva word_1000D6BE
		dd rva word_1000D6F0
		dd rva word_1000D6FE
		dd rva word_1000D70C
		dd rva word_1000D71A
		dd rva word_1000D726
		dd rva word_1000D732
		dd rva word_1000D74E
		dd rva word_1000D766
		dd rva word_1000D77E
		dd rva word_1000D78A
		dd rva word_1000D796
		dd rva word_1000D7A0
		dd rva word_1000D7AC
		dd rva word_1000D7BC
		dd rva word_1000D7CA
		dd rva word_1000D7DC
		dd rva word_1000D7EC
		dd rva word_1000D802
		dd rva word_1000D812
		dd rva word_1000D822
		dd rva word_1000D834
		dd 0
;
; Import names for USER32.dll
;
off_1000D524	dd rva word_1000D52C	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_USER32o
		dd 0
word_1000D52C	dw 25Bh			; DATA XREF: .rdata:off_1000D524o
		db 'SetWindowPos',0
		align 4
aUser32_dll	db 'USER32.dll',0       ; DATA XREF: .rdata:1000D428o
		align 4
word_1000D548	dw 7			; DATA XREF: .rdata:off_1000D46Co
		db 'DirectDrawCreate',0
		align 4
aDdraw_dll	db 'DDRAW.dll',0        ; DATA XREF: .rdata:1000D43Co
word_1000D566	dw 0CAh			; DATA XREF: .rdata:1000D47Co
		db 'GetCommandLineA',0
word_1000D578	dw 174h			; DATA XREF: .rdata:1000D480o
		db 'GetVersion',0
		align 2
word_1000D586	dw 7Dh			; DATA XREF: .rdata:1000D484o
		db 'ExitProcess',0
word_1000D594	dw 29Eh			; DATA XREF: .rdata:1000D488o
		db 'TerminateProcess',0
		align 4
word_1000D5A8	dw 0F7h			; DATA XREF: .rdata:1000D48Co
		db 'GetCurrentProcess',0
word_1000D5BC	dw 0FAh			; DATA XREF: .rdata:1000D490o
		db 'GetCurrentThreadId',0
		align 2
word_1000D5D2	dw 2A5h			; DATA XREF: .rdata:1000D494o
		db 'TlsSetValue',0
word_1000D5E0	dw 2A2h			; DATA XREF: .rdata:1000D498o
		db 'TlsAlloc',0
		align 4
word_1000D5EC	dw 2A3h			; DATA XREF: .rdata:1000D49Co
		db 'TlsFree',0
word_1000D5F6	dw 2A4h			; DATA XREF: .rdata:1000D4A0o
		db 'TlsGetValue',0
word_1000D604	dw 26Dh			; DATA XREF: .rdata:1000D4A4o
		db 'SetHandleCount',0
		align 2
word_1000D616	dw 152h			; DATA XREF: .rdata:1000D4A8o
		db 'GetStdHandle',0
		align 2
word_1000D626	dw 115h			; DATA XREF: .rdata:1000D4ACo
		db 'GetFileType',0
word_1000D634	dw 150h			; DATA XREF: .rdata:1000D4B0o
		db 'GetStartupInfoA',0
word_1000D646	dw 55h			; DATA XREF: .rdata:1000D4B4o
		db 'DeleteCriticalSection',0
word_1000D65E	dw 124h			; DATA XREF: .rdata:1000D4B8o
		db 'GetModuleFileNameA',0
		align 4
word_1000D674	dw 0B2h			; DATA XREF: .rdata:1000D4BCo
		db 'FreeEnvironmentStringsA',0
word_1000D68E	dw 0B3h			; DATA XREF: .rdata:1000D4C0o
		db 'FreeEnvironmentStringsW',0
word_1000D6A8	dw 2D2h			; DATA XREF: .rdata:1000D4C4o
		db 'WideCharToMultiByte',0
word_1000D6BE	dw 106h			; DATA XREF: .rdata:1000D4C8o
		db 'GetEnvironmentStrings',0
word_1000D6D6	dw 108h			; DATA XREF: .rdata:1000D478o
		db 'GetEnvironmentStringsW',0
		align 10h
word_1000D6F0	dw 19Dh			; DATA XREF: .rdata:1000D4CCo
		db 'HeapDestroy',0
word_1000D6FE	dw 19Bh			; DATA XREF: .rdata:1000D4D0o
		db 'HeapCreate',0
		align 4
word_1000D70C	dw 2BFh			; DATA XREF: .rdata:1000D4D4o
		db 'VirtualFree',0
word_1000D71A	dw 19Fh			; DATA XREF: .rdata:1000D4D8o
		db 'HeapFree',0
		align 2
word_1000D726	dw 2DFh			; DATA XREF: .rdata:1000D4DCo
		db 'WriteFile',0
word_1000D732	dw 1AAh			; DATA XREF: .rdata:1000D4E0o
		db 'InitializeCriticalSection',0
word_1000D74E	dw 66h			; DATA XREF: .rdata:1000D4E4o
		db 'EnterCriticalSection',0
		align 2
word_1000D766	dw 1C1h			; DATA XREF: .rdata:1000D4E8o
		db 'LeaveCriticalSection',0
		align 2
word_1000D77E	dw 199h			; DATA XREF: .rdata:1000D4ECo
		db 'HeapAlloc',0
word_1000D78A	dw 0BFh			; DATA XREF: .rdata:1000D4F0o
		db 'GetCPInfo',0
word_1000D796	dw 0B9h			; DATA XREF: .rdata:1000D4F4o
		db 'GetACP',0
		align 10h
word_1000D7A0	dw 131h			; DATA XREF: .rdata:1000D4F8o
		db 'GetOEMCP',0
		align 4
word_1000D7AC	dw 2BBh			; DATA XREF: .rdata:1000D4FCo
		db 'VirtualAlloc',0
		align 4
word_1000D7BC	dw 1A2h			; DATA XREF: .rdata:1000D500o
		db 'HeapReAlloc',0
word_1000D7CA	dw 13Eh			; DATA XREF: .rdata:1000D504o
		db 'GetProcAddress',0
		align 4
word_1000D7DC	dw 1C2h			; DATA XREF: .rdata:1000D508o
		db 'LoadLibraryA',0
		align 4
word_1000D7EC	dw 1E4h			; DATA XREF: .rdata:1000D50Co
		db 'MultiByteToWideChar',0
word_1000D802	dw 1BFh			; DATA XREF: .rdata:1000D510o
		db 'LCMapStringA',0
		align 2
word_1000D812	dw 1C0h			; DATA XREF: .rdata:1000D514o
		db 'LCMapStringW',0
		align 2
word_1000D822	dw 153h			; DATA XREF: .rdata:1000D518o
		db 'GetStringTypeA',0
		align 4
word_1000D834	dw 156h			; DATA XREF: .rdata:1000D51Co
		db 'GetStringTypeW',0
		align 2
word_1000D846	dw 22Fh			; DATA XREF: .rdata:off_1000D474o
		db 'RtlUnwind',0
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .rdata:1000D450o
		align 10h
;
; Export directory for n2Cad640.dll
;
		dd 0			; Characteristics
		dd 42076F42h		; TimeDateStamp: Mon Feb 07 15:38:10 2005
		dw 0			; MajorVersion
		dw 0			; MinorVersion
		dd rva aN2cad640_dll	; Name
		dd 1			; Base
		dd 1			; NumberOfFunctions
		dd 1			; NumberOfNames
		dd rva off_1000D888	; AddressOfFunctions
		dd rva off_1000D88C	; AddressOfNames
		dd rva word_1000D890	; AddressOfNameOrdinals
;
; Export Address Table for n2Cad640.dll
;
off_1000D888	dd rva CADraw_Init	; DATA XREF: .rdata:1000D87Co
;
; Export Names Table for n2Cad640.dll
;
off_1000D88C	dd rva aCadraw_init	; DATA XREF: .rdata:1000D880o
					; "CADraw_Init"
;
; Export Ordinals Table	for n2Cad640.dll
;
word_1000D890	dw 0			; DATA XREF: .rdata:1000D884o
aN2cad640_dll	db 'n2Cad640.dll',0     ; DATA XREF: .rdata:1000D86Co
aCadraw_init	db 'CADraw_Init',0      ; DATA XREF: .rdata:off_1000D88Co
		align 800h
_rdata		ends

; Section 3. (virtual address 0000E000)
; Virtual size			: 001CE380 (1893248.)
; Section size in file		: 00001000 (   4096.)
; Offset to raw	data for section: 0000E000
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 1000E000h
unk_1000E000	db    0			; DATA XREF: __cinit+1Fo
		db    0
		db    0
		db    0
		dd offset j_nullsub_1
unk_1000E008	db    0			; DATA XREF: __cinit+1Ao
		db    0
		db    0
		db    0
unk_1000E00C	db    0			; DATA XREF: __cinit+10o
		db    0
		db    0
		db    0
		dd offset ___initmbctable
unk_1000E014	db    0			; DATA XREF: __cinit:loc_1000A4F6o
		db    0
		db    0
		db    0
unk_1000E018	db    0			; DATA XREF: _doexit+6Ao
		db    0
		db    0
		db    0
unk_1000E01C	db    0			; DATA XREF: _doexit:loc_1000A59Do
		db    0
		db    0
		db    0
unk_1000E020	db    0			; DATA XREF: _doexit+7Bo
		db    0
		db    0
		db    0
unk_1000E024	db    0			; DATA XREF: _doexit:loc_1000A5AEo
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
dword_1000E030	dd 0			; DATA XREF: sub_100038EE+1Cw
					; sub_100038EE+205r ...
dword_1000E034	dd 0			; DATA XREF: h_________________sub_100034F0+61w
					; h_________________sub_100034F0+230w ...
dword_1000E038	dd 0			; DATA XREF: h_________________sub_100034F0+1Ew
					; h_________________sub_100034F0:loc_100036B1r	...
		db  40h	; @
dword_1000E03D	dd 0			; DATA XREF: h_________________sub_100034F0+FAw
					; h_________________sub_100034F0+105r ...
dword_1000E041	dd 0			; DATA XREF: h_________________sub_100034F0:loc_10003612w
					; h_________________sub_100034F0+138w ...
dword_1000E045	dd 0			; DATA XREF: h_________________sub_100034F0+161w
					; h_________________sub_100034F0+188w ...
byte_1000E049	db 0			; DATA XREF: h_________________sub_100034F0:loc_100036CAr
					; h_________________sub_100034F0+1E0w ...
rcRect_left	dw 0			; DATA XREF: h_________________sub_100034F0+33w
					; h_________________sub_100034F0+7Dr ...
rcRect_top	dw 0			; DATA XREF: h_________________sub_100034F0+4Fw
					; h_________________sub_100034F0+A1r ...
rcRect_right	dw 0			; DATA XREF: h_________________sub_100034F0+43w
					; h_________________sub_100034F0+6Cr ...
rcRect_bottom	dw 0			; DATA XREF: h_________________sub_100034F0+5Bw
					; h_________________sub_100034F0+90r ...
		align 4
dword_1000E054	dd 2			; DATA XREF: sub_10006FE2+7Ew
					; sub_10006FE2+AFw ...
		db    0
		db    0
		db    0
		db    0
dword_1000E05C	dd 0			; DATA XREF: sub_10004460+E9w
					; sub_10004460+163r ...
dword_1000E060	dd 0			; DATA XREF: sub_10004460+FCw
					; sub_10004460+11Ar ...
dword_1000E064	dd 0			; DATA XREF: sub_10004460+75w
					; sub_10004460+114r ...
dword_1000E068	dd 0			; DATA XREF: sub_10005493+8w
					; sub_10005493+25Dr ...
; int (__cdecl *dword_1000E06C)(_DWORD,	_DWORD)
dword_1000E06C	dd 0			; DATA XREF: sub_10004460+108w
					; sub_10004460+122w ...
g_rcScreenSmallRect SMALL_RECT <0>	; DATA XREF: sub_10004460+27w
					; sub_10004460+DEr ...
dword_1000E078	dd 0			; DATA XREF: sub_10004460+16w
					; sub_10004460:loc_1000476Cr ...
dword_1000E07C	dd 0			; DATA XREF: sub_10004460:loc_100045B5w
					; sub_10004460:loc_100046F6r ...
dword_1000E080	dd 0			; DATA XREF: sub_10004AB6+178w
					; sub_10004AB6:loc_10004C3Br ...
dword_1000E084	dd 0			; DATA XREF: sub_10005493+25w
					; sub_10005493+255r ...
dword_1000E088	dd 0			; DATA XREF: sub_10005493+30w
					; sub_1000687D+27w ...
dword_1000E08C	dd 0			; DATA XREF: sub_10004460+4w
					; sub_10004460+31Er ...
dword_1000E090	dd 0			; DATA XREF: sub_10004460+Aw
					; sub_10004460+318r ...
dword_1000E094	dd 0			; DATA XREF: sub_10004460+10w
					; sub_10004460+312r ...
		db    0
		db    0
dword_1000E09A	dd 0			; DATA XREF: sub_10004460+70w
					; sub_10004460+90w ...
dword_1000E09E	dd 0			; DATA XREF: sub_10004460+131w
					; sub_10004460+150w ...
dword_1000E0A2	dd 0			; DATA XREF: .text:__cfltcvt_initw
					; .text:1000882Bw ...
dword_1000E0A6	dd 0			; DATA XREF: .text:100087E1w
					; .text:loc_10008881w
dword_1000E0AA	dd 0			; DATA XREF: x_sub_100087A1+9w
					; .text:100087F3w ...
dword_1000E0AE	dd 0			; DATA XREF: x_sub_100087A1+18w
					; .text:100087FDw ...
dword_1000E0B2	dd 0			; DATA XREF: x_sub_100087A1+27w
					; .text:10008807w ...
dword_1000E0B6	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+9w
					; x_sub_100088E9_DrawStruct:loc_10008A1Dr ...
dword_1000E0BA	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+14w
					; x_sub_100088E9_DrawStruct+13Fr ...
dword_1000E0BE	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+1Dw
					; x_sub_100088E9_DrawStruct+8Dr ...
dword_1000E0C2	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+26w
					; x_sub_100088E9_DrawStruct+A5r ...
dword_1000E0C6	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+2Fw
					; x_sub_100088E9_DrawStruct+99r ...
dword_1000E0CA	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+38w
					; x_sub_100088E9_DrawStruct+B1r ...
dword_1000E0CE	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+41w
					; x_sub_100088E9_DrawStruct+87r ...
dword_1000E0D2	dd 0			; DATA XREF: x_sub_100088E9_DrawStruct+4Aw
					; x_sub_100088E9_DrawStruct+BDr ...
		align 4
off_1000E0D8	dd offset __exit	; DATA XREF: __amsg_exit+2Ar
; DWORD	dwTlsIndex
dwTlsIndex	dd 0FFFFFFFFh		; DATA XREF: __mtinit+Fw __mtinit+28r	...
		db 0FFh
		db 0FFh
		db 0FFh
		db 0FFh
		db    0
		db  0Ah
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  10h
		db    0
		db    0
		db    0
dword_1000E108	dd 2			; DATA XREF: __NMSG_WRITE+Eo
					; __NMSG_WRITE+28r
off_1000E10C	dd offset aR6002FloatingP ; DATA XREF: __NMSG_WRITE+FCr
					; __NMSG_WRITE+12Do
					; "R6002\r\n- floating point not loaded\r\"...
		db    8
		db    0
		db    0
		db    0
		dd offset aR6008NotEnough ; "R6008\r\n-	not enough space for argumen"...
		db    9
		db    0
		db    0
		db    0
		dd offset aR6009NotEnough ; "R6009\r\n-	not enough space for environ"...
		db  0Ah
		db    0
		db    0
		db    0
		dd offset aAbnormalProgra ; "\r\nabnormal program termination\r\n"
		db  10h
		db    0
		db    0
		db    0
		dd offset aR6016NotEnough ; "R6016\r\n-	not enough space for thread "...
		db  11h
		db    0
		db    0
		db    0
		dd offset aR6017Unexpecte ; "R6017\r\n-	unexpected multithread lock "...
		db  12h
		db    0
		db    0
		db    0
		dd offset aR6018Unexpecte ; "R6018\r\n-	unexpected heap	error\r\n"
		db  13h
		db    0
		db    0
		db    0
		dd offset aR6019UnableToO ; "R6019\r\n-	unable to open console devic"...
		db  18h
		db    0
		db    0
		db    0
		dd offset aR6024NotEnough ; "R6024\r\n-	not enough space for _onexit"...
		db  19h
		db    0
		db    0
		db    0
		dd offset aR6025PureVirtu ; "R6025\r\n-	pure virtual function call\r"...
		db  1Ah
		db    0
		db    0
		db    0
		dd offset aR6026NotEnough ; "R6026\r\n-	not enough space for stdio i"...
		db  1Bh
		db    0
		db    0
		db    0
		dd offset aR6027NotEnough ; "R6027\r\n-	not enough space for lowio i"...
		db  1Ch
		db    0
		db    0
		db    0
		dd offset aR6028UnableToI ; "R6028\r\n-	unable to initialize heap\r\"...
		db  78h	; x
		db    0
		db    0
		db    0
		dd offset aDomainError	; "DOMAIN error\r\n"
		db  79h	; y
		db    0
		db    0
		db    0
		dd offset aSingError	; "SING	error\r\n"
		db  7Ah	; z
		db    0
		db    0
		db    0
		dd offset aTlossError	; "TLOSS error\r\n"
		db 0FCh	; ü
		db    0
		db    0
		db    0
		dd offset asc_1000D0D0	; "\r\n"
		db 0FFh
		db    0
		db    0
		db    0
		dd offset aRuntimeError	; "runtime error "
; LPCRITICAL_SECTION dword_1000E198
dword_1000E198	dd 0			; DATA XREF: __NMSG_WRITE+1Bo
					; __mtdeletelocks+8o ...
; LPCRITICAL_SECTION off_1000E19C
off_1000E19C	dd offset unk_101DBF68	; DATA XREF: __mtinitlocks+1Fr
					; __mtdeletelocks+2Bo ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; LPCRITICAL_SECTION off_1000E1BC
off_1000E1BC	dd offset unk_101DBF98	; DATA XREF: __mtinitlocks+17r
					; __mtdeletelocks+23o ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; LPCRITICAL_SECTION off_1000E1CC
off_1000E1CC	dd offset unk_101DBFB0	; DATA XREF: __mtinitlocks+Fr
					; __mtdeletelocks+1Bo ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
; LPCRITICAL_SECTION lpCriticalSection
lpCriticalSection dd offset unk_101DBF80 ; DATA	XREF: __mtinitlocks+7r
					; __mtdeletelocks+13o ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_1000E258	db    5			; DATA XREF: __initptd+4o
					; __freeptd+7Bo ...
		db    0
		db    0
		db 0C0h	; À
		db  0Bh
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  1Dh
		db    0
		db    0
		db 0C0h	; À
		db    4
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  96h	; –
		db    0
		db    0
		db 0C0h	; À
		db    4
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  8Dh	; 
		db    0
		db    0
		db 0C0h	; À
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  8Eh	; Ž
		db    0
		db    0
		db 0C0h	; À
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  8Fh	; 
		db    0
		db    0
		db 0C0h	; À
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  90h	; 
		db    0
		db    0
		db 0C0h	; À
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  91h	; ‘
		db    0
		db    0
		db 0C0h	; À
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  92h	; ’
		db    0
		db    0
		db 0C0h	; À
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  93h	; “
		db    0
		db    0
		db 0C0h	; À
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    3
		db    0
		db    0
		db    0
		db    7
		db    0
		db    0
		db    0
		db  78h	; x
		db    0
		db    0
		db    0
		db  0Ah
		db    0
		db    0
		db    0
byte_1000E2E0	db 1			; DATA XREF: __setmbcp+EDr
		db    2
		db    4
		db    8
		db    0
		db    0
		db    0
		db    0
unk_1000E2E8	db 0A4h	; ¤		; DATA XREF: __setmbcp+38o
		db    3
		db    0
		db    0
aVyv		db '`‚y‚!',0            ; DATA XREF: __setmbcp+129o
		align 8
aJ		db '¦ß',0               ; DATA XREF: __setmbcp+CCo
		align 10h
aBe		db '¡¥',0
		align 8
		db  81h	; 
		db  9Fh	; Ÿ
		db 0E0h	; à
		db 0FCh	; ü
		db    0
		db    0
		db    0
		db    0
		db  40h	; @
		db  7Eh	; ~
		db  80h	; €
		db 0FCh	; ü
		db    0
		db    0
		db    0
		db    0
		db 0A8h	; ¨
		db    3
		db    0
		db    0
		db 0C1h	; Á
		db 0A3h	; £
		db 0DAh	; Ú
		db 0A3h	; £
		db  20h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  81h	; 
		db 0FEh	; þ
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  40h	; @
		db 0FEh	; þ
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db 0B5h	; µ
		db    3
		db    0
		db    0
		db 0C1h	; Á
		db 0A3h	; £
		db 0DAh	; Ú
		db 0A3h	; £
		db  20h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  81h	; 
		db 0FEh	; þ
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  41h	; A
		db 0FEh	; þ
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db 0B6h	; ¶
		db    3
		db    0
		db    0
		db 0CFh	; Ï
		db 0A2h	; ¢
		db 0E4h	; ä
		db 0A2h	; ¢
		db  1Ah
		db    0
		db 0E5h	; å
		db 0A2h	; ¢
		db 0E8h	; è
		db 0A2h	; ¢
		db  5Bh	; [
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  81h	; 
		db 0FEh	; þ
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  40h	; @
		db  7Eh	; ~
		db 0A1h	; ¡
		db 0FEh	; þ
		db    0
		db    0
		db    0
		db    0
		db  51h	; Q
		db    5
		db    0
		db    0
		db  51h	; Q
		db 0DAh	; Ú
		db  5Eh	; ^
		db 0DAh	; Ú
		db  20h
		db    0
		db  5Fh	; _
		db 0DAh	; Ú
		db  6Ah	; j
		db 0DAh	; Ú
		db  32h	; 2
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  81h	; 
		db 0D3h	; Ó
		db 0D8h	; Ø
		db 0DEh	; Þ
		db 0E0h	; à
		db 0F9h	; ù
		db    0
		db    0
		db  31h	; 1
		db  7Eh	; ~
		db  81h	; 
		db 0FEh	; þ
		db    0
		db    0
		db    0
		db    0
unk_1000E3D8	db    0			; DATA XREF: __setmbcp+45o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
dword_1000E3E0	dd 3F8h			; DATA XREF: _calloc+27r
					; __heap_alloc+5r
		align 10h
unk_1000E3F0	db  20h			; DATA XREF: .text:1000CCB7o
					; __NLG_Notify+2o
		db    5
		db  93h	; “
		db  19h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
dword_1000E400	dd 0			; DATA XREF: sub_10002C70+16Cw
					; sub_10002C70:loc_10002DEAr ...
dword_1000E404	dd 0			; DATA XREF: sub_10002C70+118w
					; sub_10002C70:loc_10002DC9w ...
dword_1000E408	dd 0			; DATA XREF: sub_10002C70+C3w
					; sub_10002C70+10Ew ...
dword_1000E40C	dd 0			; DATA XREF: sub_10002C70+74w
					; sub_10002C70+367r
dword_1000E410	dd 0			; DATA XREF: sub_10002C70+63w
					; sub_10002C70+2B9r ...
		align 8
g_rcScreenRect	RECT <0>		; DATA XREF: Initialize+2Cw
					; SetDisplayMode+C4w ...
g_uBufferOrigin16 dd 0			; DATA XREF: Initialize+21w
					; DrawHorizontalLineToPrimaryBuffer+44r ...
g_dwSurfaceHeight dd 0			; DATA XREF: Initialize+26w
					; DrawHorizontalLineToPrimaryBuffer+53r ...
g_dwWidth	dd 0			; DATA XREF: Initialize+7w
					; x_sub_10001EA0_callr	...
g_dwHeight	dd 0			; DATA XREF: Initialize+11w
g_dwWidthInBytes dd 0			; DATA XREF: Initialize+17w
					; x_sub_100024C0+61r ...
; BYTE *g_pBufferPrimary
g_pBufferPrimary dd 0			; DATA XREF: CADraw_Initw
					; x_sub_10001D00+70r ...
; BYTE *g_pBufferSecondary
g_pBufferSecondary dd 0			; DATA XREF: CADraw_Init+Aw
					; x_sub_10001D00+5Dr ...
; BYTE *g_pBufferThird
g_pBufferThird	dd 0			; DATA XREF: CADraw_Init+14w
					; x_sub_10001D00+83r ...
; LPVOID g_pSurfaceData
g_pSurfaceData	dd 0			; DATA XREF: LockSurface+69w
					; UnlockSurface+10w ...
g_dwRBitDoubleMask dd 0			; DATA XREF: SetPixelFormatMasks+13w
					; x_sub_10001BF0_CopyPixelsArray+71r ...
g_dwGBitDoubleMask dd 0			; DATA XREF: SetPixelFormatMasks+21w
					; x_sub_10001BF0_CopyPixelsArray+4Cr ...
g_dwBBitDoubleMask dd 0			; DATA XREF: SetPixelFormatMasks+2Fw
					; x_sub_10001BF0_CopyPixelsArray+5Fr ...
m_wRBitFromLeftOffset dw 0		; DATA XREF: SetPixelFormatMasks:loc_1000119Bw
					; SetPixelFormatMasks+178r ...
m_wGBitFromLeftOffset dw 0		; DATA XREF: SetPixelFormatMasks+89w
					; x_sub_10001BF0_CopyPixelsArray+2Br ...
m_wBBitFromLeftOffset dw 0		; DATA XREF: SetPixelFormatMasks:loc_100011EFw
					; SetPixelFormatMasks+12Er ...
		db    0
		db    0
dword_1000E460	dd 0			; DATA XREF: SetPixelFormatMasks:loc_1000120Bw
					; SetPixelFormatMasks:loc_10001227w ...
dword_1000E464	dd 0			; DATA XREF: SetPixelFormatMasks:loc_10001194w
					; SetPixelFormatMasks:loc_100011BDw ...
dword_1000E468	dd 0			; DATA XREF: SetPixelFormatMasks+14Bw
					; x_sub_100016D0_DrawStruct+B0r ...
word_1000E46C	dw 0			; DATA XREF: SetPixelFormatMasks+134w
					; sub_10002C70+1F0r ...
word_1000E46E	dw 0			; DATA XREF: SetPixelFormatMasks+13Bw
dword_1000E470	dd 0			; DATA XREF: SetPixelFormatMasks+1DDw
					; sub_10002C70+5Dr ...
		align 8
dword_1000E478	dd 0			; DATA XREF: SetPixelFormatMasks+1EAw
; LONG g_lPitch
g_lPitch	dd 0			; DATA XREF: LockSurface+64w
					; CopyDataToDirectDrawSurface+2Cr ...
dword_1000E480	dd 0			; DATA XREF: SetPixelFormatMasks+184w
					; sub_10004AB6+262r ...
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
unk_1000E70C	db    0			; DATA XREF: sub_10002C70+88o
					; sub_10003090+51o
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; __int16 word_10010784[]
word_10010784	dw ?			; DATA XREF: h_________________sub_100034F0+1EEr
					; h_________________sub_100034F0+320r
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; BYTE aTemp512Buff1[512]
aTemp512Buff1	db 200h	dup(?)		; DATA XREF: sub_10004AB6+1Co
; BYTE aTemp512Buff2[512]
aTemp512Buff2	db 200h	dup(?)		; DATA XREF: sub_10004460+1Co
; BYTE aTemp512Buff3[512]
aTemp512Buff3	db 200h	dup(?)		; DATA XREF: sub_10004786+1Co
; HWND g_hWnd
g_hWnd		dd ?			; DATA XREF: CreateDirectDrawAndSetCooperativeLevel+56w
					; SetDisplayMode:loc_10001376r
g_bFullscreen	dd ?			; DATA XREF: CreateDirectDrawAndSetCooperativeLevel:loc_100010A0w
					; ReleaseDirectDrawFullscreen+Er ...
; IDirectDraw *g_lpDirectDraw
g_lpDirectDraw	dd ?			; DATA XREF: CreateDirectDrawAndSetCooperativeLevel+9o
					; CreateDirectDrawAndSetCooperativeLevel+22r ...
; IDirectDrawSurface *g_lpDDrawSurface
g_lpDDrawSurface IDirectDrawSurface <?>	; DATA XREF: ReleaseSurfacer
					; ReleaseSurface+Fw ...
; int (*g_pFnInitialize)(void)
g_pFnInitialize	dd ?			; DATA XREF: SetDisplayMode+AFr
					; CADraw_Init+28w
g_pFnCreateDirectDrawAndSetCooperativeLevel dd ? ; DATA	XREF: CADraw_Init+3Cw
g_fnShutdownDirectDrawFullscreen dd ?	; DATA XREF: CADraw_Init+46w
g_pFnSetDisplayMode dd ?		; DATA XREF: CADraw_Init+50w
g_pFnSetPixelFormatMask	dd ?		; DATA XREF: CADraw_Init+5Aw
g_pFnReleaseSurface dd ?		; DATA XREF: CADraw_Init+64w
g_pFnLockSurface dd ?			; DATA XREF: CADraw_Init+6Ew
g_pFnUnlockSurface dd ?			; DATA XREF: CADraw_Init+78w
g_pFnX_sub_10001D00 dd ?		; DATA XREF: CADraw_Init+82w
g_pFnX_sub_10001BF0 dd ?		; DATA XREF: CADraw_Init+8Cw
g_pFnX_sub_10001C80 dd ?		; DATA XREF: CADraw_Init+96w
g_pFnX_sub_10003400 dd ?		; DATA XREF: CADraw_Init+A0w
g_pFnX_sub_10003490 dd ?		; DATA XREF: CADraw_Init+AAw
g_pFnX_sub_10003430 dd ?		; DATA XREF: CADraw_Init+B4w
g_pFnX_sub_10001EA0_call dd ?		; DATA XREF: CADraw_Init+BEw
g_pFnX_sub_10001F20_call dd ?		; DATA XREF: CADraw_Init+C8w
g_pFnSub_10004460 dd ?			; DATA XREF: CADraw_Init+D2w
g_pFnSub_10004786 dd ?			; DATA XREF: CADraw_Init+DCw
g_pFnSub_10004AB6 dd ?			; DATA XREF: CADraw_Init+E6w
g_pFnSub_10005F01 dd ?			; DATA XREF: CADraw_Init+F0w
g_pFnSub_10005B96 dd ?			; DATA XREF: CADraw_Init+FAw
g_pFnSub_1000586C dd ?			; DATA XREF: CADraw_Init+104w
g_pFnSub_10007678 dd ?			; DATA XREF: CADraw_Init+10Ew
g_pFnSub_10001F90 dd ?			; DATA XREF: CADraw_Init+118w
g_pFnX_sub_10001850 dd ?		; DATA XREF: CADraw_Init+122w
g_pFnX_sub_10001EE0_call dd ?		; DATA XREF: CADraw_Init+12Cw
g_pFnX_sub_10001F50_call dd ?		; DATA XREF: CADraw_Init+136w
g_pFnSub_10003090_1 dd ?		; DATA XREF: CADraw_Init+32w
g_pFnSub_100051AF dd ?			; DATA XREF: CADraw_Init+140w
g_pFnSub_10006586 dd ?			; DATA XREF: CADraw_Init+14Aw
g_pFnSub_1000625D dd ?			; DATA XREF: CADraw_Init+154w
g_pFnSub_10004E80 dd ?			; DATA XREF: CADraw_Init+15Ew
g_pFnSub_10006C48 dd ?			; DATA XREF: CADraw_Init+168w
g_pFnSub_10006FE2 dd ?			; DATA XREF: CADraw_Init+172w
g_pFnSub_1000687D dd ?			; DATA XREF: CADraw_Init+17Cw
g_pFnSub_100073B2 dd ?			; DATA XREF: CADraw_Init+186w
g_pFnSub_10007D0C dd ?			; DATA XREF: CADraw_Init+190w
g_pFnSub_10007938 dd ?			; DATA XREF: CADraw_Init+19Aw
g_pFnSub_10005493 dd ?			; DATA XREF: CADraw_Init+1A4w
g_pFnX_sub_100017F0 dd ?		; DATA XREF: CADraw_Init+1AEw
g_pFnSub_100015E0 dd ?			; DATA XREF: CADraw_Init+1B8w
g_pFnDrawRect	dd ?			; DATA XREF: CADraw_Init+1C2w
g_pFnDrawHorizontalLine	dd ?		; DATA XREF: CADraw_Init+1CCw
g_pFnDrawVerticalLine dd ?		; DATA XREF: CADraw_Init+1D6w
g_pFnSub_100016D0 dd ?			; DATA XREF: CADraw_Init+1E0w
g_pFnSub_100024C0 dd ?			; DATA XREF: CADraw_Init+1EAw
g_pFnSub_10002030 dd ?			; DATA XREF: CADraw_Init+1F4w
g_pFnSub_10002C70 dd ?			; DATA XREF: CADraw_Init+1FEw
g_pFnCopyFromPrimaryBufferToDirectDrawSurface dd ? ; DATA XREF:	CADraw_Init+208w
g_pFnSub_10003090_2 dd ?		; DATA XREF: CADraw_Init+37w
g_pFnDrawImage	dd ?			; DATA XREF: CADraw_Init+212w
g_pFnSub_10002860 dd ?			; DATA XREF: CADraw_Init+21Cw
g_pFnSub_100027C0 dd ?			; DATA XREF: CADraw_Init+226w
g_pFnCopyDataToDirectDrawSurface dd ?	; DATA XREF: CADraw_Init+230w
g_pFnSub_10002B10 dd ?			; DATA XREF: CADraw_Init+23Aw
g_pFnSub_100088E9 dd ?			; DATA XREF: CADraw_Init+244w
g_pFnSub_10009F13 dd ?			; DATA XREF: CADraw_Init+24Ew
g_pFnSub_100098D3 dd ?			; DATA XREF: CADraw_Init+258w
g_pFnReleaseDirectDraw dd ?		; DATA XREF: CADraw_Init+262w
dword_10018E80	dd ?			; DATA XREF: x_sub_100024C0+69w
					; x_sub_100024C0+90w ...
dword_10018E84	dd ?			; DATA XREF: x_sub_100024C0+17Bw
					; x_sub_100024C0+18Bw ...
dword_10018E88	dd ?			; DATA XREF: x_sub_100024C0:loc_10002676w
					; x_sub_100024C0+20Ar ...
dword_10018E8C	dd ?			; DATA XREF: x_sub_100024C0:loc_10002654w
					; x_sub_100024C0+1B0w ...
dword_10018E90	dd ?			; DATA XREF: x_sub_100024C0+2Cw
					; x_sub_100024C0+58w ...
dword_10018E94	dd ?			; DATA XREF: x_sub_100024C0+36w
					; x_sub_100024C0+46w ...
dword_10018E98	dd ?			; DATA XREF: sub_10002C70+292w
					; sub_10002C70+2EFr ...
dword_10018E9C	dd ?			; DATA XREF: sub_10002C70+2A1w
					; sub_10002C70+32Er ...
dword_10018EA0	dd ?			; DATA XREF: sub_10002C70+ECw
					; sub_10002C70+14Fw ...
dword_10018EA4	dd ?			; DATA XREF: sub_10002C70+53w
					; sub_10002C70:loc_10002F2Fw ...
; __int16 g_aBufferPrimary16[307200]
g_aBufferPrimary16 dw 4B000h dup(?)	; DATA XREF: DrawHorizontalLineToPrimaryBuffer+5Do
					; DrawVerticalLineToPrimaryBuffer+67o ...
unk_100AEEA8	db    ?	;		; DATA XREF: x_sub_100024C0+19o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; __int16 g_aBufferSecondary16[307200]
g_aBufferSecondary16 dw	4B000h dup(?)	; DATA XREF: DrawPointToBuffer2+52w
					; CADraw_Init+Ao ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; __int16 g_aBufferThird[307200]
g_aBufferThird	dw 4B000h dup(?)	; DATA XREF: CADraw_Init+14o
					; x_sub_100027C0+16o ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DBDF0	dd ?			; DATA XREF: sub_10002C70+286w
					; sub_10002C70+329r ...
dword_101DBDF4	dd ?			; DATA XREF: sub_10002C70+104w
					; sub_10002C70+128w ...
dword_101DBDF8	dd ?			; DATA XREF: sub_10002C70+F7w
					; sub_10002C70+11Ew ...
dword_101DBDFC	dd ?			; DATA XREF: sub_10002C70+174w
					; sub_10002C70+36Dw ...
dword_101DBE00	dd ?			; DATA XREF: _CRT_INIT(x,x,x)+8Dw
					; _CRT_INIT(x,x,x)+9Br	...
; void *Memory
Memory		dd ?			; DATA XREF: _CRT_INIT(x,x,x)+74w
					; __setenvp:loc_1000A950r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DBE0C	dd ?			; DATA XREF: __amsg_exitr
					; __FF_MSGBANNERr ...
dword_101DBE10	dd ?			; DATA XREF: __amsg_exit+Er
					; __FF_MSGBANNER+Er ...
		align 8
dword_101DBE18	dd ?			; DATA XREF: _CRT_INIT(x,x,x)+15w
					; _CRT_INIT(x,x,x)+24r	...
dword_101DBE1C	dd ?			; DATA XREF: _CRT_INIT(x,x,x)+4Dw
dword_101DBE20	dd ?			; DATA XREF: _CRT_INIT(x,x,x)+3Dw
dword_101DBE24	dd ?			; DATA XREF: _CRT_INIT(x,x,x)+42w
dword_101DBE28	dd ?			; DATA XREF: __setargv+91w
dword_101DBE2C	dd ?			; DATA XREF: __setargv+89w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DBE34	dd ?			; DATA XREF: __setenvp+44w
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DBE44	dd ?			; DATA XREF: __setargv+2Ew
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
byte_101DBE4C	db ?			; DATA XREF: _doexit+32w
		align 10h
dword_101DBE50	dd ?			; DATA XREF: _CRT_INIT(x,x,x)+A9r
					; _doexit+2Cw
dword_101DBE54	dd ?			; DATA XREF: _doexit+9r _doexit+97w
; char Filename[260]
Filename	db 104h	dup(?)		; DATA XREF: __setargv:loc_1000AA0Eo
dword_101DBF5C	dd ?			; DATA XREF: ___crtGetEnvironmentStringsA+2r
					; ___crtGetEnvironmentStringsA+23w ...
dword_101DBF60	dd ?			; DATA XREF: __FF_MSGBANNER+21r
		align 8
unk_101DBF68	db    ?	;		; DATA XREF: .data:off_1000E19Co
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_101DBF80	db    ?	;		; DATA XREF: .data:lpCriticalSectiono
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_101DBF98	db    ?	;		; DATA XREF: .data:off_1000E1BCo
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_101DBFB0	db    ?	;		; DATA XREF: .data:off_1000E1CCo
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DBFC8	dd ?			; DATA XREF: __setmbcp:loc_1000B51Er
					; _getSystemCP+4w ...
dword_101DBFCC	dd ?			; DATA XREF: ___crtMessageBoxA+3r
					; ___crtMessageBoxA+2Ew ...
dword_101DBFD0	dd ?			; DATA XREF: ___crtMessageBoxA+43w
					; ___crtMessageBoxA:loc_1000C35Dr
dword_101DBFD4	dd ?			; DATA XREF: ___crtMessageBoxA+4Aw
					; ___crtMessageBoxA+60r
dword_101DBFD8	dd ?			; DATA XREF: __callnewhr
dword_101DBFDC	dd ?			; DATA XREF: _calloc:loc_1000B125r
					; _mallocr
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DBFE8	dd ?			; DATA XREF: ___crtGetStringTypeA+7Br
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DBFF8	dd ?			; DATA XREF: _getSystemCP+3Ar
					; ___crtLCMapStringA+C0r ...
		align 10h
dword_101DC000	dd ?			; DATA XREF: ___crtLCMapStringA+28r
					; ___crtLCMapStringA+4Cw ...
dword_101DC004	dd ?			; DATA XREF: ___crtGetStringTypeA+26r
					; ___crtGetStringTypeA:loc_1000C7CCw
dword_101DC008	dd ?			; DATA XREF: ___sbh_heap_init+32w
					; ___sbh_alloc_new_region+5r ...
dword_101DC00C	dd ?			; DATA XREF: ___sbh_free_block+239r
					; ___sbh_free_block+259r ...
dword_101DC010	dd ?			; DATA XREF: ___sbh_heap_init+2Dw
					; ___sbh_free_block+310w ...
; void *Dst
Dst		dd ?			; DATA XREF: ___sbh_heap_init:loc_1000BAE2w
					; ___sbh_free_block+22Cr ...
dword_101DC018	dd ?			; DATA XREF: __heap_term+3r
					; __heap_term+4Cr ...
; LPVOID lpMem
lpMem		dd ?			; DATA XREF: __heap_term+12r
					; __heap_term:loc_1000AE08r ...
; UINT CodePage
CodePage	dd ?			; DATA XREF: __setmbcp+1Br
					; __setmbcp+79w ...
		align 10h
unk_101DC030	db    ?	;		; DATA XREF: __setmbcp+12Fo
					; __setmbcp+179o ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DC03C	dd ?			; DATA XREF: __setmbcp+114w
					; __setmbcp+168w ...
byte_101DC040	db ?			; DATA XREF: _setSBUpLow:loc_1000B6FAw
					; _setSBUpLow:loc_1000B717w ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
unk_101DC140	db    ?	;		; DATA XREF: __setmbcp+6Eo
					; __setmbcp+BEo ...
byte_101DC141	db ?			; DATA XREF: _parse_cmdline+3Fr
					; _parse_cmdline+84r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; LCID Locale
Locale		dd ?			; DATA XREF: __setmbcp+64w
					; __setmbcp+137w ...
; HANDLE hHeap
hHeap		dd ?			; DATA XREF: __heap_init+19w
					; __heap_init+29r ...
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
dword_101DC260	dd ?			; DATA XREF: __ioinit:loc_1000A750w
					; __ioinit+4Br	...
unk_101DC264	db    ?	;		; DATA XREF: __ioinit+98o
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; UINT uNumber
uNumber		dd ?			; DATA XREF: __ioinit+28w
					; __ioinit:loc_1000A7BEr ...
dword_101DC364	dd ?			; DATA XREF: __setenvp+ADw
dword_101DC368	dd ?			; DATA XREF: __setenvp+3r __setargv+8r ...
dword_101DC36C	dd ?			; DATA XREF: _doexit+43r
dword_101DC370	dd ?			; DATA XREF: _doexit+3Ar _doexit+5Cr
dword_101DC374	dd ?			; DATA XREF: __cinitr
dword_101DC378	dd ?			; DATA XREF: _CRT_INIT(x,x,x)+6Aw
					; __setargv+29r
; int (__stdcall *dword_101DC37C)(_DWORD, _DWORD, _DWORD)
dword_101DC37C	dd ?			; DATA XREF: DllEntryPoint:loc_1000A441r
					; DllEntryPoint+82r
		align 1000h
_data		ends


		end DllEntryPoint
