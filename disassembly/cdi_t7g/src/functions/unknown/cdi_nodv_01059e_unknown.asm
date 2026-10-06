; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01059E–0105E9, inclusive.
cdi_nodv_entry_01059e:
db 0x30, 0x3C, 0x00, 0x05 ; 01059E: provisional 68k move.w #$5, d0
db 0x41, 0xEE, 0xC0, 0x6C ; 0105A2: provisional 68k lea.l -$3f94(a6), a0
db 0x61, 0x00, 0x47, 0x2A ; 0105A6: provisional 68k bsr.w $14cd2
db 0x65, 0x00, 0x00, 0x2C ; 0105AA: provisional 68k bcs.w $105d8
db 0x41, 0xEE, 0xC0, 0x6C ; 0105AE: provisional 68k lea.l -$3f94(a6), a0
db 0x43, 0xEE, 0xC0, 0x8C ; 0105B2: provisional 68k lea.l -$3f74(a6), a1
db 0x61, 0x00, 0x47, 0x06 ; 0105B6: provisional 68k bsr.w $14cbe
db 0x41, 0xEE, 0xC0, 0x6C ; 0105BA: provisional 68k lea.l -$3f94(a6), a0
db 0x43, 0xEE, 0xC0, 0xAC ; 0105BE: provisional 68k lea.l -$3f54(a6), a1
db 0x61, 0x00, 0x46, 0xE0 ; 0105C2: provisional 68k bsr.w $14ca4
db 0x41, 0xEE, 0xC0, 0x8C ; 0105C6: provisional 68k lea.l -$3f74(a6), a0
db 0x70, 0x41 ; 0105CA: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 0105CC: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x06 ; 0105D0: provisional 68k bcs.b $105d8
db 0x3D, 0x40, 0xC0, 0xCC ; 0105D2: provisional 68k move.w d0, -$3f34(a6)
db 0x4E, 0x75 ; 0105D6: provisional 68k rts 
db 0x32, 0x01 ; 0105D8: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xC6, 0x22 ; 0105DA: provisional 68k bsr.w $cbfe
db 0x6F, 0x70 ; 0105DE: provisional 68k ble.b $10650
db 0x65, 0x6E ; 0105E0: provisional 68k bcs.b $10650
db 0x5F, 0x70, 0x74, 0x72 ; 0105E2: provisional 68k subq.w #$7, $72(a0, d7.w)
db 0x20, 0x3A, 0x20, 0x00 ; 0105E6: provisional 68k move.l $125e8(pc), d0
