; recovered-symbol-candidate: Native GetVarOffset routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetVarOffset; evidence file offset 0xb1dc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_get_var_offset:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00B19E | 68k link.w a6, #$fffc
db 0x2F, 0x07 ; file 00B1A2 | 68k move.l d7, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 00B1A4 | 68k movea.l $8(a6), a0
db 0x2D, 0x50, 0xFF, 0xFC ; file 00B1A8 | 68k move.l (a0), -$4(a6)
db 0x4A, 0x2E, 0x00, 0x0D ; file 00B1AC | 68k tst.b $d(a6)
db 0x6A, 0x0E ; file 00B1B0 | 68k bpl.b $3a5a
db 0x20, 0x6E, 0xFF, 0xFC ; file 00B1B2 | 68k movea.l -$4(a6), a0
db 0x52, 0xAE, 0xFF, 0xFC ; file 00B1B6 | 68k addq.l #$1, -$4(a6)
db 0x7E, 0x00 ; file 00B1BA | 68k moveq #$0, d7
db 0x1E, 0x10 ; file 00B1BC | 68k move.b (a0), d7
db 0x60, 0x0C ; file 00B1BE | 68k bra.b $3a66
db 0x48, 0x6E, 0xFF, 0xFC ; file 00B1C0 | 68k pea.l -$4(a6)
db 0x4E, 0xBA, 0x01, 0xDC ; file 00B1C4 | 68k jsr $3c3c(pc)
db 0x3E, 0x00 ; file 00B1C8 | 68k move.w d0, d7
db 0x58, 0x8F ; file 00B1CA | 68k addq.l #$4, a7
db 0x20, 0x6E, 0x00, 0x08 ; file 00B1CC | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xFC ; file 00B1D0 | 68k move.l -$4(a6), (a0)
db 0x30, 0x07 ; file 00B1D4 | 68k move.w d7, d0
db 0x2E, 0x1F ; file 00B1D6 | 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 00B1D8 | 68k unlk a6
db 0x4E, 0x75 ; file 00B1DA | 68k rts 
