; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E948–00E951, inclusive.
cdi_nodv_entry_00e948:
db 0x0C, 0x68, 0x00, 0x06, 0x00, 0x0A ; 00E948: provisional 68k cmpi.w #$6, $a(a0)
db 0x67, 0x02 ; 00E94E: provisional 68k beq.b $e952
db 0x4E, 0x75 ; 00E950: provisional 68k rts 
