; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A2E–010A45, inclusive.
cdi_t7g_entry_010a2e:
db 0x3D, 0x41, 0xD0, 0x26 ; 010A2E: provisional 68k move.w d1, -$2fda(a6)
db 0x3D, 0x41, 0xD0, 0x28 ; 010A32: provisional 68k move.w d1, -$2fd8(a6)
db 0x3E, 0x02 ; 010A36: provisional 68k move.w d2, d7
db 0x67, 0x00, 0x01, 0x36 ; 010A38: provisional 68k beq.w $10b70
db 0x7C, 0x00 ; 010A3C: provisional 68k moveq #$0, d6
db 0x20, 0x46 ; 010A3E: provisional 68k movea.l d6, a0
db 0x22, 0x7C, 0x00, 0x00, 0x00, 0x00 ; 010A40: provisional 68k movea.l #$0, a1
