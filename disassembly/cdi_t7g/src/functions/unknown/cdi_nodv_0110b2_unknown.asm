; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0110B2–0110D5, inclusive.
cdi_nodv_entry_0110b2:
db 0x22, 0x09 ; 0110B2: provisional 68k move.l a1, d1
db 0x66, 0x04 ; 0110B4: provisional 68k bne.b $110ba
db 0x22, 0x6E, 0xD0, 0x00 ; 0110B6: provisional 68k movea.l -$3000(a6), a1
db 0x2B, 0x49, 0x00, 0x0C ; 0110BA: provisional 68k move.l a1, $c(a5)
db 0x4A, 0xA9, 0x00, 0x10 ; 0110BE: provisional 68k tst.l $10(a1)
db 0x67, 0x0C ; 0110C2: provisional 68k beq.b $110d0
db 0x24, 0x69, 0x00, 0x10 ; 0110C4: provisional 68k movea.l $10(a1), a2
db 0x2B, 0x4A, 0x00, 0x14 ; 0110C8: provisional 68k move.l a2, $14(a5)
db 0x25, 0x4D, 0x00, 0x18 ; 0110CC: provisional 68k move.l a5, $18(a2)
db 0x23, 0x4D, 0x00, 0x10 ; 0110D0: provisional 68k move.l a5, $10(a1)
db 0x4E, 0x75 ; 0110D4: provisional 68k rts 
