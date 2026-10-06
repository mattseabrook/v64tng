; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010E40–010EBD, inclusive.
cdi_nodv_entry_010e40:
db 0x48, 0x7A, 0x00, 0x08 ; 010E40: provisional 68k pea.l $10e4a(pc)
db 0x61, 0x00, 0xBD, 0x8A ; 010E44: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 010E48: provisional 68k bra.b $10e54
db 0x6F, 0x62 ; 010E4A: provisional 68k ble.b $10eae
db 0x6A, 0x6D ; 010E4C: provisional 68k bpl.b $10ebb
db 0x61, 0x6E ; 010E4E: provisional 68k bsr.b $10ebe
db 0x3A, 0x0D ; 010E50: provisional 68k move.w a5, d5
db 0x0A, 0x00, 0x41, 0xEE ; 010E52: provisional 68k eori.b #$ee, d0
db 0xD0, 0x04 ; 010E56: provisional 68k add.b d4, d0
db 0x42, 0xE7 ; 010E58: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010E5A: provisional 68k pea.l $10e64(pc)
db 0x61, 0x00, 0xBD, 0x70 ; 010E5E: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 010E62: provisional 68k bra.b $10e70
db 0x62, 0x69 ; 010E64: provisional 68k bhi.b $10ecf
db 0x67, 0x20 ; 010E66: provisional 68k beq.b $10e88
db 0x74, 0x6F ; 010E68: provisional 68k moveq #$6f, d2
db 0x74, 0x61 ; 010E6A: provisional 68k moveq #$61, d2
db 0x6C, 0x09 ; 010E6C: provisional 68k bge.b $10e77
db 0x09, 0x00 ; 010E6E: provisional 68k btst.l d4, d0
db 0x3F, 0x28, 0x00, 0x02 ; 010E70: provisional 68k move.w $2(a0), -(a7)
db 0x61, 0x00, 0xBC, 0xA8 ; 010E74: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 010E78: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBD, 0x3A ; 010E7A: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 010E7E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010E80: provisional 68k pea.l $10e8a(pc)
db 0x61, 0x00, 0xBD, 0x4A ; 010E84: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 010E88: provisional 68k bra.b $10e96
db 0x62, 0x69 ; 010E8A: provisional 68k bhi.b $10ef5
db 0x67, 0x20 ; 010E8C: provisional 68k beq.b $10eae
db 0x66, 0x72 ; 010E8E: provisional 68k bne.b $10f02
db 0x65, 0x65 ; 010E90: provisional 68k bcs.b $10ef7
db 0x09, 0x09, 0x00, 0x00 ; 010E92: provisional 68k movep.w $0(a1), d4
db 0x3F, 0x28, 0x00, 0x04 ; 010E96: provisional 68k move.w $4(a0), -(a7)
db 0x61, 0x00, 0xBC, 0x82 ; 010E9A: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 010E9E: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBD, 0x14 ; 010EA0: provisional 68k bsr.w $cbb6
db 0x41, 0xEE, 0xD0, 0x14 ; 010EA4: provisional 68k lea.l -$2fec(a6), a0
db 0x42, 0xE7 ; 010EA8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010EAA: provisional 68k pea.l $10eb4(pc)
db 0x61, 0x00, 0xBD, 0x20 ; 010EAE: provisional 68k bsr.w $cbd0
db 0x60, 0x0E ; 010EB2: provisional 68k bra.b $10ec2
db 0x73, 0x6D ; file 010EB4
db 0x61, 0x6C ; 010EB6: provisional 68k bsr.b $10f24
db 0x6C, 0x20 ; 010EB8: provisional 68k bge.b $10eda
db 0x74, 0x6F ; 010EBA: provisional 68k moveq #$6f, d2
db 0x74, 0x61 ; 010EBC: provisional 68k moveq #$61, d2
