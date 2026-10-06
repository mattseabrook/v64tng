; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A32–010A41, inclusive.
cdi_nodv_entry_010a32:
db 0x2F, 0x00 ; 010A32: provisional 68k move.l d0, -(a7)
db 0x43, 0xEE, 0xC0, 0xFA ; 010A34: provisional 68k lea.l -$3f06(a6), a1
db 0xC0, 0xFC, 0x00, 0x26 ; 010A38: provisional 68k mulu.w #$26, d0
db 0xD2, 0xC0 ; 010A3C: provisional 68k adda.w d0, a1
db 0x20, 0x1F ; 010A3E: provisional 68k move.l (a7)+, d0
db 0x4E, 0x75 ; 010A40: provisional 68k rts 
