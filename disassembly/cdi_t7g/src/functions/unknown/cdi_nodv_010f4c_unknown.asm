; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010F4C–010F63, inclusive.
cdi_nodv_entry_010f4c:
db 0x6F, 0x75 ; 010F4C: provisional 68k ble.b $10fc3
db 0x6C, 0x64 ; 010F4E: provisional 68k bge.b $10fb4
db 0x6E, 0x27 ; 010F50: provisional 68k bgt.b $10f79
db 0x74, 0x20 ; 010F52: provisional 68k moveq #$20, d2
db 0x63, 0x72 ; 010F54: provisional 68k bls.b $10fc8
db 0x65, 0x61 ; 010F56: provisional 68k bcs.b $10fb9
db 0x74, 0x65 ; 010F58: provisional 68k moveq #$65, d2
db 0x20, 0x6F, 0x62, 0x6A ; 010F5A: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 010F5E: provisional 68k bcs.b $10fc3
db 0x74, 0x3A ; 010F60: provisional 68k moveq #$3a, d2
db 0x00, 0x00 ; file 010F62
