; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012A3E–012AD9, inclusive.
cdi_t7g_entry_012a3e:
db 0x48, 0xE7, 0xFF, 0xFC ; 012A3E: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x3C ; 012A42: provisional 68k movea.l $3c(a7), a5
db 0x28, 0x6F, 0x00, 0x40 ; 012A46: provisional 68k movea.l $40(a7), a4
db 0x26, 0x6F, 0x00, 0x44 ; 012A4A: provisional 68k movea.l $44(a7), a3
db 0x0C, 0x6D, 0x00, 0x05, 0x00, 0x1C ; 012A4E: provisional 68k cmpi.w #$5, $1c(a5)
db 0x66, 0x06 ; 012A54: provisional 68k bne.b $12a5c
db 0x61, 0x00, 0x01, 0x44 ; 012A56: provisional 68k bsr.w $12b9c
db 0x60, 0x44 ; 012A5A: provisional 68k bra.b $12aa0
db 0x0C, 0x6D, 0x00, 0x06, 0x00, 0x1C ; 012A5C: provisional 68k cmpi.w #$6, $1c(a5)
db 0x66, 0x06 ; 012A62: provisional 68k bne.b $12a6a
db 0x61, 0x00, 0x00, 0xAC ; 012A64: provisional 68k bsr.w $12b12
db 0x60, 0x36 ; 012A68: provisional 68k bra.b $12aa0
db 0x0C, 0x6D, 0x00, 0x02, 0x00, 0x1C ; 012A6A: provisional 68k cmpi.w #$2, $1c(a5)
db 0x66, 0x06 ; 012A70: provisional 68k bne.b $12a78
db 0x61, 0x00, 0x00, 0x9E ; 012A72: provisional 68k bsr.w $12b12
db 0x60, 0x28 ; 012A76: provisional 68k bra.b $12aa0
db 0x0C, 0x6D, 0x00, 0x03, 0x00, 0x1C ; 012A78: provisional 68k cmpi.w #$3, $1c(a5)
db 0x66, 0x06 ; 012A7E: provisional 68k bne.b $12a86
db 0x61, 0x00, 0x00, 0x58 ; 012A80: provisional 68k bsr.w $12ada
db 0x60, 0x1A ; 012A84: provisional 68k bra.b $12aa0
db 0x0C, 0x6D, 0x00, 0x07, 0x00, 0x1C ; 012A86: provisional 68k cmpi.w #$7, $1c(a5)
db 0x66, 0x20 ; 012A8C: provisional 68k bne.b $12aae
db 0xB7, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 012A8E: provisional 68k cmpa.l #$0, a3
db 0x66, 0x06 ; 012A94: provisional 68k bne.b $12a9c
db 0x61, 0x00, 0x0C, 0xCA ; 012A96: provisional 68k bsr.w $13762
db 0x60, 0x04 ; 012A9A: provisional 68k bra.b $12aa0
db 0x61, 0x00, 0x0E, 0xEE ; 012A9C: provisional 68k bsr.w $1398c
db 0x4C, 0xDF, 0x3F, 0xFF ; 012AA0: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x0C ; 012AA4: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 012AA8: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 012AAC: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012AAE: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x92, 0xCA ; 012AB2: provisional 68k bsr.w $bd7e
db 0x73, 0x70 ; file 012AB6
db 0x72, 0x5F ; 012AB8: provisional 68k moveq #$5f, d1
db 0x70, 0x61 ; 012ABA: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012ABC
db 0x65, 0x3A ; 012ABE: provisional 68k bcs.b $12afa
db 0x20, 0x55 ; 012AC0: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 012AC2: provisional 68k bgt.b $12b37
db 0x75, 0x70 ; file 012AC4
db 0x70, 0x6F ; 012AC6: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 012AC8: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 012ACA: provisional 68k bcs.b $12b30
db 0x20, 0x73, 0x70, 0x72 ; 012ACC: provisional 68k movea.l $72(a3, d7.w), a0
db 0x69, 0x74 ; 012AD0: provisional 68k bvs.b $12b46
db 0x65, 0x20 ; 012AD2: provisional 68k bcs.b $12af4
db 0x74, 0x79 ; 012AD4: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 012AD6: provisional 68k moveq #$65, d0
db 0x00, 0x00 ; file 012AD8
