; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CC52–00CC6F, inclusive.
cdi_t7g_entry_00cc52:
db 0x41, 0xE8, 0x00, 0x14 ; 00CC52: provisional 68k lea.l $14(a0), a0
db 0x4A, 0x2E, 0xAB, 0xAC ; 00CC56: provisional 68k tst.b -$5454(a6)
db 0x57, 0xEE, 0xAB, 0xAC ; 00CC5A: provisional 68k seq.b -$5454(a6)
db 0x67, 0x10 ; 00CC5E: provisional 68k beq.b $cc70
db 0x30, 0x2E, 0xAB, 0x8E ; 00CC60: provisional 68k move.w -$5472(a6), d0
db 0x43, 0xEE, 0xAB, 0xA4 ; 00CC64: provisional 68k lea.l -$545c(a6), a1
db 0x24, 0x6E, 0xAB, 0x94 ; 00CC68: provisional 68k movea.l -$546c(a6), a2
db 0x60, 0x00, 0x00, 0x0E ; 00CC6C: provisional 68k bra.w $cc7c
