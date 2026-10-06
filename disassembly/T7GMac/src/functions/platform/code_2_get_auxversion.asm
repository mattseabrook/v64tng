; verified-role: Native GetAUXVersion routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetAUXVersion; evidence file offset 0x6616.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_auxversion:
db 0x4E, 0x56, 0xFF, 0xFC ; file 0065C8 | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x01, 0x08 ; file 0065CC | 68k movem.l d7/a4, -(a7)
db 0x42, 0xAE, 0xFF, 0xFC ; file 0065D0 | 68k clr.l -$4(a6)
db 0x42, 0x67 ; file 0065D4 | 68k clr.w -(a7)
db 0x2F, 0x3C, 0x61, 0x2F, 0x75, 0x78 ; file 0065D6 | 68k move.l #$612f7578, -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 0065DC | 68k pea.l -$4(a6)
db 0x4E, 0xAD, 0x02, 0x3A ; file 0065E0 | 68k jsr $23a(a5)
db 0x3E, 0x1F ; file 0065E4 | 68k move.w (a7)+, d7
db 0x0C, 0x47, 0xEA, 0x52 ; file 0065E6 | 68k cmpi.w #$ea52, d7
db 0x67, 0x06 ; file 0065EA | 68k beq.b $558a
db 0x0C, 0x47, 0xEA, 0x51 ; file 0065EC | 68k cmpi.w #$ea51, d7
db 0x66, 0x12 ; file 0065F0 | 68k bne.b $559c
db 0x38, 0x7C, 0x0B, 0x22 ; file 0065F2 | 68k movea.w #$b22, a4
db 0x08, 0x14, 0x00, 0x01 ; file 0065F6 | 68k btst.b #$1, (a4)
db 0x67, 0x08 ; file 0065FA | 68k beq.b $559c
db 0x2D, 0x7C, 0x00, 0x00, 0x01, 0x00, 0xFF, 0xFC ; file 0065FC | 68k move.l #$100, -$4(a6)
db 0x20, 0x2E, 0xFF, 0xFC ; file 006604 | 68k move.l -$4(a6), d0
db 0xE0, 0x80 ; file 006608 | 68k asr.l #$8, d0
db 0x2D, 0x40, 0xFF, 0xFC ; file 00660A | 68k move.l d0, -$4(a6)
db 0x4C, 0xDF, 0x10, 0x80 ; file 00660E | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 006612 | 68k unlk a6
db 0x4E, 0x75 ; file 006614 | 68k rts 
