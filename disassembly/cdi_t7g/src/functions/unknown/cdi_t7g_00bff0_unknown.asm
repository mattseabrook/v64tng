; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BFF0–00C00B, inclusive.
cdi_t7g_entry_00bff0:
db 0x65, 0x6D ; 00BFF0: provisional 68k bcs.b $c05f
db 0x20, 0x6D, 0x65, 0x6D ; 00BFF2: provisional 68k movea.l $656d(a5), a0
db 0x6F, 0x72 ; 00BFF6: provisional 68k ble.b $c06a
db 0x79, 0x00 ; file 00BFF8
db 0x32, 0x01 ; 00BFFA: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFD, 0x80 ; 00BFFC: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 00C000: provisional 68k bcc.b $c070
db 0x64, 0x65 ; 00C002: provisional 68k bcc.b $c069
db 0x5F, 0x69, 0x6E, 0x69 ; 00C004: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00C008: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00C00A: provisional 68k bsr.b $c078
