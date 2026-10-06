; verified-role: Native MyIdleProcBoo routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: MyIdleProcBoo; evidence file offset 0x5e4e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_my_idle_proc_boo:
db 0x4E, 0x56, 0x00, 0x00 ; file 005DE8 | 68k link.w a6, #$0
db 0x20, 0x6E, 0x00, 0x10 ; file 005DEC | 68k movea.l $10(a6), a0
db 0x30, 0x10 ; file 005DF0 | 68k move.w (a0), d0
db 0x0C, 0x40, 0x00, 0x0F ; file 005DF2 | 68k cmpi.w #$f, d0
db 0x62, 0x40 ; file 005DF6 | 68k bhi.b $4dd0
db 0x43, 0xFA, 0x00, 0x64 ; file 005DF8 | 68k lea.l $4df6(pc), a1
db 0xD2, 0xF1, 0x02, 0x00 ; file 005DFC | 68k adda.w (a1, d0.w * 2), a1
db 0x4E, 0xD1 ; file 005E00 | 68k jmp (a1)
db 0x42, 0xA7 ; file 005E02 | 68k clr.l -(a7)
db 0x42, 0x27 ; file 005E04 | 68k clr.b -(a7)
db 0x4E, 0xBA, 0xF6, 0x42 ; file 005E06 | 68k jsr $43e2(pc)
db 0x2E, 0xAE, 0x00, 0x10 ; file 005E0A | 68k move.l $10(a6), (a7)
db 0x4E, 0xAD, 0x01, 0xC2 ; file 005E0E | 68k jsr $1c2(a5)
db 0x5C, 0x8F ; file 005E12 | 68k addq.l #$6, a7
db 0x60, 0x2E ; file 005E14 | 68k bra.b $4ddc
db 0x2F, 0x3C, 0x77, 0x61, 0x69, 0x74 ; file 005E16 | 68k move.l #$77616974, -(a7)
db 0x1F, 0x3C, 0x00, 0x01 ; file 005E1C | 68k move.b #$1, -(a7)
db 0x4E, 0xBA, 0xF6, 0x28 ; file 005E20 | 68k jsr $43e2(pc)
db 0x20, 0x6E, 0x00, 0x08 ; file 005E24 | 68k movea.l $8(a6), a0
db 0x20, 0xAD, 0xDC, 0xA4 ; file 005E28 | 68k move.l -$235c(a5), (a0)
db 0x22, 0x6E, 0x00, 0x0C ; file 005E2C | 68k movea.l $c(a6), a1
db 0x70, 0x3C ; file 005E30 | 68k moveq #$3c, d0
db 0x22, 0x80 ; file 005E32 | 68k move.l d0, (a1)
db 0x5C, 0x8F ; file 005E34 | 68k addq.l #$6, a7
db 0x60, 0x0C ; file 005E36 | 68k bra.b $4ddc
db 0x42, 0x67 ; file 005E38 | 68k clr.w -(a7)
db 0x3F, 0x3C, 0x00, 0x81 ; file 005E3A | 68k move.w #$81, -(a7)
db 0x42, 0xA7 ; file 005E3E | 68k clr.l -(a7)
db 0xA9, 0x85 ; file 005E40 | 68k dc.w $a985
db 0x54, 0x8F ; file 005E42 | 68k addq.l #$2, a7
db 0x42, 0x2E, 0x00, 0x14 ; file 005E44 | 68k clr.b $14(a6)
db 0x4E, 0x5E ; file 005E48 | 68k unlk a6
db 0x4E, 0x74, 0x00, 0x0C ; file 005E4A | 68k rtd #$c
