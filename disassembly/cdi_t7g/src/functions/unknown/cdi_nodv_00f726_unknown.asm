; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F726–00F745, inclusive.
cdi_nodv_entry_00f726:
db 0x30, 0x2E, 0xAC, 0xBA ; 00F726: provisional 68k move.w -$5346(a6), d0
db 0x67, 0x06 ; 00F72A: provisional 68k beq.b $f732
db 0x61, 0x00, 0x00, 0x6E ; 00F72C: provisional 68k bsr.w $f79c
db 0x60, 0xF4 ; 00F730: provisional 68k bra.b $f726
db 0x61, 0x00, 0x00, 0x26 ; 00F732: provisional 68k bsr.w $f75a
db 0x4E, 0x75 ; 00F736: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00F738: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD4, 0xC0 ; 00F73C: provisional 68k bsr.w $cbfe
db 0x61, 0x76 ; 00F740: provisional 68k bsr.b $f7b8
db 0x6D, 0x5F ; 00F742: provisional 68k blt.b $f7a3
db 0x72, 0x65 ; 00F744: provisional 68k moveq #$65, d1
