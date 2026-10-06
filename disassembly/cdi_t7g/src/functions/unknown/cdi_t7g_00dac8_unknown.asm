; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DAC8–00DAD1, inclusive.
cdi_t7g_entry_00dac8:
db 0x0C, 0x68, 0x00, 0x06, 0x00, 0x0A ; 00DAC8: provisional 68k cmpi.w #$6, $a(a0)
db 0x67, 0x02 ; 00DACE: provisional 68k beq.b $dad2
db 0x4E, 0x75 ; 00DAD0: provisional 68k rts 
