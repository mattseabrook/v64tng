; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F90A–00F925, inclusive.
cdi_t7g_entry_00f90a:
db 0x2F, 0x08 ; 00F90A: provisional 68k move.l a0, -(a7)
db 0x32, 0x00 ; 00F90C: provisional 68k move.w d0, d1
db 0x61, 0x00, 0x02, 0xA2 ; 00F90E: provisional 68k bsr.w $fbb2
db 0x4A, 0xA9, 0x00, 0x0A ; 00F912: provisional 68k tst.l $a(a1)
db 0x67, 0x0A ; 00F916: provisional 68k beq.b $f922
db 0x20, 0x29, 0x00, 0x0E ; 00F918: provisional 68k move.l $e(a1), d0
db 0x22, 0x69, 0x00, 0x0A ; 00F91C: provisional 68k movea.l $a(a1), a1
db 0x4E, 0x91 ; 00F920: provisional 68k jsr (a1)
db 0x20, 0x5F ; 00F922: provisional 68k movea.l (a7)+, a0
db 0x4E, 0x75 ; 00F924: provisional 68k rts 
