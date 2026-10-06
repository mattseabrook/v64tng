; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BA50–00BA6F, inclusive.
cdi_t7g_entry_00ba50:
db 0x48, 0xE7, 0xC1, 0x80 ; 00BA50: provisional 68k movem.l d0-d1/d7/a0, -(a7)
db 0x32, 0x1B ; 00BA54: provisional 68k move.w (a3)+, d1
db 0x53, 0x41 ; 00BA56: provisional 68k subq.w #$1, d1
db 0x6B, 0x10 ; 00BA58: provisional 68k bmi.b $ba6a
db 0x41, 0xE8, 0x00, 0x46 ; 00BA5A: provisional 68k lea.l $46(a0), a0
db 0x61, 0x00, 0xF3, 0x12 ; 00BA5E: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00BA62: provisional 68k addq.w #$2, a3
db 0x30, 0xC0 ; 00BA64: provisional 68k move.w d0, (a0)+
db 0x51, 0xC9, 0xFF, 0xF6 ; 00BA66: provisional 68k dbra d1, $ba5e
db 0x4C, 0xDF, 0x01, 0x83 ; 00BA6A: provisional 68k movem.l (a7)+, d0-d1/d7/a0
db 0x4E, 0x75 ; 00BA6E: provisional 68k rts 
