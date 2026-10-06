; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E8B0–00E8BF, inclusive.
cdi_nodv_entry_00e8b0:
db 0x2A, 0x6E, 0xAB, 0xE0 ; 00E8B0: provisional 68k movea.l -$5420(a6), a5
db 0x0C, 0x40, 0x00, 0x01 ; 00E8B4: provisional 68k cmpi.w #$1, d0
db 0x67, 0x04 ; 00E8B8: provisional 68k beq.b $e8be
db 0x2A, 0x6E, 0xAB, 0xDC ; 00E8BA: provisional 68k movea.l -$5424(a6), a5
db 0x4E, 0x75 ; 00E8BE: provisional 68k rts 
