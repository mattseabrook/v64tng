; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F2C2–00F2E1, inclusive.
cdi_nodv_entry_00f2c2:
db 0x22, 0x28, 0x00, 0x1E ; 00F2C2: provisional 68k move.l $1e(a0), d1
db 0x67, 0x18 ; 00F2C6: provisional 68k beq.b $f2e0
db 0x2F, 0x08 ; 00F2C8: provisional 68k move.l a0, -(a7)
db 0x3F, 0x00 ; 00F2CA: provisional 68k move.w d0, -(a7)
db 0x22, 0x41 ; 00F2CC: provisional 68k movea.l d1, a1
db 0x20, 0x28, 0x00, 0x22 ; 00F2CE: provisional 68k move.l $22(a0), d0
db 0x22, 0x28, 0x00, 0x26 ; 00F2D2: provisional 68k move.l $26(a0), d1
db 0x34, 0x3C, 0x00, 0x14 ; 00F2D6: provisional 68k move.w #$14, d2
db 0x4E, 0x91 ; 00F2DA: provisional 68k jsr (a1)
db 0x30, 0x1F ; 00F2DC: provisional 68k move.w (a7)+, d0
db 0x20, 0x5F ; 00F2DE: provisional 68k movea.l (a7)+, a0
db 0x4E, 0x75 ; 00F2E0: provisional 68k rts 
