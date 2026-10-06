; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011F60–011FF9, inclusive.
cdi_t7g_entry_011f60:
db 0x48, 0xE7, 0xFF, 0xFC ; 011F60: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x3C ; 011F64: provisional 68k movea.l $3c(a7), a5
db 0x28, 0x6F, 0x00, 0x40 ; 011F68: provisional 68k movea.l $40(a7), a4
db 0x0C, 0x6D, 0x00, 0x05, 0x00, 0x1C ; 011F6C: provisional 68k cmpi.w #$5, $1c(a5)
db 0x66, 0x06 ; 011F72: provisional 68k bne.b $11f7a
db 0x61, 0x00, 0x00, 0x84 ; 011F74: provisional 68k bsr.w $11ffa
db 0x60, 0x48 ; 011F78: provisional 68k bra.b $11fc2
db 0x0C, 0x6D, 0x00, 0x00, 0x00, 0x1C ; 011F7A: provisional 68k cmpi.w #$0, $1c(a5)
db 0x66, 0x06 ; 011F80: provisional 68k bne.b $11f88
db 0x61, 0x00, 0x01, 0x04 ; 011F82: provisional 68k bsr.w $12088
db 0x60, 0x3A ; 011F86: provisional 68k bra.b $11fc2
db 0x0C, 0x6D, 0x00, 0x01, 0x00, 0x1C ; 011F88: provisional 68k cmpi.w #$1, $1c(a5)
db 0x66, 0x06 ; 011F8E: provisional 68k bne.b $11f96
db 0x61, 0x00, 0x01, 0x54 ; 011F90: provisional 68k bsr.w $120e6
db 0x60, 0x2C ; 011F94: provisional 68k bra.b $11fc2
db 0x0C, 0x6D, 0x00, 0x03, 0x00, 0x1C ; 011F96: provisional 68k cmpi.w #$3, $1c(a5)
db 0x66, 0x06 ; 011F9C: provisional 68k bne.b $11fa4
db 0x61, 0x00, 0x02, 0x4A ; 011F9E: provisional 68k bsr.w $121ea
db 0x60, 0x1E ; 011FA2: provisional 68k bra.b $11fc2
db 0x0C, 0x6D, 0x00, 0x06, 0x00, 0x1C ; 011FA4: provisional 68k cmpi.w #$6, $1c(a5)
db 0x66, 0x06 ; 011FAA: provisional 68k bne.b $11fb2
db 0x61, 0x00, 0x01, 0xC0 ; 011FAC: provisional 68k bsr.w $1216e
db 0x60, 0x10 ; 011FB0: provisional 68k bra.b $11fc2
db 0x0C, 0x6D, 0x00, 0x02, 0x00, 0x1C ; 011FB2: provisional 68k cmpi.w #$2, $1c(a5)
db 0x66, 0x06 ; 011FB8: provisional 68k bne.b $11fc0
db 0x61, 0x00, 0x01, 0xB2 ; 011FBA: provisional 68k bsr.w $1216e
db 0x60, 0x02 ; 011FBE: provisional 68k bra.b $11fc2
db 0x60, 0x0C ; 011FC0: provisional 68k bra.b $11fce
db 0x4C, 0xDF, 0x3F, 0xFF ; 011FC2: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x08 ; 011FC6: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011FCA: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 011FCC: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 011FCE: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9D, 0xAA ; 011FD2: provisional 68k bsr.w $bd7e
db 0x70, 0x69 ; 011FD6: provisional 68k moveq #$69, d0
db 0x63, 0x5F ; 011FD8: provisional 68k bls.b $12039
db 0x70, 0x61 ; 011FDA: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 011FDC
db 0x65, 0x3A ; 011FDE: provisional 68k bcs.b $1201a
db 0x20, 0x55 ; 011FE0: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 011FE2: provisional 68k bgt.b $12057
db 0x75, 0x70 ; file 011FE4
db 0x70, 0x6F ; 011FE6: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 011FE8: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 011FEA: provisional 68k bcs.b $12050
db 0x20, 0x73, 0x6F, 0x75, 0x72, 0x63, 0x65, 0x20 ; 011FEC: provisional 68k movea.l ([$72636520, a3]), a0
db 0x74, 0x79 ; 011FF4: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 011FF6: provisional 68k moveq #$65, d0
db 0x00, 0x00 ; file 011FF8
