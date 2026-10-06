; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C046–00C077, inclusive.
cdi_t7g_entry_00c046:
db 0x61, 0x74 ; 00C046: provisional 68k bsr.b $c0bc
db 0x65, 0x3A ; 00C048: provisional 68k bcs.b $c084
db 0x20, 0x49 ; 00C04A: provisional 68k movea.l a1, a0
db 0x6E, 0x20 ; 00C04C: provisional 68k bgt.b $c06e
db 0x75, 0x73 ; file 00C04E
db 0x65, 0x21 ; 00C050: provisional 68k bcs.b $c073
db 0x00, 0x00, 0x50, 0xEE ; 00C052: provisional 68k ori.b #$ee, d0
db 0xA9, 0x0C ; 00C056: provisional 68k dc.w $a90c
db 0x2A, 0x6F, 0x00, 0x10 ; 00C058: provisional 68k movea.l $10(a7), a5
db 0x30, 0x2F, 0x00, 0x14 ; 00C05C: provisional 68k move.w $14(a7), d0
db 0xB0, 0x6D, 0x00, 0x1E ; 00C060: provisional 68k cmp.w $1e(a5), d0
db 0x62, 0x4E ; 00C064: provisional 68k bhi.b $c0b4
db 0x91, 0x6D, 0x00, 0x1E ; 00C066: provisional 68k sub.w d0, $1e(a5)
db 0xD1, 0x6D, 0x00, 0x20 ; 00C06A: provisional 68k add.w d0, $20(a5)
db 0x20, 0x6D, 0x00, 0x22 ; 00C06E: provisional 68k movea.l $22(a5), a0
db 0x22, 0x48 ; 00C072: provisional 68k movea.l a0, a1
db 0x55, 0x40 ; 00C074: provisional 68k subq.w #$2, d0
db 0x6B, 0x00 ; file 00C076
