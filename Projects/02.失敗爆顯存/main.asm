;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _backgroundtile
	.globl _MAP1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_MAP1::
	.ds 774
_backgroundtile::
	.ds 976
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;MAP1.c:25: unsigned char MAP1[] =
	ld	hl, #_MAP1
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0001)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0002)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0003)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0004)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0005)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0006)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0007)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0008)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0009)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x000a)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x000b)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x000c)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x000d)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x000e)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x000f)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0010)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0011)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0012)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0013)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0014)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0015)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0016)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0017)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0018)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0019)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x001a)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x001b)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x001c)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x001d)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x001e)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x001f)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0020)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0021)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0022)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0023)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0024)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0025)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0026)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0027)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0028)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0029)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x002a)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x002b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x002c)
	ld	(hl), #0x22
	ld	hl, #(_MAP1 + 0x002d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x002f)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x0030)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0031)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0032)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0033)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0034)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0035)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0036)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0037)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0038)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0039)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x003a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x003b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x003c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x003d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x003e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x003f)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0040)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0041)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0042)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0043)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0044)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0045)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0046)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0047)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0048)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0049)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x004a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x004b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x004c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x004d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x004e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x004f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0050)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0051)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0052)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0053)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0054)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0055)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0056)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0057)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0058)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0059)
	ld	(hl), #0x0d
	ld	hl, #(_MAP1 + 0x005a)
	ld	(hl), #0x0c
	ld	hl, #(_MAP1 + 0x005b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x005c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x005d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x005e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x005f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0060)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0061)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0062)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0063)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0064)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0065)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0066)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0067)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0068)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0069)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x006a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x006b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x006c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x006d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x006e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x006f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0070)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0071)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0072)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0073)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0074)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0075)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0076)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0077)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0078)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0079)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x007a)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x007b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x007c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x007d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x007e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x007f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0080)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0081)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0082)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0083)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0084)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0085)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0086)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0087)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0088)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0089)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x008a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x008b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x008c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x008d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x008e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x008f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0090)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0091)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0092)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0093)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0094)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0095)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0096)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0097)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0098)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0099)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x009a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x009b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x009c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x009d)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x009f)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x00a0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a3)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a4)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a7)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a8)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00a9)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00aa)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ab)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ac)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ad)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ae)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00af)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b3)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b4)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b6)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00b7)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b8)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00b9)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ba)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00bb)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00bc)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00bd)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00be)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00bf)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c1)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00c2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c3)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c4)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c7)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00c8)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00c9)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x00ca)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x00cb)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00cc)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x00cd)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x00ce)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00cf)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00d0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d3)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d4)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d6)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00d7)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d8)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00d9)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00da)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00db)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00dc)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00dd)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00de)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00df)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e3)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00e4)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x00e5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e7)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e8)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00e9)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ea)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00eb)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ec)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ed)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ee)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ef)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00f0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00f1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00f2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00f3)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00f4)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x00f5)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x00f6)
	ld	(hl), #0x39
	ld	hl, #(_MAP1 + 0x00f7)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x00f8)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x00f9)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00fa)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00fb)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00fc)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00fd)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00fe)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x00ff)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0100)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0101)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0102)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0103)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0104)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0105)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0106)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0107)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0108)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0109)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x010a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x010b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x010c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x010d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x010e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x010f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0110)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0111)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0112)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0113)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0114)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0115)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0116)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0117)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0118)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0119)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x011a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x011b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x011c)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x011d)
	ld	(hl), #0x39
	ld	hl, #(_MAP1 + 0x011e)
	ld	(hl), #0x39
	ld	hl, #(_MAP1 + 0x011f)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x0120)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x0121)
	ld	(hl), #0x39
	ld	hl, #(_MAP1 + 0x0122)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x0123)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x0124)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0125)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0126)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0127)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0128)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0129)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x012a)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x012b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x012c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x012d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x012e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x012f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0130)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0131)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0132)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0133)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0134)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0135)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0136)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0137)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0138)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0139)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x013a)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x013b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x013c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x013d)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x013e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x013f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0140)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0141)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0142)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0143)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0144)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0145)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0146)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0147)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0148)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0149)
	ld	(hl), #0x39
	ld	hl, #(_MAP1 + 0x014a)
	ld	(hl), #0x0d
	ld	hl, #(_MAP1 + 0x014b)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x014c)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x014d)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x014e)
	ld	(hl), #0x0c
	ld	hl, #(_MAP1 + 0x014f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0150)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0151)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0152)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0153)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0154)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0155)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0156)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0157)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0158)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0159)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x015a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x015b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x015c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x015d)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x015e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x015f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0160)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0161)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0162)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0163)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x0164)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x0165)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x0166)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x0167)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0168)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0169)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x016a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x016b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x016c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x016d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x016e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x016f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0170)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0171)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0172)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0173)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0174)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0175)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0176)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x0177)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x0178)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x0179)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x017a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x017b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x017c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x017d)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x017e)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x017f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0180)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0181)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0182)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0183)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0184)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0185)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0186)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0187)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0188)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0189)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x018a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x018b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x018c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x018d)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x018e)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x018f)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x0190)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x0191)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x0192)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x0193)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0194)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0195)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0196)
	ld	(hl), #0x06
	ld	hl, #(_MAP1 + 0x0197)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0198)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0199)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x019a)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x019b)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x019c)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x019d)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x019e)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x019f)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01a0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01a1)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x01a2)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01a3)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x01a4)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01a5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01a6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01a7)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01a8)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01a9)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01aa)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01ab)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01ac)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01ad)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01ae)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01af)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b3)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b4)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01b7)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x01b8)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01b9)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01ba)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01bb)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01bc)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01bd)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01be)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x01bf)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01c0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01c1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01c2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01c3)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x01c4)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x01c5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01c6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01c7)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01c8)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x01c9)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x01ca)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01cb)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01cc)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x01cd)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01ce)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x01cf)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d3)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d4)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d7)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d8)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01d9)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01da)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01db)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01dc)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01dd)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01de)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01df)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01e0)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01e1)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x01e2)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01e3)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01e4)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01e5)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01e6)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01e7)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01e8)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01e9)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01ea)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x01eb)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01ec)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01ed)
	ld	(hl), #0x00
	ld	hl, #(_MAP1 + 0x01ee)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01ef)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01f0)
	ld	(hl), #0x0a
	ld	hl, #(_MAP1 + 0x01f1)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01f2)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01f3)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x01f4)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x01f5)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01f6)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01f7)
	ld	(hl), #0x0f
	ld	hl, #(_MAP1 + 0x01f8)
	ld	(hl), #0x0b
	ld	hl, #(_MAP1 + 0x01f9)
	ld	(hl), #0x0e
	ld	hl, #(_MAP1 + 0x01fa)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01fb)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01fc)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01fd)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01fe)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x01ff)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0200)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0201)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0202)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0203)
	ld	(hl), #0x34
	ld	hl, #(_MAP1 + 0x0204)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0205)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0206)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0207)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0208)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0209)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x020a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x020b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x020c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x020d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x020e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x020f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0210)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0211)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0212)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0213)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0214)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0215)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0216)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0217)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0218)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0219)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x021a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x021b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x021c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x021d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x021e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x021f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0220)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0221)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0222)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0223)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0224)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0225)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0226)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0227)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0228)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0229)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x022a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x022b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x022c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x022d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x022e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x022f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0230)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0231)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0232)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0233)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0234)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0235)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0236)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0237)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0238)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0239)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x023a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x023b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x023c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x023d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x023e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x023f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0240)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0241)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0242)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0243)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0244)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0245)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0246)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0247)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0248)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0249)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x024a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x024b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x024c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x024d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x024e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x024f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0250)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0251)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0252)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0253)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0254)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0255)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0256)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0257)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0258)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0259)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x025a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x025b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x025c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x025d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x025e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x025f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0260)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0261)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0262)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0263)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0264)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0265)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0266)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0267)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0268)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0269)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x026a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x026b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x026c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x026d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x026e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x026f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0270)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0271)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0272)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0273)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0274)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0275)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0276)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0277)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0278)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0279)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x027a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x027b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x027c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x027d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x027e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x027f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0280)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0281)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0282)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0283)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0284)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0285)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0286)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0287)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0288)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0289)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x028a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x028b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x028c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x028d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x028e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x028f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0290)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0291)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0292)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0293)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0294)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0295)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0296)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0297)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0298)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x0299)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x029a)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x029b)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x029c)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x029d)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x029e)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x029f)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a0)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a1)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a2)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a3)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a4)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a5)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a6)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a7)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a8)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02a9)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02aa)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02ab)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02ac)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02ad)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02ae)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02af)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b0)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b1)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b2)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b3)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b4)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b5)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b6)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b7)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b8)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02b9)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02ba)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02bb)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02bc)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02bd)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02be)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02bf)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c0)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c1)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c2)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c3)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c4)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c5)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c6)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c7)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c8)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02c9)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02ca)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02cb)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02cc)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02cd)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02ce)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02cf)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d0)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d1)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d2)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d3)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d4)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d5)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d6)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d7)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d8)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02d9)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02da)
	ld	(hl), #0x02
	ld	hl, #(_MAP1 + 0x02db)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02dc)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02dd)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02de)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02df)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e0)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e1)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e2)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e3)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e4)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e5)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e6)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e7)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e8)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02e9)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02ea)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02eb)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02ec)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02ed)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02ee)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02ef)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f0)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f1)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f2)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f3)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f4)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f5)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f6)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f7)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f8)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02f9)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02fa)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02fb)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02fc)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02fd)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02fe)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x02ff)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0300)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0301)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0302)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0303)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0304)
	ld	(hl), #0x01
	ld	hl, #(_MAP1 + 0x0305)
	ld	(hl), #0x01
