; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010FDA–010FF5, inclusive.
cdi_nodv_entry_010fda:
db 0x61, 0x00, 0x00, 0xA6 ; 010FDA: provisional 68k bsr.w $11082
db 0x61, 0x00, 0x00, 0x7A ; 010FDE: provisional 68k bsr.w $1105a
db 0x2B, 0x68, 0x00, 0x08, 0x00, 0x14 ; 010FE2: provisional 68k move.l $8(a0), $14(a5)
db 0x21, 0x4D, 0x00, 0x08 ; 010FE8: provisional 68k move.l a5, $8(a0)
db 0x52, 0x68, 0x00, 0x04 ; 010FEC: provisional 68k addq.w #$1, $4(a0)
db 0x53, 0x68, 0x00, 0x06 ; 010FF0: provisional 68k subq.w #$1, $6(a0)
db 0x4E, 0x75 ; 010FF4: provisional 68k rts 
