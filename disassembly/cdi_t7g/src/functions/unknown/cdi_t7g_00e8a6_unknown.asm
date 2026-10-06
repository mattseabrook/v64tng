; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E8A6–00E8C5, inclusive.
cdi_t7g_entry_00e8a6:
db 0x30, 0x2E, 0xAC, 0xBA ; 00E8A6: provisional 68k move.w -$5346(a6), d0
db 0x67, 0x06 ; 00E8AA: provisional 68k beq.b $e8b2
db 0x61, 0x00, 0x00, 0x6E ; 00E8AC: provisional 68k bsr.w $e91c
db 0x60, 0xF4 ; 00E8B0: provisional 68k bra.b $e8a6
db 0x61, 0x00, 0x00, 0x26 ; 00E8B2: provisional 68k bsr.w $e8da
db 0x4E, 0x75 ; 00E8B6: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00E8B8: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD4, 0xC0 ; 00E8BC: provisional 68k bsr.w $bd7e
db 0x61, 0x76 ; 00E8C0: provisional 68k bsr.b $e938
db 0x6D, 0x5F ; 00E8C2: provisional 68k blt.b $e923
db 0x72, 0x65 ; 00E8C4: provisional 68k moveq #$65, d1
