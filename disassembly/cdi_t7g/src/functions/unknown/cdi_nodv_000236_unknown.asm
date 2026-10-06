; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 000236–000293, inclusive.
cdi_nodv_entry_000236:
db 0x20, 0x6E, 0x80, 0x00 ; 000236: provisional 68k movea.l -$8000(a6), a0
db 0x43, 0xFA, 0x01, 0x10 ; 00023A: provisional 68k lea.l $34c(pc), a1
db 0x36, 0x19 ; 00023E: provisional 68k move.w (a1)+, d3
db 0x38, 0x19 ; 000240: provisional 68k move.w (a1)+, d4
db 0x3A, 0x28, 0x00, 0x22 ; 000242: provisional 68k move.w $22(a0), d5
db 0x9A, 0x43 ; 000246: provisional 68k sub.w d3, d5
db 0xE4, 0x4D ; 000248: provisional 68k lsr.w #$2, d5
db 0x3C, 0x28, 0x00, 0x24 ; 00024A: provisional 68k move.w $24(a0), d6
db 0x9C, 0x44 ; 00024E: provisional 68k sub.w d4, d6
db 0x9C, 0x44 ; 000250: provisional 68k sub.w d4, d6
db 0xCC, 0x7C, 0x00, 0xFC ; 000252: provisional 68k and.w #$fc, d6
db 0x20, 0x68, 0x00, 0x34 ; 000256: provisional 68k movea.l $34(a0), a0
db 0xD0, 0xC6 ; 00025A: provisional 68k adda.w d6, a0
db 0x42, 0x42 ; 00025C: provisional 68k clr.w d2
db 0xE6, 0x43 ; 00025E: provisional 68k asr.w #$3, d3
db 0x53, 0x43 ; 000260: provisional 68k subq.w #$1, d3
db 0x53, 0x44 ; 000262: provisional 68k subq.w #$1, d4
db 0x3F, 0x03 ; 000264: provisional 68k move.w d3, -(a7)
db 0x24, 0x58 ; 000266: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC5 ; 000268: provisional 68k adda.w d5, a2
db 0x61, 0x00, 0x00, 0x28 ; 00026A: provisional 68k bsr.w $294
db 0x7C, 0x03 ; 00026E: provisional 68k moveq #$3, d6
db 0x42, 0x47 ; 000270: provisional 68k clr.w d7
db 0xE3, 0x18 ; 000272: provisional 68k rol.b #$1, d0
db 0x64, 0x04 ; 000274: provisional 68k bcc.b $27a
db 0x3E, 0x3C, 0x00, 0x10 ; 000276: provisional 68k move.w #$10, d7
db 0xE3, 0x18 ; 00027A: provisional 68k rol.b #$1, d0
db 0x64, 0x04 ; 00027C: provisional 68k bcc.b $282
db 0x00, 0x47, 0x00, 0x01 ; 00027E: provisional 68k ori.w #$1, d7
db 0x14, 0xC7 ; 000282: provisional 68k move.b d7, (a2)+
db 0x51, 0xCE, 0xFF, 0xEA ; 000284: provisional 68k dbra d6, $270
db 0x51, 0xCB, 0xFF, 0xE0 ; 000288: provisional 68k dbra d3, $26a
db 0x36, 0x1F ; 00028C: provisional 68k move.w (a7)+, d3
db 0x51, 0xCC, 0xFF, 0xD4 ; 00028E: provisional 68k dbra d4, $264
db 0x4E, 0x75 ; 000292: provisional 68k rts 
