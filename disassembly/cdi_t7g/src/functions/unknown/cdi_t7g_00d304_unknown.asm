; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D304–00D325, inclusive.
cdi_t7g_entry_00d304:
db 0x48, 0xE7, 0xFF, 0xFC ; 00D304: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x26, 0x2E, 0xAB, 0xB6 ; 00D308: provisional 68k move.l -$544a(a6), d3
db 0x67, 0x12 ; 00D30C: provisional 68k beq.b $d320
db 0x2A, 0x43 ; 00D30E: provisional 68k movea.l d3, a5
db 0x24, 0x2D, 0x00, 0x24 ; 00D310: provisional 68k move.l $24(a5), d2
db 0x67, 0x0A ; 00D314: provisional 68k beq.b $d320
db 0x20, 0x42 ; 00D316: provisional 68k movea.l d2, a0
db 0x34, 0x00 ; 00D318: provisional 68k move.w d0, d2
db 0x20, 0x2D, 0x00, 0x28 ; 00D31A: provisional 68k move.l $28(a5), d0
db 0x4E, 0x90 ; 00D31E: provisional 68k jsr (a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00D320: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00D324: provisional 68k rts 
