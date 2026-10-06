; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 014B0A–014B2F, inclusive.
cdi_nodv_entry_014b0a:
db 0x63, 0x65 ; 014B0A: provisional 68k bls.b $14b71
db 0x6C, 0x6C ; 014B0C: provisional 68k bge.b $14b7a
db 0x20, 0x2D, 0x20, 0x00 ; 014B0E: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 014B12: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xC6, 0xD6 ; 014B14: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 014B18: provisional 68k rts 
db 0x4E, 0x75 ; 014B1A: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 014B1C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x80, 0xDC ; 014B20: provisional 68k bsr.w $cbfe
db 0x63, 0x65 ; 014B24: provisional 68k bls.b $14b8b
db 0x6C, 0x6C ; 014B26: provisional 68k bge.b $14b94
db 0x5F, 0x64 ; 014B28: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 014B2A: provisional 68k bcs.b $14b9f
db 0x74, 0x72 ; 014B2C: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 014B2E: provisional 68k ble.b $14ba9
