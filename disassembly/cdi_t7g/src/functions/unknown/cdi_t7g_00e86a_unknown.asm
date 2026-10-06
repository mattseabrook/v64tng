; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E86A–00E8A1, inclusive.
cdi_t7g_entry_00e86a:
db 0x30, 0x2E ; file 00E86A
db 0xAC, 0x8A ; 00E86C: provisional 68k dc.w $ac8a
db 0x66, 0x02 ; 00E86E: provisional 68k bne.b $e872
db 0x4E, 0x75 ; 00E870: provisional 68k rts 
db 0x30, 0x2E, 0xAC, 0xBA ; 00E872: provisional 68k move.w -$5346(a6), d0
db 0x67, 0x04 ; 00E876: provisional 68k beq.b $e87c
db 0x61, 0x00, 0x00, 0xA2 ; 00E878: provisional 68k bsr.w $e91c
db 0x30, 0x2E, 0xAC, 0x8C ; 00E87C: provisional 68k move.w -$5374(a6), d0
db 0xB0, 0x7C, 0x00, 0x00 ; 00E880: provisional 68k cmp.w #$0, d0
db 0x66, 0x02 ; 00E884: provisional 68k bne.b $e888
db 0x4E, 0x75 ; 00E886: provisional 68k rts 
db 0xB0, 0x7C, 0x00, 0x02 ; 00E888: provisional 68k cmp.w #$2, d0
db 0x66, 0x02 ; 00E88C: provisional 68k bne.b $e890
db 0x4E, 0x75 ; 00E88E: provisional 68k rts 
db 0xB0, 0x7C, 0x00, 0x01 ; 00E890: provisional 68k cmp.w #$1, d0
db 0x66, 0x0A ; 00E894: provisional 68k bne.b $e8a0
db 0x61, 0x00, 0x00, 0xE4 ; 00E896: provisional 68k bsr.w $e97c
db 0x61, 0x00, 0x00, 0xD2 ; 00E89A: provisional 68k bsr.w $e96e
db 0x4E, 0x75 ; 00E89E: provisional 68k rts 
db 0xB0, 0x7C ; file 00E8A0
