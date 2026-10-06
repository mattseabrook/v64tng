; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012DE0–012E79, inclusive.
cdi_nodv_entry_012de0:
db 0x48, 0xE7, 0xFF, 0xFC ; 012DE0: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x3C ; 012DE4: provisional 68k movea.l $3c(a7), a5
db 0x28, 0x6F, 0x00, 0x40 ; 012DE8: provisional 68k movea.l $40(a7), a4
db 0x0C, 0x6D, 0x00, 0x05, 0x00, 0x1C ; 012DEC: provisional 68k cmpi.w #$5, $1c(a5)
db 0x66, 0x06 ; 012DF2: provisional 68k bne.b $12dfa
db 0x61, 0x00, 0x00, 0x84 ; 012DF4: provisional 68k bsr.w $12e7a
db 0x60, 0x48 ; 012DF8: provisional 68k bra.b $12e42
db 0x0C, 0x6D, 0x00, 0x00, 0x00, 0x1C ; 012DFA: provisional 68k cmpi.w #$0, $1c(a5)
db 0x66, 0x06 ; 012E00: provisional 68k bne.b $12e08
db 0x61, 0x00, 0x01, 0x04 ; 012E02: provisional 68k bsr.w $12f08
db 0x60, 0x3A ; 012E06: provisional 68k bra.b $12e42
db 0x0C, 0x6D, 0x00, 0x01, 0x00, 0x1C ; 012E08: provisional 68k cmpi.w #$1, $1c(a5)
db 0x66, 0x06 ; 012E0E: provisional 68k bne.b $12e16
db 0x61, 0x00, 0x01, 0x54 ; 012E10: provisional 68k bsr.w $12f66
db 0x60, 0x2C ; 012E14: provisional 68k bra.b $12e42
db 0x0C, 0x6D, 0x00, 0x03, 0x00, 0x1C ; 012E16: provisional 68k cmpi.w #$3, $1c(a5)
db 0x66, 0x06 ; 012E1C: provisional 68k bne.b $12e24
db 0x61, 0x00, 0x02, 0x4A ; 012E1E: provisional 68k bsr.w $1306a
db 0x60, 0x1E ; 012E22: provisional 68k bra.b $12e42
db 0x0C, 0x6D, 0x00, 0x06, 0x00, 0x1C ; 012E24: provisional 68k cmpi.w #$6, $1c(a5)
db 0x66, 0x06 ; 012E2A: provisional 68k bne.b $12e32
db 0x61, 0x00, 0x01, 0xC0 ; 012E2C: provisional 68k bsr.w $12fee
db 0x60, 0x10 ; 012E30: provisional 68k bra.b $12e42
db 0x0C, 0x6D, 0x00, 0x02, 0x00, 0x1C ; 012E32: provisional 68k cmpi.w #$2, $1c(a5)
db 0x66, 0x06 ; 012E38: provisional 68k bne.b $12e40
db 0x61, 0x00, 0x01, 0xB2 ; 012E3A: provisional 68k bsr.w $12fee
db 0x60, 0x02 ; 012E3E: provisional 68k bra.b $12e42
db 0x60, 0x0C ; 012E40: provisional 68k bra.b $12e4e
db 0x4C, 0xDF, 0x3F, 0xFF ; 012E42: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x08 ; 012E46: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 012E4A: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 012E4C: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012E4E: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9D, 0xAA ; 012E52: provisional 68k bsr.w $cbfe
db 0x70, 0x69 ; 012E56: provisional 68k moveq #$69, d0
db 0x63, 0x5F ; 012E58: provisional 68k bls.b $12eb9
db 0x70, 0x61 ; 012E5A: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012E5C
db 0x65, 0x3A ; 012E5E: provisional 68k bcs.b $12e9a
db 0x20, 0x55 ; 012E60: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 012E62: provisional 68k bgt.b $12ed7
db 0x75, 0x70 ; file 012E64
db 0x70, 0x6F ; 012E66: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 012E68: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 012E6A: provisional 68k bcs.b $12ed0
db 0x20, 0x73, 0x6F, 0x75, 0x72, 0x63, 0x65, 0x20 ; 012E6C: provisional 68k movea.l ([$72636520, a3]), a0
db 0x74, 0x79 ; 012E74: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 012E76: provisional 68k moveq #$65, d0
db 0x00, 0x00 ; file 012E78