;backgroundtile.c:26: unsigned char backgroundtile[] =
	ld	hl, #_backgroundtile
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0001)
	ld	(hl), #0x07
	ld	hl, #(_backgroundtile + 0x0002)
	ld	(hl), #0x01
	ld	hl, #(_backgroundtile + 0x0003)
	ld	(hl), #0x0e
	ld	hl, #(_backgroundtile + 0x0004)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x0005)
	ld	(hl), #0x3c
	ld	hl, #(_backgroundtile + 0x0006)
	ld	(hl), #0x07
	ld	hl, #(_backgroundtile + 0x0007)
	ld	(hl), #0x38
	ld	hl, #(_backgroundtile + 0x0008)
	ld	(hl), #0x0f
	ld	hl, #(_backgroundtile + 0x0009)
	ld	(hl), #0x70
	ld	hl, #(_backgroundtile + 0x000a)
	ld	(hl), #0x0e
	ld	hl, #(_backgroundtile + 0x000b)
	ld	(hl), #0xf0
	ld	hl, #(_backgroundtile + 0x000c)
	ld	(hl), #0x1f
	ld	hl, #(_backgroundtile + 0x000d)
	ld	(hl), #0xe0
	ld	hl, #(_backgroundtile + 0x000e)
	ld	(hl), #0x3e
	ld	hl, #(_backgroundtile + 0x000f)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0011)
	ld	(hl), #0x45
	ld	hl, #(_backgroundtile + 0x0012)
	ld	(hl), #0x92
	ld	hl, #(_backgroundtile + 0x0013)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0014)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0015)
	ld	(hl), #0x28
	ld	hl, #(_backgroundtile + 0x0016)
	ld	(hl), #0x45
	ld	hl, #(_backgroundtile + 0x0017)
	ld	(hl), #0x45
	ld	hl, #(_backgroundtile + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0019)
	ld	(hl), #0x92
	ld	hl, #(_backgroundtile + 0x001a)
	ld	(hl), #0x28
	ld	hl, #(_backgroundtile + 0x001b)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x001d)
	ld	(hl), #0x45
	ld	hl, #(_backgroundtile + 0x001e)
	ld	(hl), #0x82
	ld	hl, #(_backgroundtile + 0x001f)
	ld	(hl), #0x82
	ld	hl, #(_backgroundtile + 0x0020)
	ld	(hl), #0xc7
	ld	hl, #(_backgroundtile + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0022)
	ld	(hl), #0xbd
	ld	hl, #(_backgroundtile + 0x0023)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0024)
	ld	(hl), #0xe2
	ld	hl, #(_backgroundtile + 0x0025)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0026)
	ld	(hl), #0x97
	ld	hl, #(_backgroundtile + 0x0027)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0028)
	ld	(hl), #0xbf
	ld	hl, #(_backgroundtile + 0x0029)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x002a)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundtile + 0x002b)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundtile + 0x002c)
	ld	(hl), #0xf7
	ld	hl, #(_backgroundtile + 0x002d)
	ld	(hl), #0xf7
	ld	hl, #(_backgroundtile + 0x002e)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x002f)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0031)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0033)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0035)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0036)
	ld	(hl), #0x3f
	ld	hl, #(_backgroundtile + 0x0037)
	ld	(hl), #0x3f
	ld	hl, #(_backgroundtile + 0x0038)
	ld	(hl), #0x62
	ld	hl, #(_backgroundtile + 0x0039)
	ld	(hl), #0x7e
	ld	hl, #(_backgroundtile + 0x003a)
	ld	(hl), #0x3e
	ld	hl, #(_backgroundtile + 0x003b)
	ld	(hl), #0x3e
	ld	hl, #(_backgroundtile + 0x003c)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundtile + 0x003d)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundtile + 0x003e)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x003f)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0048)
	ld	(hl), #0x18
	ld	hl, #(_backgroundtile + 0x0049)
	ld	(hl), #0x18
	ld	hl, #(_backgroundtile + 0x004a)
	ld	(hl), #0x24
	ld	hl, #(_backgroundtile + 0x004b)
	ld	(hl), #0x24
	ld	hl, #(_backgroundtile + 0x004c)
	ld	(hl), #0x42
	ld	hl, #(_backgroundtile + 0x004d)
	ld	(hl), #0x42
	ld	hl, #(_backgroundtile + 0x004e)
	ld	(hl), #0x81
	ld	hl, #(_backgroundtile + 0x004f)
	ld	(hl), #0x81
	ld	hl, #(_backgroundtile + 0x0050)
	ld	(hl), #0x01
	ld	hl, #(_backgroundtile + 0x0051)
	ld	(hl), #0x01
	ld	hl, #(_backgroundtile + 0x0052)
	ld	(hl), #0x02
	ld	hl, #(_backgroundtile + 0x0053)
	ld	(hl), #0x02
	ld	hl, #(_backgroundtile + 0x0054)
	ld	(hl), #0x04
	ld	hl, #(_backgroundtile + 0x0055)
	ld	(hl), #0x04
	ld	hl, #(_backgroundtile + 0x0056)
	ld	(hl), #0x08
	ld	hl, #(_backgroundtile + 0x0057)
	ld	(hl), #0x08
	ld	hl, #(_backgroundtile + 0x0058)
	ld	(hl), #0x10
	ld	hl, #(_backgroundtile + 0x0059)
	ld	(hl), #0x10
	ld	hl, #(_backgroundtile + 0x005a)
	ld	(hl), #0x20
	ld	hl, #(_backgroundtile + 0x005b)
	ld	(hl), #0x20
	ld	hl, #(_backgroundtile + 0x005c)
	ld	(hl), #0x40
	ld	hl, #(_backgroundtile + 0x005d)
	ld	(hl), #0x40
	ld	hl, #(_backgroundtile + 0x005e)
	ld	(hl), #0x80
	ld	hl, #(_backgroundtile + 0x005f)
	ld	(hl), #0x80
	ld	hl, #(_backgroundtile + 0x0060)
	ld	(hl), #0x80
	ld	hl, #(_backgroundtile + 0x0061)
	ld	(hl), #0x80
	ld	hl, #(_backgroundtile + 0x0062)
	ld	(hl), #0x40
	ld	hl, #(_backgroundtile + 0x0063)
	ld	(hl), #0x40
	ld	hl, #(_backgroundtile + 0x0064)
	ld	(hl), #0x20
	ld	hl, #(_backgroundtile + 0x0065)
	ld	(hl), #0x20
	ld	hl, #(_backgroundtile + 0x0066)
	ld	(hl), #0x10
	ld	hl, #(_backgroundtile + 0x0067)
	ld	(hl), #0x10
	ld	hl, #(_backgroundtile + 0x0068)
	ld	(hl), #0x08
	ld	hl, #(_backgroundtile + 0x0069)
	ld	(hl), #0x08
	ld	hl, #(_backgroundtile + 0x006a)
	ld	(hl), #0x04
	ld	hl, #(_backgroundtile + 0x006b)
	ld	(hl), #0x04
	ld	hl, #(_backgroundtile + 0x006c)
	ld	(hl), #0x02
	ld	hl, #(_backgroundtile + 0x006d)
	ld	(hl), #0x02
	ld	hl, #(_backgroundtile + 0x006e)
	ld	(hl), #0x01
	ld	hl, #(_backgroundtile + 0x006f)
	ld	(hl), #0x01
	ld	hl, #(_backgroundtile + 0x0070)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0071)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0073)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0075)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0077)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0079)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x007b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x007e)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x007f)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0080)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0081)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0083)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0084)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0085)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0086)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0087)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0088)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0089)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x008a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x008b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x008c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x008d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x008e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x008f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0090)
	ld	(hl), #0x81
	ld	hl, #(_backgroundtile + 0x0091)
	ld	(hl), #0x81
	ld	hl, #(_backgroundtile + 0x0092)
	ld	(hl), #0x42
	ld	hl, #(_backgroundtile + 0x0093)
	ld	(hl), #0x42
	ld	hl, #(_backgroundtile + 0x0094)
	ld	(hl), #0x24
	ld	hl, #(_backgroundtile + 0x0095)
	ld	(hl), #0x24
	ld	hl, #(_backgroundtile + 0x0096)
	ld	(hl), #0x18
	ld	hl, #(_backgroundtile + 0x0097)
	ld	(hl), #0x18
	ld	hl, #(_backgroundtile + 0x0098)
	ld	(hl), #0x18
	ld	hl, #(_backgroundtile + 0x0099)
	ld	(hl), #0x18
	ld	hl, #(_backgroundtile + 0x009a)
	ld	(hl), #0x24
	ld	hl, #(_backgroundtile + 0x009b)
	ld	(hl), #0x24
	ld	hl, #(_backgroundtile + 0x009c)
	ld	(hl), #0x42
	ld	hl, #(_backgroundtile + 0x009d)
	ld	(hl), #0x42
	ld	hl, #(_backgroundtile + 0x009e)
	ld	(hl), #0x81
	ld	hl, #(_backgroundtile + 0x009f)
	ld	(hl), #0x81
	ld	hl, #(_backgroundtile + 0x00a0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00a1)
	ld	(hl), #0xe0
	ld	hl, #(_backgroundtile + 0x00a2)
	ld	(hl), #0x80
	ld	hl, #(_backgroundtile + 0x00a3)
	ld	(hl), #0x70
	ld	hl, #(_backgroundtile + 0x00a4)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00a5)
	ld	(hl), #0x3c
	ld	hl, #(_backgroundtile + 0x00a6)
	ld	(hl), #0xe0
	ld	hl, #(_backgroundtile + 0x00a7)
	ld	(hl), #0x1c
	ld	hl, #(_backgroundtile + 0x00a8)
	ld	(hl), #0xf0
	ld	hl, #(_backgroundtile + 0x00a9)
	ld	(hl), #0x0e
	ld	hl, #(_backgroundtile + 0x00aa)
	ld	(hl), #0x70
	ld	hl, #(_backgroundtile + 0x00ab)
	ld	(hl), #0x0f
	ld	hl, #(_backgroundtile + 0x00ac)
	ld	(hl), #0xf8
	ld	hl, #(_backgroundtile + 0x00ad)
	ld	(hl), #0x07
	ld	hl, #(_backgroundtile + 0x00ae)
	ld	(hl), #0x7c
	ld	hl, #(_backgroundtile + 0x00af)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00b0)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00b1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00b2)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00b3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00b4)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00b5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00b6)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00b7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00b8)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00b9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00ba)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00bb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00bc)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00bd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00be)
	ld	(hl), #0xff
	ld	hl, #(_backgroundtile + 0x00bf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00c0)
	ld	(hl), #0x7c
	ld	hl, #(_backgroundtile + 0x00c1)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00c2)
	ld	(hl), #0xf8
	ld	hl, #(_backgroundtile + 0x00c3)
	ld	(hl), #0x07
	ld	hl, #(_backgroundtile + 0x00c4)
	ld	(hl), #0x70
	ld	hl, #(_backgroundtile + 0x00c5)
	ld	(hl), #0x0f
	ld	hl, #(_backgroundtile + 0x00c6)
	ld	(hl), #0xf0
	ld	hl, #(_backgroundtile + 0x00c7)
	ld	(hl), #0x0e
	ld	hl, #(_backgroundtile + 0x00c8)
	ld	(hl), #0xe0
	ld	hl, #(_backgroundtile + 0x00c9)
	ld	(hl), #0x1c
	ld	hl, #(_backgroundtile + 0x00ca)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00cb)
	ld	(hl), #0x3c
	ld	hl, #(_backgroundtile + 0x00cc)
	ld	(hl), #0x80
	ld	hl, #(_backgroundtile + 0x00cd)
	ld	(hl), #0x70
	ld	hl, #(_backgroundtile + 0x00ce)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00cf)
	ld	(hl), #0xe0
	ld	hl, #(_backgroundtile + 0x00d0)
	ld	(hl), #0x3e
	ld	hl, #(_backgroundtile + 0x00d1)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00d2)
	ld	(hl), #0x1f
	ld	hl, #(_backgroundtile + 0x00d3)
	ld	(hl), #0xe0
	ld	hl, #(_backgroundtile + 0x00d4)
	ld	(hl), #0x0e
	ld	hl, #(_backgroundtile + 0x00d5)
	ld	(hl), #0xf0
	ld	hl, #(_backgroundtile + 0x00d6)
	ld	(hl), #0x0f
	ld	hl, #(_backgroundtile + 0x00d7)
	ld	(hl), #0x70
	ld	hl, #(_backgroundtile + 0x00d8)
	ld	(hl), #0x07
	ld	hl, #(_backgroundtile + 0x00d9)
	ld	(hl), #0x38
	ld	hl, #(_backgroundtile + 0x00da)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00db)
	ld	(hl), #0x3c
	ld	hl, #(_backgroundtile + 0x00dc)
	ld	(hl), #0x01
	ld	hl, #(_backgroundtile + 0x00dd)
	ld	(hl), #0x0e
	ld	hl, #(_backgroundtile + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x00df)
	ld	(hl), #0x07
	ld	hl, #(_backgroundtile + 0x00e0)
	ld	(hl), #0xfc
	ld	hl, #(_backgroundtile + 0x00e1)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00e2)
	ld	(hl), #0xbc
	ld	hl, #(_backgroundtile + 0x00e3)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00e4)
	ld	(hl), #0x7c
	ld	hl, #(_backgroundtile + 0x00e5)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00e6)
	ld	(hl), #0xbc
	ld	hl, #(_backgroundtile + 0x00e7)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00e8)
	ld	(hl), #0x7c
	ld	hl, #(_backgroundtile + 0x00e9)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00ea)
	ld	(hl), #0xfc
	ld	hl, #(_backgroundtile + 0x00eb)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00ec)
	ld	(hl), #0xbc
	ld	hl, #(_backgroundtile + 0x00ed)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00ee)
	ld	(hl), #0x7c
	ld	hl, #(_backgroundtile + 0x00ef)
	ld	(hl), #0x03
	ld	hl, #(_backgroundtile + 0x00f0)
	ld	(hl), #0x3f
	ld	hl, #(_backgroundtile + 0x00f1)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00f2)
	ld	(hl), #0x3d
	ld	hl, #(_backgroundtile + 0x00f3)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00f4)
	ld	(hl), #0x3e
	ld	hl, #(_backgroundtile + 0x00f5)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00f6)
	ld	(hl), #0x3d
	ld	hl, #(_backgroundtile + 0x00f7)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00f8)
	ld	(hl), #0x3e
	ld	hl, #(_backgroundtile + 0x00f9)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00fa)
	ld	(hl), #0x3f
	ld	hl, #(_backgroundtile + 0x00fb)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00fc)
	ld	(hl), #0x3d
	ld	hl, #(_backgroundtile + 0x00fd)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x00fe)
	ld	(hl), #0x3e
	ld	hl, #(_backgroundtile + 0x00ff)
	ld	(hl), #0xc0
	ld	hl, #(_backgroundtile + 0x0100)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0101)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0102)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0103)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0104)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0105)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0106)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0107)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0108)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0109)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x010a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x010b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x010c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x010d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x010e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x010f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0110)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0111)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0112)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0113)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0114)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0115)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0116)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0117)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0118)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0119)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x011a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x011b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x011c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x011d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x011e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x011f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0120)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0121)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0122)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0123)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0124)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0125)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0126)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0127)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0128)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0129)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x012a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x012b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x012c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x012d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x012e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x012f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0130)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0131)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0132)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0133)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0134)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0135)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0136)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0137)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0138)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0139)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x013a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x013b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x013c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x013d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x013e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x013f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0140)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0141)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0142)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0143)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0144)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0145)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0146)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0147)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0148)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0149)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x014a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x014b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x014c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x014d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x014e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x014f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0150)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0151)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0152)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0153)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0154)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0155)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0156)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0157)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0158)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0159)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x015a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x015b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x015c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x015d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x015e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x015f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0160)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0161)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0162)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0163)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0164)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0165)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0166)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0167)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0168)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0169)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x016a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x016b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x016c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x016d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x016e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x016f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0170)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0171)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0172)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0173)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0174)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0175)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0176)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0177)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0178)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0179)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x017a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x017b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x017c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x017d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x017e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x017f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0180)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0181)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0182)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0183)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0184)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0185)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0186)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0187)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0188)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0189)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x018a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x018b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x018c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x018d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x018e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x018f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0190)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0191)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0192)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0193)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0194)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0195)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0196)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0197)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0198)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0199)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x019a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x019b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x019c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x019d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x019e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x019f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01a9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01aa)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ab)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ac)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ad)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ae)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01af)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01b9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ba)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01bb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01bc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01bd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01be)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01bf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01c9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ca)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01cb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01cc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01cd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ce)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01cf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01d9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01da)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01db)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01dc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01dd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01de)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01df)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01e9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ea)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01eb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ec)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ed)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ee)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ef)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01f9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01fa)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01fb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01fc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01fd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01fe)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x01ff)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0200)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0201)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0202)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0203)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0204)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0205)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0206)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0207)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0208)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0209)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x020a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x020b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x020c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x020d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x020e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x020f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0210)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0211)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0212)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0213)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0214)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0215)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0216)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0217)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0218)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0219)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x021a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x021b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x021c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x021d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x021e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x021f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0220)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0221)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0222)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0223)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0224)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0225)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0226)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0227)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0228)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0229)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x022a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x022b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x022c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x022d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x022e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x022f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0230)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0231)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0232)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0233)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0234)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0235)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0236)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0237)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0238)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0239)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x023a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x023b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x023c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x023d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x023e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x023f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0240)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0241)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0242)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0243)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0244)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0245)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0246)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0247)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0248)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0249)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x024a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x024b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x024c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x024d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x024e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x024f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0250)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0251)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0252)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0253)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0254)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0255)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0256)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0257)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0258)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0259)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x025a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x025b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x025c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x025d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x025e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x025f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0260)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0261)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0262)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0263)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0264)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0265)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0266)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0267)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0268)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0269)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x026a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x026b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x026c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x026d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x026e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x026f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0270)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0271)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0272)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0273)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0274)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0275)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0276)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0277)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0278)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0279)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x027a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x027b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x027c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x027d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x027e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x027f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0280)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0281)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0282)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0283)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0284)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0285)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0286)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0287)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0288)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0289)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x028a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x028b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x028c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x028d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x028e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x028f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0290)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0291)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0292)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0293)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0294)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0295)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0296)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0297)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0298)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0299)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x029a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x029b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x029c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x029d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x029e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x029f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02a9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02aa)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ab)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ac)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ad)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ae)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02af)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02b9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ba)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02bb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02bc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02bd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02be)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02bf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02c9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ca)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02cb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02cc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02cd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ce)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02cf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02d9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02da)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02db)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02dc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02dd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02de)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02df)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02e9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ea)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02eb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ec)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ed)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ee)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ef)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02f9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02fa)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02fb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02fc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02fd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02fe)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x02ff)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0300)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0301)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0302)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0303)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0304)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0305)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0306)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0307)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0308)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0309)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x030a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x030b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x030c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x030d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x030e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x030f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0310)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0311)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0312)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0313)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0314)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0315)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0316)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0317)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0318)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0319)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x031a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x031b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x031c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x031d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x031e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x031f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0320)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0321)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0322)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0323)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0324)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0325)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0326)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0327)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0328)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0329)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x032a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x032b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x032c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x032d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x032e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x032f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0330)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0331)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0332)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0333)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0334)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0335)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0336)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0337)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0338)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0339)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x033a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x033b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x033c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x033d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x033e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x033f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0340)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0341)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0342)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0343)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0344)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0345)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0346)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0347)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0348)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0349)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x034a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x034b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x034c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x034d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x034e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x034f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0350)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0351)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0352)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0353)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0354)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0355)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0356)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0357)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0358)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0359)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x035a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x035b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x035c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x035d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x035e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x035f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0360)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0361)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0362)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0363)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0364)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0365)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0366)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0367)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0368)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0369)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x036a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x036b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x036c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x036d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x036e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x036f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0370)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0371)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0372)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0373)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0374)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0375)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0376)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0377)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0378)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0379)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x037a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x037b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x037c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x037d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x037e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x037f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0380)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0381)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0382)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0383)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0384)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0385)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0386)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0387)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0388)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0389)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x038a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x038b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x038c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x038d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x038e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x038f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0390)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0391)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0392)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0393)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0394)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0395)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0396)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0397)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0398)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x0399)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x039a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x039b)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x039c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x039d)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x039e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x039f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03a9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03aa)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03ab)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03ac)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03ad)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03ae)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03af)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03b9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03ba)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03bb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03bc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03bd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03be)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03bf)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c1)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c3)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c5)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c7)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03c9)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03ca)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03cb)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03cc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03cd)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03ce)
	ld	(hl), #0x00
	ld	hl, #(_backgroundtile + 0x03cf)
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:6: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:8: set_bkg_data(0,15, backgroundtile);
	ld	hl, #_backgroundtile
	push	hl
	ld	a, #0x0f
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;main.c:10: set_bkg_tiles(0,0,MAP1Width,MAP1Height,MAP1);
	ld	hl, #_MAP1
	push	hl
	ld	de, #0x122b
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:12: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:14: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:15: while (1)
00102$:
;c:/gbdk/include/gb/gb.h:840: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG+0)
	inc	a
	ldh	(_SCX_REG+0),a
;main.c:19: wait_vbl_done();
	call	_wait_vbl_done
;main.c:28: }
	jr	00102$
	.area _CODE
	.area _CABS (ABS)
