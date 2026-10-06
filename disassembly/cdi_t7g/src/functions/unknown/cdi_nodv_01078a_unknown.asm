; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01078A–0107A5, inclusive.
cdi_nodv_entry_01078a:
db 0x2F, 0x08 ; 01078A: provisional 68k move.l a0, -(a7)
db 0x32, 0x00 ; 01078C: provisional 68k move.w d0, d1
db 0x61, 0x00, 0x02, 0xA2 ; 01078E: provisional 68k bsr.w $10a32
db 0x4A, 0xA9, 0x00, 0x0A ; 010792: provisional 68k tst.l $a(a1)
db 0x67, 0x0A ; 010796: provisional 68k beq.b $107a2
db 0x20, 0x29, 0x00, 0x0E ; 010798: provisional 68k move.l $e(a1), d0
db 0x22, 0x69, 0x00, 0x0A ; 01079C: provisional 68k movea.l $a(a1), a1
db 0x4E, 0x91 ; 0107A0: provisional 68k jsr (a1)
db 0x20, 0x5F ; 0107A2: provisional 68k movea.l (a7)+, a0
db 0x4E, 0x75 ; 0107A4: provisional 68k rts 
