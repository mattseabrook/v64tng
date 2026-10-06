; verified-role: Native InitFileSystem routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: InitFileSystem; evidence file offset 0x9352.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_init_file_system:
db 0x4E, 0x56, 0xFF, 0xF4 ; file 009312 | 68k link.w a6, #$fff4
db 0x48, 0xE7, 0x03, 0x38 ; file 009316 | 68k movem.l d6-d7/a2-a4, -(a7)
db 0x7E, 0x00 ; file 00931A | 68k moveq #$0, d7
db 0x49, 0xED, 0xF3, 0x50 ; file 00931C | 68k lea.l -$cb0(a5), a4
db 0x47, 0xED, 0xF3, 0x20 ; file 009320 | 68k lea.l -$ce0(a5), a3
db 0x45, 0xED, 0xF3, 0x1A ; file 009324 | 68k lea.l -$ce6(a5), a2
db 0x60, 0x10 ; file 009328 | 68k bra.b $1bd4
db 0x34, 0xBC, 0xFF, 0xFF ; file 00932A | 68k move.w #$ffff, (a2)
db 0x42, 0x53 ; file 00932E | 68k clr.w (a3)
db 0x42, 0x94 ; file 009330 | 68k clr.l (a4)
db 0x52, 0x47 ; file 009332 | 68k addq.w #$1, d7
db 0x58, 0x8C ; file 009334 | 68k addq.l #$4, a4
db 0x54, 0x8B ; file 009336 | 68k addq.l #$2, a3
db 0x54, 0x8A ; file 009338 | 68k addq.l #$2, a2
db 0x0C, 0x47, 0x00, 0x03 ; file 00933A | 68k cmpi.w #$3, d7
db 0x6D, 0xEA ; file 00933E | 68k blt.b $1bc4
db 0x7C, 0x00 ; file 009340 | 68k moveq #$0, d6
db 0x3E, 0x06 ; file 009342 | 68k move.w d6, d7
db 0x42, 0x6D, 0xF3, 0x4E ; file 009344 | 68k clr.w -$cb2(a5)
db 0x70, 0x01 ; file 009348 | 68k moveq #$1, d0
db 0x4C, 0xDF, 0x1C, 0xC0 ; file 00934A | 68k movem.l (a7)+, d6-d7/a2-a4
db 0x4E, 0x5E ; file 00934E | 68k unlk a6
db 0x4E, 0x75 ; file 009350 | 68k rts 
