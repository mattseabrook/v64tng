; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0100CC–0100E3, inclusive.
cdi_t7g_entry_0100cc:
db 0x6F, 0x75 ; 0100CC: provisional 68k ble.b $10143
db 0x6C, 0x64 ; 0100CE: provisional 68k bge.b $10134
db 0x6E, 0x27 ; 0100D0: provisional 68k bgt.b $100f9
db 0x74, 0x20 ; 0100D2: provisional 68k moveq #$20, d2
db 0x63, 0x72 ; 0100D4: provisional 68k bls.b $10148
db 0x65, 0x61 ; 0100D6: provisional 68k bcs.b $10139
db 0x74, 0x65 ; 0100D8: provisional 68k moveq #$65, d2
db 0x20, 0x6F, 0x62, 0x6A ; 0100DA: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 0100DE: provisional 68k bcs.b $10143
db 0x74, 0x3A ; 0100E0: provisional 68k moveq #$3a, d2
db 0x00, 0x00 ; file 0100E2
