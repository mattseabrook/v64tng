; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012D60–012D95, inclusive.
cdi_t7g_entry_012d60:
db 0x49, 0xFA, 0x01, 0x00 ; 012D60: provisional 68k lea.l $12e62(pc), a4
db 0x2A, 0x4C ; 012D64: provisional 68k movea.l a4, a5
db 0x7E, 0x08 ; 012D66: provisional 68k moveq #$8, d7
db 0x9E, 0x41 ; 012D68: provisional 68k sub.w d1, d7
db 0xE1, 0x41 ; 012D6A: provisional 68k asl.w #$8, d1
db 0xE1, 0x47 ; 012D6C: provisional 68k asl.w #$8, d7
db 0xD8, 0xC1 ; 012D6E: provisional 68k adda.w d1, a4
db 0xDA, 0xC7 ; 012D70: provisional 68k adda.w d7, a5
db 0x14, 0x34, 0x20, 0x00 ; 012D72: provisional 68k move.b (a4, d2.w), d2
db 0x16, 0x2B, 0x00, 0x04 ; 012D76: provisional 68k move.b $4(a3), d3
db 0xD4, 0x35, 0x30, 0x00 ; 012D7A: provisional 68k add.b (a5, d3.w), d2
db 0x17, 0x42, 0x00, 0x04 ; 012D7E: provisional 68k move.b d2, $4(a3)
db 0x14, 0x1A ; 012D82: provisional 68k move.b (a2)+, d2
db 0x14, 0x34, 0x20, 0x00 ; 012D84: provisional 68k move.b (a4, d2.w), d2
db 0x16, 0x2B, 0x00, 0x09 ; 012D88: provisional 68k move.b $9(a3), d3
db 0xD4, 0x35, 0x30, 0x00 ; 012D8C: provisional 68k add.b (a5, d3.w), d2
db 0x17, 0x42, 0x00, 0x09 ; 012D90: provisional 68k move.b d2, $9(a3)
db 0x4E, 0x75 ; 012D94: provisional 68k rts 
