; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E184–00E1A5, inclusive.
cdi_nodv_entry_00e184:
db 0x48, 0xE7, 0xFF, 0xFC ; 00E184: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x26, 0x2E, 0xAB, 0xB6 ; 00E188: provisional 68k move.l -$544a(a6), d3
db 0x67, 0x12 ; 00E18C: provisional 68k beq.b $e1a0
db 0x2A, 0x43 ; 00E18E: provisional 68k movea.l d3, a5
db 0x24, 0x2D, 0x00, 0x24 ; 00E190: provisional 68k move.l $24(a5), d2
db 0x67, 0x0A ; 00E194: provisional 68k beq.b $e1a0
db 0x20, 0x42 ; 00E196: provisional 68k movea.l d2, a0
db 0x34, 0x00 ; 00E198: provisional 68k move.w d0, d2
db 0x20, 0x2D, 0x00, 0x28 ; 00E19A: provisional 68k move.l $28(a5), d0
db 0x4E, 0x90 ; 00E19E: provisional 68k jsr (a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E1A0: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00E1A4: provisional 68k rts 
