; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CEAA–00CEC5, inclusive.
cdi_nodv_entry_00ceaa:
db 0x48, 0xE7, 0x80, 0x0C ; file 00CEAA
db 0x4A, 0x6E, 0xA9, 0x0C ; 00CEAE: provisional 68k tst.w -$56f4(a6)
db 0x67, 0x20 ; 00CEB2: provisional 68k beq.b $ced4
db 0x32, 0x3C, 0x80, 0x00 ; 00CEB4: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xFD, 0x44 ; 00CEB8: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 00CEBC: provisional 68k bcc.b $cf2c
db 0x64, 0x65 ; 00CEBE: provisional 68k bcc.b $cf25
db 0x5F, 0x61 ; 00CEC0: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00CEC2: provisional 68k bge.b $cf30
db 0x6F, 0x63 ; 00CEC4: provisional 68k ble.b $cf29
