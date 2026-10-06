; verified-role: Native DisposeAnyWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DisposeAnyWindow; evidence file offset 0x6322.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_dispose_any_window:
db 0x4E, 0x56, 0x00, 0x00 ; file 0062E0 | 68k link.w a6, #$0
db 0x2F, 0x0C ; file 0062E4 | 68k move.l a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 0062E6 | 68k movea.l $8(a6), a4
db 0x2F, 0x0C ; file 0062EA | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x0B, 0xAE ; file 0062EC | 68k jsr $5e34(pc)
db 0x4A, 0x00 ; file 0062F0 | 68k tst.b d0
db 0x58, 0x8F ; file 0062F2 | 68k addq.l #$4, a7
db 0x67, 0x08 ; file 0062F4 | 68k beq.b $5296
db 0x3F, 0x2C, 0x00, 0x6C ; file 0062F6 | 68k move.w $6c(a4), -(a7)
db 0xA9, 0xB7 ; file 0062FA | 68k dc.w $a9b7
db 0x60, 0x1E ; file 0062FC | 68k bra.b $52b4
db 0x2F, 0x0C ; file 0062FE | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x0B, 0x6C ; file 006300 | 68k jsr $5e06(pc)
db 0x4A, 0x00 ; file 006304 | 68k tst.b d0
db 0x58, 0x8F ; file 006306 | 68k addq.l #$4, a7
db 0x67, 0x06 ; file 006308 | 68k beq.b $52a8
db 0x2F, 0x0C ; file 00630A | 68k move.l a4, -(a7)
db 0xA9, 0x14 ; file 00630C | 68k dc.w $a914
db 0x60, 0x0C ; file 00630E | 68k bra.b $52b4
db 0x0C, 0x6C, 0x00, 0x02, 0x00, 0x6C ; file 006310 | 68k cmpi.w #$2, $6c(a4)
db 0x6D, 0x04 ; file 006316 | 68k blt.b $52b4
db 0x2F, 0x0C ; file 006318 | 68k move.l a4, -(a7)
db 0xA9, 0x83 ; file 00631A | 68k dc.w $a983
db 0x28, 0x5F ; file 00631C | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 00631E | 68k unlk a6
db 0x4E, 0x75 ; file 006320 | 68k rts 
