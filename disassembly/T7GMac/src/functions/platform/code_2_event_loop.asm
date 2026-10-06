; verified-role: Native EventLoop routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: EventLoop; evidence file offset 0x55dc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_event_loop:
db 0x4E, 0x56, 0xFF, 0xF0 ; file 0055A4 | 68k link.w a6, #$fff0
db 0x60, 0x28 ; file 0055A8 | 68k bra.b $456a
db 0x42, 0x27 ; file 0055AA | 68k clr.b -(a7)
db 0x3F, 0x3C, 0xFF, 0xFF ; file 0055AC | 68k move.w #$ffff, -(a7)
db 0x48, 0x6E, 0xFF, 0xF0 ; file 0055B0 | 68k pea.l -$10(a6)
db 0x48, 0x78, 0x00, 0x0F ; file 0055B4 | 68k pea.l $f.w
db 0x2F, 0x2D, 0xDC, 0xA4 ; file 0055B8 | 68k move.l -$235c(a5), -(a7)
db 0xA8, 0x60 ; file 0055BC | 68k dc.w $a860
db 0x4A, 0x1F ; file 0055BE | 68k tst.b (a7)+
db 0x67, 0x0C ; file 0055C0 | 68k beq.b $4566
db 0x48, 0x6E, 0xFF, 0xF0 ; file 0055C2 | 68k pea.l -$10(a6)
db 0x4E, 0xAD, 0x01, 0xC2 ; file 0055C6 | 68k jsr $1c2(a5)
db 0x58, 0x8F ; file 0055CA | 68k addq.l #$4, a7
db 0x60, 0x04 ; file 0055CC | 68k bra.b $456a
db 0x4E, 0xBA, 0x08, 0x12 ; file 0055CE | 68k jsr $4d7a(pc)
db 0x4A, 0x2D, 0xDD, 0x00 ; file 0055D2 | 68k tst.b -$2300(a5)
db 0x67, 0xD2 ; file 0055D6 | 68k beq.b $4542
db 0x4E, 0x5E ; file 0055D8 | 68k unlk a6
db 0x4E, 0x75 ; file 0055DA | 68k rts 
