; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FA2C–00FA53, inclusive.
cdi_t7g_entry_00fa2c:
db 0x38, 0x06 ; 00FA2C: provisional 68k move.w d6, d4
db 0x3A, 0x07 ; 00FA2E: provisional 68k move.w d7, d5
db 0x98, 0x68, 0x00, 0x02 ; 00FA30: provisional 68k sub.w $2(a0), d4
db 0x6B, 0x18 ; 00FA34: provisional 68k bmi.b $fa4e
db 0x9A, 0x68, 0x00, 0x04 ; 00FA36: provisional 68k sub.w $4(a0), d5
db 0x6B, 0x12 ; 00FA3A: provisional 68k bmi.b $fa4e
db 0xB8, 0x68, 0x00, 0x06 ; 00FA3C: provisional 68k cmp.w $6(a0), d4
db 0x6A, 0x0C ; 00FA40: provisional 68k bpl.b $fa4e
db 0xBA, 0x68, 0x00, 0x08 ; 00FA42: provisional 68k cmp.w $8(a0), d5
db 0x6A, 0x06 ; 00FA46: provisional 68k bpl.b $fa4e
db 0x00, 0x3C, 0x00, 0x01 ; 00FA48: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00FA4C: provisional 68k rts 
db 0x02, 0x3C, 0x00, 0x0E ; 00FA4E: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 00FA52: provisional 68k rts 
