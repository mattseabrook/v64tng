; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C32A–00C349, inclusive.
cdi_t7g_entry_00c32a:
db 0x20, 0x3C, 0x00, 0x00, 0x01, 0x00 ; 00C32A: provisional 68k move.l #$100, d0
db 0x41, 0xFA, 0x00, 0x4E ; 00C330: provisional 68k lea.l $c380(pc), a0
db 0x43, 0xEE, 0xA9, 0x0E ; 00C334: provisional 68k lea.l -$56f2(a6), a1
db 0x72, 0x1F ; 00C338: provisional 68k moveq #$1f, d1
db 0x22, 0xC8 ; 00C33A: provisional 68k move.l a0, (a1)+
db 0x22, 0xC0 ; 00C33C: provisional 68k move.l d0, (a1)+
db 0x52, 0x40 ; 00C33E: provisional 68k addq.w #$1, d0
db 0x51, 0xC9, 0xFF, 0xF8 ; 00C340: provisional 68k dbra d1, $c33a
db 0x2D, 0x48, 0xAA, 0x16 ; 00C344: provisional 68k move.l a0, -$55ea(a6)
db 0x4E, 0x75 ; 00C348: provisional 68k rts 
