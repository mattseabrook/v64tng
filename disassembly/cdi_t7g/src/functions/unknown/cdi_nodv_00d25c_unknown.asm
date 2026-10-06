; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D25C–00D295, inclusive.
cdi_nodv_entry_00d25c:
db 0x48, 0xE7, 0xD0, 0x00 ; 00D25C: provisional 68k movem.l d0-d1/d3, -(a7)
db 0x36, 0x2F, 0x00, 0x10 ; 00D260: provisional 68k move.w $10(a7), d3
db 0x00, 0x43, 0x80, 0x00 ; 00D264: provisional 68k ori.w #$8000, d3
db 0x36, 0x03 ; 00D268: provisional 68k move.w d3, d3
db 0x30, 0x2E, 0xAA, 0x82 ; 00D26A: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x13 ; 00D26E: provisional 68k move.w #$113, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D272: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0C ; 00D276: provisional 68k bcs.b $d284
db 0x4C, 0xDF, 0x00, 0x0B ; 00D278: provisional 68k movem.l (a7)+, d0-d1/d3
db 0x2F, 0x57, 0x00, 0x02 ; 00D27C: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00D280: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00D282: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00D284: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF9, 0x74 ; 00D288: provisional 68k bsr.w $cbfe
db 0x73, 0x67 ; file 00D28C
db 0x6D, 0x5F ; 00D28E: provisional 68k blt.b $d2ef
db 0x6D, 0x76 ; 00D290: provisional 68k blt.b $d308
db 0x74, 0x3A ; 00D292: provisional 68k moveq #$3a, d2
db 0x20, 0x00 ; 00D294: provisional 68k move.l d0, d0
