; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F71E–00F769, inclusive.
cdi_t7g_entry_00f71e:
db 0x30, 0x3C, 0x00, 0x05 ; 00F71E: provisional 68k move.w #$5, d0
db 0x41, 0xEE, 0xC0, 0x6C ; 00F722: provisional 68k lea.l -$3f94(a6), a0
db 0x61, 0x00, 0x47, 0x2A ; 00F726: provisional 68k bsr.w $13e52
db 0x65, 0x00, 0x00, 0x2C ; 00F72A: provisional 68k bcs.w $f758
db 0x41, 0xEE, 0xC0, 0x6C ; 00F72E: provisional 68k lea.l -$3f94(a6), a0
db 0x43, 0xEE, 0xC0, 0x8C ; 00F732: provisional 68k lea.l -$3f74(a6), a1
db 0x61, 0x00, 0x47, 0x06 ; 00F736: provisional 68k bsr.w $13e3e
db 0x41, 0xEE, 0xC0, 0x6C ; 00F73A: provisional 68k lea.l -$3f94(a6), a0
db 0x43, 0xEE, 0xC0, 0xAC ; 00F73E: provisional 68k lea.l -$3f54(a6), a1
db 0x61, 0x00, 0x46, 0xE0 ; 00F742: provisional 68k bsr.w $13e24
db 0x41, 0xEE, 0xC0, 0x8C ; 00F746: provisional 68k lea.l -$3f74(a6), a0
db 0x70, 0x41 ; 00F74A: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00F74C: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x06 ; 00F750: provisional 68k bcs.b $f758
db 0x3D, 0x40, 0xC0, 0xCC ; 00F752: provisional 68k move.w d0, -$3f34(a6)
db 0x4E, 0x75 ; 00F756: provisional 68k rts 
db 0x32, 0x01 ; 00F758: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xC6, 0x22 ; 00F75A: provisional 68k bsr.w $bd7e
db 0x6F, 0x70 ; 00F75E: provisional 68k ble.b $f7d0
db 0x65, 0x6E ; 00F760: provisional 68k bcs.b $f7d0
db 0x5F, 0x70, 0x74, 0x72 ; 00F762: provisional 68k subq.w #$7, $72(a0, d7.w)
db 0x20, 0x3A, 0x20, 0x00 ; 00F766: provisional 68k move.l $11768(pc), d0
