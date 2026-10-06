; verified-role: Native ClearScreen routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ClearScreen; evidence file offset 0xe3d2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_clear_screen:
db 0x4E, 0x56, 0xFF, 0x88 ; file 00E37E | 68k link.w a6, #$ff88
db 0x2D, 0x6D, 0xFA, 0x6A, 0xFF, 0xF8 ; file 00E382 | 68k move.l -$596(a5), -$8(a6)
db 0x3D, 0x6D, 0xFA, 0x6E, 0xFF, 0xFC ; file 00E388 | 68k move.w -$592(a5), -$4(a6)
db 0x4E, 0xBA, 0xFF, 0x58 ; file 00E38E | 68k jsr $6b82(pc)
db 0x42, 0xA7 ; file 00E392 | 68k clr.l -(a7)
db 0x2F, 0x2D, 0xFC, 0x82 ; file 00E394 | 68k move.l -$37e(a5), -(a7)
db 0x20, 0x3C, 0x00, 0x04, 0x00, 0x0F ; file 00E398 | 68k move.l #$4000f, d0
db 0xAB, 0x1D ; file 00E39E | 68k dc.w $ab1d
db 0x2D, 0x5F, 0xFF, 0x88 ; file 00E3A0 | 68k move.l (a7)+, -$78(a6)
db 0x20, 0x6D, 0xFC, 0x7E ; file 00E3A4 | 68k movea.l -$382(a5), a0
db 0x20, 0x50 ; file 00E3A8 | 68k movea.l (a0), a0
db 0x3D, 0x68, 0x00, 0x26, 0xFF, 0xFE ; file 00E3AA | 68k move.w $26(a0), -$2(a6)
db 0x70, 0x00 ; file 00E3B0 | 68k moveq #$0, d0
db 0x30, 0x2E, 0xFF, 0xFE ; file 00E3B2 | 68k move.w -$2(a6), d0
db 0xC0, 0xED, 0xFC, 0x86 ; file 00E3B6 | 68k mulu.w -$37a(a5), d0
db 0xE4, 0x88 ; file 00E3BA | 68k lsr.l #$2, d0
db 0x3D, 0x40, 0xFF, 0xFE ; file 00E3BC | 68k move.w d0, -$2(a6)
db 0x20, 0x6E, 0xFF, 0x88 ; file 00E3C0 | 68k movea.l -$78(a6), a0
db 0x72, 0x00 ; file 00E3C4 | 68k moveq #$0, d1
db 0x20, 0xC1 ; file 00E3C6 | 68k move.l d1, (a0)+
db 0x53, 0x80 ; file 00E3C8 | 68k subq.l #$1, d0
db 0x66, 0xFA ; file 00E3CA | 68k bne.b $6c60
db 0x70, 0x01 ; file 00E3CC | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 00E3CE | 68k unlk a6
db 0x4E, 0x75 ; file 00E3D0 | 68k rts 
