; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E442–00E461, inclusive.
cdi_t7g_entry_00e442:
db 0x22, 0x28, 0x00, 0x1E ; 00E442: provisional 68k move.l $1e(a0), d1
db 0x67, 0x18 ; 00E446: provisional 68k beq.b $e460
db 0x2F, 0x08 ; 00E448: provisional 68k move.l a0, -(a7)
db 0x3F, 0x00 ; 00E44A: provisional 68k move.w d0, -(a7)
db 0x22, 0x41 ; 00E44C: provisional 68k movea.l d1, a1
db 0x20, 0x28, 0x00, 0x22 ; 00E44E: provisional 68k move.l $22(a0), d0
db 0x22, 0x28, 0x00, 0x26 ; 00E452: provisional 68k move.l $26(a0), d1
db 0x34, 0x3C, 0x00, 0x14 ; 00E456: provisional 68k move.w #$14, d2
db 0x4E, 0x91 ; 00E45A: provisional 68k jsr (a1)
db 0x30, 0x1F ; 00E45C: provisional 68k move.w (a7)+, d0
db 0x20, 0x5F ; 00E45E: provisional 68k movea.l (a7)+, a0
db 0x4E, 0x75 ; 00E460: provisional 68k rts 
