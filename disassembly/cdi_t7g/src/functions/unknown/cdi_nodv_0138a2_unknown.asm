; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0138A2–0138BD, inclusive.
cdi_nodv_entry_0138a2:
db 0x2F, 0x0D ; 0138A2: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 0138A4: provisional 68k movea.l $8(a7), a5
db 0x3B, 0x6F, 0x00, 0x0C, 0x00, 0x26 ; 0138A8: provisional 68k move.w $c(a7), $26(a5)
db 0x3B, 0x6F, 0x00, 0x0E, 0x00, 0x28 ; 0138AE: provisional 68k move.w $e(a7), $28(a5)
db 0x2A, 0x5F ; 0138B4: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 0138B6: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 0138BA: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 0138BC: provisional 68k rts 
