; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012F08–012F61, inclusive.
cdi_nodv_entry_012f08:
db 0x0C, 0x6C ; file 012F08
db 0x00, 0x00, 0x00, 0x1C ; 012F0A: provisional 68k ori.b #$1c, d0
db 0x66, 0x22 ; 012F0E: provisional 68k bne.b $12f32
db 0x48, 0xE7, 0x00, 0x0C ; 012F10: provisional 68k movem.l a4-a5, -(a7)
db 0x28, 0x6C, 0x00, 0x40 ; 012F14: provisional 68k movea.l $40(a4), a4
db 0x2A, 0x6D, 0x00, 0x40 ; 012F18: provisional 68k movea.l $40(a5), a5
db 0x61, 0x00, 0x00, 0x44 ; 012F1C: provisional 68k bsr.w $12f62
db 0x4C, 0xDF, 0x30, 0x00 ; 012F20: provisional 68k movem.l (a7)+, a4-a5
db 0x28, 0x6C, 0x00, 0x3C ; 012F24: provisional 68k movea.l $3c(a4), a4
db 0x2A, 0x6D, 0x00, 0x3C ; 012F28: provisional 68k movea.l $3c(a5), a5
db 0x61, 0x00, 0x01, 0x3C ; 012F2C: provisional 68k bsr.w $1306a
db 0x4E, 0x75 ; 012F30: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012F32: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9C, 0xC6 ; 012F36: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 012F3A: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012F3C
db 0x65, 0x5F ; 012F3E: provisional 68k bcs.b $12f9f
db 0x71, 0x68, 0x79, 0x3A ; file 012F40
db 0x20, 0x55 ; 012F44: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 012F46: provisional 68k bgt.b $12fbb
db 0x75, 0x70 ; file 012F48
db 0x70, 0x6F ; 012F4A: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 012F4C: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 012F4E: provisional 68k bcs.b $12fb4
db 0x20, 0x64 ; 012F50: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 012F52: provisional 68k bcs.b $12fc7
db 0x74, 0x69 ; 012F54: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 012F56: provisional 68k bgt.b $12fb9
db 0x74, 0x69 ; 012F58: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 012F5A: provisional 68k ble.b $12fca
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 012F5C
