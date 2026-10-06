; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D858–00D869, inclusive.
cdi_nodv_entry_00d858:
db 0x20, 0x2E, 0xAA, 0x88 ; 00D858: provisional 68k move.l -$5578(a6), d0
db 0x67, 0x0A ; 00D85C: provisional 68k beq.b $d868
db 0x20, 0x40 ; 00D85E: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xAA, 0x8C ; 00D860: provisional 68k move.l -$5574(a6), d0
db 0x42, 0x41 ; 00D864: provisional 68k clr.w d1
db 0x4E, 0x90 ; 00D866: provisional 68k jsr (a0)
db 0x4E, 0x75 ; 00D868: provisional 68k rts 
