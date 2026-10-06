; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CFF8–00D057, inclusive.
cdi_nodv_entry_00cff8:
db 0x48, 0xE7, 0x00, 0xF0 ; 00CFF8: provisional 68k movem.l a0-a3, -(a7)
db 0x4A, 0x6E, 0xA9, 0x0C ; 00CFFC: provisional 68k tst.w -$56f4(a6)
db 0x67, 0x22 ; 00D000: provisional 68k beq.b $d024
db 0x32, 0x3C, 0x80, 0x00 ; 00D002: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xFB, 0xF6 ; 00D006: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 00D00A: provisional 68k bcc.b $d07a
db 0x64, 0x65 ; 00D00C: provisional 68k bcc.b $d073
db 0x5F, 0x64 ; 00D00E: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x61 ; 00D010: provisional 68k bcs.b $d073
db 0x6C, 0x6C ; 00D012: provisional 68k bge.b $d080
db 0x6F, 0x63 ; 00D014: provisional 68k ble.b $d079
db 0x61, 0x74 ; 00D016: provisional 68k bsr.b $d08c
db 0x65, 0x3A ; 00D018: provisional 68k bcs.b $d054
db 0x20, 0x49 ; 00D01A: provisional 68k movea.l a1, a0
db 0x6E, 0x20 ; 00D01C: provisional 68k bgt.b $d03e
db 0x75, 0x73 ; file 00D01E
db 0x65, 0x21 ; 00D020: provisional 68k bcs.b $d043
db 0x00, 0x00, 0x50, 0xEE ; 00D022: provisional 68k ori.b #$ee, d0
db 0xA9, 0x0C ; 00D026: provisional 68k dc.w $a90c
db 0x20, 0x6F, 0x00, 0x14 ; 00D028: provisional 68k movea.l $14(a7), a0
db 0xB1, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 00D02C: provisional 68k cmpa.l #$0, a0
db 0x67, 0x2A ; 00D032: provisional 68k beq.b $d05e
db 0x22, 0x48 ; 00D034: provisional 68k movea.l a0, a1
db 0x24, 0x69, 0x09, 0x34 ; 00D036: provisional 68k movea.l $934(a1), a2
db 0x26, 0x69, 0x09, 0x30 ; 00D03A: provisional 68k movea.l $930(a1), a3
db 0x23, 0x6B, 0x00, 0x22, 0x09, 0x34 ; 00D03E: provisional 68k move.l $22(a3), $934(a1)
db 0x27, 0x49, 0x00, 0x22 ; 00D044: provisional 68k move.l a1, $22(a3)
db 0x52, 0x6B, 0x00, 0x1E ; 00D048: provisional 68k addq.w #$1, $1e(a3)
db 0x53, 0x6B, 0x00, 0x20 ; 00D04C: provisional 68k subq.w #$1, $20(a3)
db 0x22, 0x4A ; 00D050: provisional 68k movea.l a2, a1
db 0xB3, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 00D052: provisional 68k cmpa.l #$0, a1
