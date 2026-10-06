; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C178–00C1D7, inclusive.
cdi_t7g_entry_00c178:
db 0x48, 0xE7, 0x00, 0xF0 ; 00C178: provisional 68k movem.l a0-a3, -(a7)
db 0x4A, 0x6E, 0xA9, 0x0C ; 00C17C: provisional 68k tst.w -$56f4(a6)
db 0x67, 0x22 ; 00C180: provisional 68k beq.b $c1a4
db 0x32, 0x3C, 0x80, 0x00 ; 00C182: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xFB, 0xF6 ; 00C186: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 00C18A: provisional 68k bcc.b $c1fa
db 0x64, 0x65 ; 00C18C: provisional 68k bcc.b $c1f3
db 0x5F, 0x64 ; 00C18E: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x61 ; 00C190: provisional 68k bcs.b $c1f3
db 0x6C, 0x6C ; 00C192: provisional 68k bge.b $c200
db 0x6F, 0x63 ; 00C194: provisional 68k ble.b $c1f9
db 0x61, 0x74 ; 00C196: provisional 68k bsr.b $c20c
db 0x65, 0x3A ; 00C198: provisional 68k bcs.b $c1d4
db 0x20, 0x49 ; 00C19A: provisional 68k movea.l a1, a0
db 0x6E, 0x20 ; 00C19C: provisional 68k bgt.b $c1be
db 0x75, 0x73 ; file 00C19E
db 0x65, 0x21 ; 00C1A0: provisional 68k bcs.b $c1c3
db 0x00, 0x00, 0x50, 0xEE ; 00C1A2: provisional 68k ori.b #$ee, d0
db 0xA9, 0x0C ; 00C1A6: provisional 68k dc.w $a90c
db 0x20, 0x6F, 0x00, 0x14 ; 00C1A8: provisional 68k movea.l $14(a7), a0
db 0xB1, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 00C1AC: provisional 68k cmpa.l #$0, a0
db 0x67, 0x2A ; 00C1B2: provisional 68k beq.b $c1de
db 0x22, 0x48 ; 00C1B4: provisional 68k movea.l a0, a1
db 0x24, 0x69, 0x09, 0x34 ; 00C1B6: provisional 68k movea.l $934(a1), a2
db 0x26, 0x69, 0x09, 0x30 ; 00C1BA: provisional 68k movea.l $930(a1), a3
db 0x23, 0x6B, 0x00, 0x22, 0x09, 0x34 ; 00C1BE: provisional 68k move.l $22(a3), $934(a1)
db 0x27, 0x49, 0x00, 0x22 ; 00C1C4: provisional 68k move.l a1, $22(a3)
db 0x52, 0x6B, 0x00, 0x1E ; 00C1C8: provisional 68k addq.w #$1, $1e(a3)
db 0x53, 0x6B, 0x00, 0x20 ; 00C1CC: provisional 68k subq.w #$1, $20(a3)
db 0x22, 0x4A ; 00C1D0: provisional 68k movea.l a2, a1
db 0xB3, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 00C1D2: provisional 68k cmpa.l #$0, a1
