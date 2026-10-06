; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 000410–00046D, inclusive.
cdi_t7g_entry_000410:
db 0x20, 0x6E, 0x80, 0x00 ; 000410: provisional 68k movea.l -$8000(a6), a0
db 0x22, 0x6E, 0x80, 0x04 ; 000414: provisional 68k movea.l -$7ffc(a6), a1
db 0x36, 0x19 ; 000418: provisional 68k move.w (a1)+, d3
db 0x38, 0x19 ; 00041A: provisional 68k move.w (a1)+, d4
db 0x3A, 0x28, 0x00, 0x22 ; 00041C: provisional 68k move.w $22(a0), d5
db 0x9A, 0x43 ; 000420: provisional 68k sub.w d3, d5
db 0xE4, 0x4D ; 000422: provisional 68k lsr.w #$2, d5
db 0x3C, 0x28, 0x00, 0x24 ; 000424: provisional 68k move.w $24(a0), d6
db 0x9C, 0x44 ; 000428: provisional 68k sub.w d4, d6
db 0x9C, 0x44 ; 00042A: provisional 68k sub.w d4, d6
db 0xCC, 0x7C, 0x00, 0xFC ; 00042C: provisional 68k and.w #$fc, d6
db 0x20, 0x68, 0x00, 0x34 ; 000430: provisional 68k movea.l $34(a0), a0
db 0xD0, 0xC6 ; 000434: provisional 68k adda.w d6, a0
db 0x42, 0x42 ; 000436: provisional 68k clr.w d2
db 0xE6, 0x43 ; 000438: provisional 68k asr.w #$3, d3
db 0x53, 0x43 ; 00043A: provisional 68k subq.w #$1, d3
db 0x53, 0x44 ; 00043C: provisional 68k subq.w #$1, d4
db 0x3F, 0x03 ; 00043E: provisional 68k move.w d3, -(a7)
db 0x24, 0x58 ; 000440: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC5 ; 000442: provisional 68k adda.w d5, a2
db 0x61, 0x00, 0x00, 0x28 ; 000444: provisional 68k bsr.w $46e
db 0x7C, 0x03 ; 000448: provisional 68k moveq #$3, d6
db 0x42, 0x47 ; 00044A: provisional 68k clr.w d7
db 0xE3, 0x18 ; 00044C: provisional 68k rol.b #$1, d0
db 0x64, 0x04 ; 00044E: provisional 68k bcc.b $454
db 0x3E, 0x3C, 0x00, 0x10 ; 000450: provisional 68k move.w #$10, d7
db 0xE3, 0x18 ; 000454: provisional 68k rol.b #$1, d0
db 0x64, 0x04 ; 000456: provisional 68k bcc.b $45c
db 0x00, 0x47, 0x00, 0x01 ; 000458: provisional 68k ori.w #$1, d7
db 0x14, 0xC7 ; 00045C: provisional 68k move.b d7, (a2)+
db 0x51, 0xCE, 0xFF, 0xEA ; 00045E: provisional 68k dbra d6, $44a
db 0x51, 0xCB, 0xFF, 0xE0 ; 000462: provisional 68k dbra d3, $444
db 0x36, 0x1F ; 000466: provisional 68k move.w (a7)+, d3
db 0x51, 0xCC, 0xFF, 0xD4 ; 000468: provisional 68k dbra d4, $43e
db 0x4E, 0x75 ; 00046C: provisional 68k rts 
