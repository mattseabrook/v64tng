; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C9D8–00C9E9, inclusive.
cdi_t7g_entry_00c9d8:
db 0x20, 0x2E, 0xAA, 0x88 ; 00C9D8: provisional 68k move.l -$5578(a6), d0
db 0x67, 0x0A ; 00C9DC: provisional 68k beq.b $c9e8
db 0x20, 0x40 ; 00C9DE: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xAA, 0x8C ; 00C9E0: provisional 68k move.l -$5574(a6), d0
db 0x42, 0x41 ; 00C9E4: provisional 68k clr.w d1
db 0x4E, 0x90 ; 00C9E6: provisional 68k jsr (a0)
db 0x4E, 0x75 ; 00C9E8: provisional 68k rts 
