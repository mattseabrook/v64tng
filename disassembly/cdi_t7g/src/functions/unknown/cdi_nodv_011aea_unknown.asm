; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011AEA–011B13, inclusive.
cdi_nodv_entry_011aea:
db 0x48, 0xE7, 0xFF, 0xFC ; 011AEA: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x3C ; 011AEE: provisional 68k movea.l $3c(a7), a5
db 0x61, 0x00, 0x00, 0x36 ; 011AF2: provisional 68k bsr.w $11b2a
db 0x34, 0x2F, 0x00, 0x40 ; 011AF6: provisional 68k move.w $40(a7), d2
db 0x32, 0x2D, 0x00, 0x2A ; 011AFA: provisional 68k move.w $2a(a5), d1
db 0x61, 0x00, 0xFD, 0xAE ; 011AFE: provisional 68k bsr.w $118ae
db 0x65, 0x0C ; 011B02: provisional 68k bcs.b $11b10
db 0x4C, 0xDF, 0x3F, 0xFF ; 011B04: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x06 ; 011B08: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 011B0C: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 011B0E: provisional 68k rts 
db 0x32, 0x01 ; 011B10: provisional 68k move.w d1, d1
db 0x61, 0x00 ; file 011B12
