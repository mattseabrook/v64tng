; verified-role: Native GetRectDevice routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetRectDevice; evidence file offset 0x68fc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_rect_device:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 006880 | 68k link.w a6, #$fff8
db 0x48, 0xE7, 0x03, 0x18 ; file 006884 | 68k movem.l d6-d7/a3-a4, -(a7)
db 0x7E, 0x00 ; file 006888 | 68k moveq #$0, d7
db 0x42, 0xA7 ; file 00688A | 68k clr.l -(a7)
db 0xAA, 0x2A ; file 00688C | 68k dc.w $aa2a
db 0x28, 0x5F ; file 00688E | 68k movea.l (a7)+, a4
db 0x42, 0xA7 ; file 006890 | 68k clr.l -(a7)
db 0xAA, 0x29 ; file 006892 | 68k dc.w $aa29
db 0x26, 0x5F ; file 006894 | 68k movea.l (a7)+, a3
db 0x60, 0x56 ; file 006896 | 68k bra.b $5886
db 0x42, 0x27 ; file 006898 | 68k clr.b -(a7)
db 0x2F, 0x0B ; file 00689A | 68k move.l a3, -(a7)
db 0x3F, 0x3C, 0x00, 0x0D ; file 00689C | 68k move.w #$d, -(a7)
db 0xAA, 0x2C ; file 0068A0 | 68k dc.w $aa2c
db 0x4A, 0x1F ; file 0068A2 | 68k tst.b (a7)+
db 0x67, 0x40 ; file 0068A4 | 68k beq.b $587e
db 0x42, 0x27 ; file 0068A6 | 68k clr.b -(a7)
db 0x2F, 0x0B ; file 0068A8 | 68k move.l a3, -(a7)
db 0x3F, 0x3C, 0x00, 0x0F ; file 0068AA | 68k move.w #$f, -(a7)
db 0xAA, 0x2C ; file 0068AE | 68k dc.w $aa2c
db 0x4A, 0x1F ; file 0068B0 | 68k tst.b (a7)+
db 0x67, 0x32 ; file 0068B2 | 68k beq.b $587e
db 0x42, 0x27 ; file 0068B4 | 68k clr.b -(a7)
db 0x48, 0x6E, 0x00, 0x08 ; file 0068B6 | 68k pea.l $8(a6)
db 0x20, 0x53 ; file 0068BA | 68k movea.l (a3), a0
db 0x48, 0x68, 0x00, 0x22 ; file 0068BC | 68k pea.l $22(a0)
db 0x48, 0x6E, 0xFF, 0xF8 ; file 0068C0 | 68k pea.l -$8(a6)
db 0xA8, 0xAA ; file 0068C4 | 68k dc.w $a8aa
db 0x4A, 0x1F ; file 0068C6 | 68k tst.b (a7)+
db 0x67, 0x1C ; file 0068C8 | 68k beq.b $587e
db 0x30, 0x2E, 0xFF, 0xFC ; file 0068CA | 68k move.w -$4(a6), d0
db 0x90, 0x6E, 0xFF, 0xF8 ; file 0068CE | 68k sub.w -$8(a6), d0
db 0x3C, 0x2E, 0xFF, 0xFE ; file 0068D2 | 68k move.w -$2(a6), d6
db 0x9C, 0x6E, 0xFF, 0xFA ; file 0068D6 | 68k sub.w -$6(a6), d6
db 0xCD, 0xC0 ; file 0068DA | 68k muls.w d0, d6
db 0x48, 0xC6 ; file 0068DC | 68k ext.l d6
db 0xBE, 0x86 ; file 0068DE | 68k cmp.l d6, d7
db 0x6C, 0x04 ; file 0068E0 | 68k bge.b $587e
db 0x28, 0x4B ; file 0068E2 | 68k movea.l a3, a4
db 0x2E, 0x06 ; file 0068E4 | 68k move.l d6, d7
db 0x42, 0xA7 ; file 0068E6 | 68k clr.l -(a7)
db 0x2F, 0x0B ; file 0068E8 | 68k move.l a3, -(a7)
db 0xAA, 0x2B ; file 0068EA | 68k dc.w $aa2b
db 0x26, 0x5F ; file 0068EC | 68k movea.l (a7)+, a3
db 0x20, 0x0B ; file 0068EE | 68k move.l a3, d0
db 0x66, 0xA6 ; file 0068F0 | 68k bne.b $5830
db 0x20, 0x0C ; file 0068F2 | 68k move.l a4, d0
db 0x4C, 0xDF, 0x18, 0xC0 ; file 0068F4 | 68k movem.l (a7)+, d6-d7/a3-a4
db 0x4E, 0x5E ; file 0068F8 | 68k unlk a6
db 0x4E, 0x75 ; file 0068FA | 68k rts 
