; verified-role: Native CloseAnyWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: CloseAnyWindow; evidence file offset 0x62ce.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_close_any_window:
db 0x4E, 0x56, 0x00, 0x00 ; file 00628C | 68k link.w a6, #$0
db 0x2F, 0x0C ; file 006290 | 68k move.l a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 006292 | 68k movea.l $8(a6), a4
db 0x2F, 0x0C ; file 006296 | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x0C, 0x02 ; file 006298 | 68k jsr $5e34(pc)
db 0x4A, 0x00 ; file 00629C | 68k tst.b d0
db 0x58, 0x8F ; file 00629E | 68k addq.l #$4, a7
db 0x67, 0x08 ; file 0062A0 | 68k beq.b $5242
db 0x3F, 0x2C, 0x00, 0x6C ; file 0062A2 | 68k move.w $6c(a4), -(a7)
db 0xA9, 0xB7 ; file 0062A6 | 68k dc.w $a9b7
db 0x60, 0x1E ; file 0062A8 | 68k bra.b $5260
db 0x2F, 0x0C ; file 0062AA | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x0B, 0xC0 ; file 0062AC | 68k jsr $5e06(pc)
db 0x4A, 0x00 ; file 0062B0 | 68k tst.b d0
db 0x58, 0x8F ; file 0062B2 | 68k addq.l #$4, a7
db 0x67, 0x06 ; file 0062B4 | 68k beq.b $5254
db 0x2F, 0x0C ; file 0062B6 | 68k move.l a4, -(a7)
db 0xA9, 0x2D ; file 0062B8 | 68k dc.w $a92d
db 0x60, 0x0C ; file 0062BA | 68k bra.b $5260
db 0x0C, 0x6C, 0x00, 0x02, 0x00, 0x6C ; file 0062BC | 68k cmpi.w #$2, $6c(a4)
db 0x6D, 0x04 ; file 0062C2 | 68k blt.b $5260
db 0x2F, 0x0C ; file 0062C4 | 68k move.l a4, -(a7)
db 0xA9, 0x82 ; file 0062C6 | 68k dc.w $a982
db 0x28, 0x5F ; file 0062C8 | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 0062CA | 68k unlk a6
db 0x4E, 0x75 ; file 0062CC | 68k rts 
