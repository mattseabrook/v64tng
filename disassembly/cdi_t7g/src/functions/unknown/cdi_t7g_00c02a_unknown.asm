; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C02A–00C045, inclusive.
cdi_t7g_entry_00c02a:
db 0x48, 0xE7, 0x80, 0x0C ; file 00C02A
db 0x4A, 0x6E, 0xA9, 0x0C ; 00C02E: provisional 68k tst.w -$56f4(a6)
db 0x67, 0x20 ; 00C032: provisional 68k beq.b $c054
db 0x32, 0x3C, 0x80, 0x00 ; 00C034: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xFD, 0x44 ; 00C038: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 00C03C: provisional 68k bcc.b $c0ac
db 0x64, 0x65 ; 00C03E: provisional 68k bcc.b $c0a5
db 0x5F, 0x61 ; 00C040: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00C042: provisional 68k bge.b $c0b0
db 0x6F, 0x63 ; 00C044: provisional 68k ble.b $c0a9
