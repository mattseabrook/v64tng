; verified-role: Native DoAEPrintDocuments routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoAEPrintDocuments; evidence file offset 0x51da.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_do_aeprint_documents:
db 0x4E, 0x56, 0xFF, 0xFE ; file 005176 | 68k link.w a6, #$fffe
db 0x2F, 0x07 ; file 00517A | 68k move.l d7, -(a7)
db 0x42, 0xAD, 0xDC, 0xA8 ; file 00517C | 68k clr.l -$2358(a5)
db 0x7E, 0x01 ; file 005180 | 68k moveq #$1, d7
db 0x42, 0x67 ; file 005182 | 68k clr.w -(a7)
db 0x48, 0x78, 0x07, 0x08 ; file 005184 | 68k pea.l $708.w
db 0x42, 0xA7 ; file 005188 | 68k clr.l -(a7)
db 0x42, 0xA7 ; file 00518A | 68k clr.l -(a7)
db 0x30, 0x3C, 0x06, 0x1C ; file 00518C | 68k move.w #$61c, d0
db 0xA8, 0x16 ; file 005190 | 68k dc.w $a816
db 0x4A, 0x5F ; file 005192 | 68k tst.w (a7)+
db 0x66, 0x02 ; file 005194 | 68k bne.b $4130
db 0x52, 0x47 ; file 005196 | 68k addq.w #$1, d7
db 0x3F, 0x07 ; file 005198 | 68k move.w d7, -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 00519A | 68k move.l $c(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x10 ; file 00519E | 68k move.l $10(a6), -(a7)
db 0x4E, 0xBA, 0x00, 0x9E ; file 0051A2 | 68k jsr $41da(pc)
db 0x3D, 0x40, 0xFF, 0xFE ; file 0051A6 | 68k move.w d0, -$2(a6)
db 0x42, 0x57 ; file 0051AA | 68k clr.w (a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 0051AC | 68k move.l $c(a6), -(a7)
db 0x2F, 0x3C, 0x65, 0x72, 0x72, 0x6E ; file 0051B0 | 68k move.l #$6572726e, -(a7)
db 0x2F, 0x3C, 0x73, 0x68, 0x6F, 0x72 ; file 0051B6 | 68k move.l #$73686f72, -(a7)
db 0x48, 0x6E, 0xFF, 0xFE ; file 0051BC | 68k pea.l -$2(a6)
db 0x48, 0x78, 0x00, 0x02 ; file 0051C0 | 68k pea.l $2.w
db 0x30, 0x3C, 0x0A, 0x0F ; file 0051C4 | 68k move.w #$a0f, d0
db 0xA8, 0x16 ; file 0051C8 | 68k dc.w $a816
db 0x3D, 0x6E, 0xFF, 0xFE, 0x00, 0x14 ; file 0051CA | 68k move.w -$2(a6), $14(a6)
db 0x2E, 0x2E, 0xFF, 0xFA ; file 0051D0 | 68k move.l -$6(a6), d7
db 0x4E, 0x5E ; file 0051D4 | 68k unlk a6
db 0x4E, 0x74, 0x00, 0x0C ; file 0051D6 | 68k rtd #$c
