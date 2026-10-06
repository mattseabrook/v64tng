; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010BF8–010C2D, inclusive.
cdi_nodv_entry_010bf8:
db 0x48, 0xE7, 0x70, 0xC0 ; 010BF8: provisional 68k movem.l d1-d3/a0-a1, -(a7)
db 0x70, 0xFF ; 010BFC: provisional 68k moveq #$ff, d0
db 0x52, 0x40 ; 010BFE: provisional 68k addq.w #$1, d0
db 0x32, 0x00 ; 010C00: provisional 68k move.w d0, d1
db 0x74, 0x00 ; 010C02: provisional 68k moveq #$0, d2
db 0x4A, 0x31, 0x20, 0x00 ; 010C04: provisional 68k tst.b (a1, d2.w)
db 0x67, 0x12 ; 010C08: provisional 68k beq.b $10c1c
db 0x16, 0x30, 0x10, 0x00 ; 010C0A: provisional 68k move.b (a0, d1.w), d3
db 0x67, 0x16 ; 010C0E: provisional 68k beq.b $10c26
db 0xB6, 0x31, 0x20, 0x00 ; 010C10: provisional 68k cmp.b (a1, d2.w), d3
db 0x66, 0xE8 ; 010C14: provisional 68k bne.b $10bfe
db 0x52, 0x41 ; 010C16: provisional 68k addq.w #$1, d1
db 0x52, 0x42 ; 010C18: provisional 68k addq.w #$1, d2
db 0x60, 0xE8 ; 010C1A: provisional 68k bra.b $10c04
db 0x4C, 0xDF, 0x03, 0x0E ; 010C1C: provisional 68k movem.l (a7)+, d1-d3/a0-a1
db 0x02, 0x3C, 0x00, 0x0B ; 010C20: provisional 68k andi.b #$b, ccr
db 0x4E, 0x75 ; 010C24: provisional 68k rts 
db 0x4C, 0xDF, 0x03, 0x0E ; 010C26: provisional 68k movem.l (a7)+, d1-d3/a0-a1
db 0x70, 0x00 ; 010C2A: provisional 68k moveq #$0, d0
db 0x4E, 0x75 ; 010C2C: provisional 68k rts 
