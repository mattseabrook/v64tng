; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012334–012393, inclusive.
cdi_t7g_entry_012334:
db 0x30, 0x2D ; file 012334
db 0x00, 0x28, 0x32, 0x2D, 0x00, 0x24 ; 012336: provisional 68k ori.b #$2d, $24(a0)
db 0x34, 0x2C, 0x00, 0x28 ; 01233C: provisional 68k move.w $28(a4), d2
db 0x36, 0x2C, 0x00, 0x24 ; 012340: provisional 68k move.w $24(a4), d3
db 0x61, 0x00, 0x00, 0x4E ; 012344: provisional 68k bsr.w $12394
db 0x65, 0x40 ; 012348: provisional 68k bcs.b $1238a
db 0x90, 0x6D, 0x00, 0x28 ; 01234A: provisional 68k sub.w $28(a5), d0
db 0x94, 0x6C, 0x00, 0x28 ; 01234E: provisional 68k sub.w $28(a4), d2
db 0x36, 0x00 ; 012352: provisional 68k move.w d0, d3
db 0x3E, 0x01 ; 012354: provisional 68k move.w d1, d7
db 0x3A, 0x02 ; 012356: provisional 68k move.w d2, d5
db 0x48, 0xA7, 0x10, 0x00 ; 012358: provisional 68k movem.w d3, -(a7)
db 0x30, 0x2D, 0x00, 0x26 ; 01235C: provisional 68k move.w $26(a5), d0
db 0x32, 0x2D, 0x00, 0x22 ; 012360: provisional 68k move.w $22(a5), d1
db 0x34, 0x2C, 0x00, 0x26 ; 012364: provisional 68k move.w $26(a4), d2
db 0x36, 0x2C, 0x00, 0x22 ; 012368: provisional 68k move.w $22(a4), d3
db 0x61, 0x00, 0x00, 0x26 ; 01236C: provisional 68k bsr.w $12394
db 0x4C, 0x9F, 0x00, 0x08 ; 012370: provisional 68k movem.w (a7)+, d3
db 0x65, 0x14 ; 012374: provisional 68k bcs.b $1238a
db 0x90, 0x6D, 0x00, 0x26 ; 012376: provisional 68k sub.w $26(a5), d0
db 0x94, 0x6C, 0x00, 0x26 ; 01237A: provisional 68k sub.w $26(a4), d2
db 0x3C, 0x01 ; 01237E: provisional 68k move.w d1, d6
db 0x38, 0x02 ; 012380: provisional 68k move.w d2, d4
db 0x34, 0x00 ; 012382: provisional 68k move.w d0, d2
db 0x02, 0x3C, 0x00, 0x0E ; 012384: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 012388: provisional 68k rts 
db 0x42, 0x46 ; 01238A: provisional 68k clr.w d6
db 0x42, 0x47 ; 01238C: provisional 68k clr.w d7
db 0x00, 0x3C, 0x00, 0x01 ; 01238E: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 012392: provisional 68k rts 
