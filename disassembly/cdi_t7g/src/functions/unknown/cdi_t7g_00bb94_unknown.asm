; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BB94–00BBB9, inclusive.
cdi_t7g_entry_00bb94:
db 0x41, 0xEE, 0xA8, 0xF2 ; 00BB94: provisional 68k lea.l -$570e(a6), a0
db 0x43, 0xEE, 0xA8, 0xFA ; 00BB98: provisional 68k lea.l -$5706(a6), a1
db 0x20, 0x3C, 0xFF, 0xFF, 0xD1, 0x6A ; 00BB9C: provisional 68k move.l #$ffffd16a, d0
db 0x45, 0xF6, 0x08, 0x00 ; 00BBA2: provisional 68k lea.l (a6, d0.l), a2
db 0x30, 0x3C, 0x00, 0x01 ; 00BBA6: provisional 68k move.w #$1, d0
db 0x20, 0xCA ; 00BBAA: provisional 68k move.l a2, (a0)+
db 0x42, 0x19 ; 00BBAC: provisional 68k clr.b (a1)+
db 0xD5, 0xFC, 0x00, 0x00, 0x40, 0x00 ; 00BBAE: provisional 68k adda.l #$4000, a2
db 0x51, 0xC8, 0xFF, 0xF4 ; 00BBB4: provisional 68k dbra d0, $bbaa
db 0x4E, 0x75 ; 00BBB8: provisional 68k rts 
