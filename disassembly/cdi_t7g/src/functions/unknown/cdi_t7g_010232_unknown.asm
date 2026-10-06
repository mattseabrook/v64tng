; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010232–010255, inclusive.
cdi_t7g_entry_010232:
db 0x22, 0x09 ; 010232: provisional 68k move.l a1, d1
db 0x66, 0x04 ; 010234: provisional 68k bne.b $1023a
db 0x22, 0x6E, 0xD0, 0x00 ; 010236: provisional 68k movea.l -$3000(a6), a1
db 0x2B, 0x49, 0x00, 0x0C ; 01023A: provisional 68k move.l a1, $c(a5)
db 0x4A, 0xA9, 0x00, 0x10 ; 01023E: provisional 68k tst.l $10(a1)
db 0x67, 0x0C ; 010242: provisional 68k beq.b $10250
db 0x24, 0x69, 0x00, 0x10 ; 010244: provisional 68k movea.l $10(a1), a2
db 0x2B, 0x4A, 0x00, 0x14 ; 010248: provisional 68k move.l a2, $14(a5)
db 0x25, 0x4D, 0x00, 0x18 ; 01024C: provisional 68k move.l a5, $18(a2)
db 0x23, 0x4D, 0x00, 0x10 ; 010250: provisional 68k move.l a5, $10(a1)
db 0x4E, 0x75 ; 010254: provisional 68k rts 
