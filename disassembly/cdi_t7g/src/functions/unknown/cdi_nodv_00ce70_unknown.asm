; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CE70–00CE8B, inclusive.
cdi_nodv_entry_00ce70:
db 0x65, 0x6D ; 00CE70: provisional 68k bcs.b $cedf
db 0x20, 0x6D, 0x65, 0x6D ; 00CE72: provisional 68k movea.l $656d(a5), a0
db 0x6F, 0x72 ; 00CE76: provisional 68k ble.b $ceea
db 0x79, 0x00 ; file 00CE78
db 0x32, 0x01 ; 00CE7A: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFD, 0x80 ; 00CE7C: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 00CE80: provisional 68k bcc.b $cef0
db 0x64, 0x65 ; 00CE82: provisional 68k bcc.b $cee9
db 0x5F, 0x69, 0x6E, 0x69 ; 00CE84: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00CE88: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00CE8A: provisional 68k bsr.b $cef8
