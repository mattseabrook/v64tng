; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D1AA–00D1C9, inclusive.
cdi_nodv_entry_00d1aa:
db 0x20, 0x3C, 0x00, 0x00, 0x01, 0x00 ; 00D1AA: provisional 68k move.l #$100, d0
db 0x41, 0xFA, 0x00, 0x4E ; 00D1B0: provisional 68k lea.l $d200(pc), a0
db 0x43, 0xEE, 0xA9, 0x0E ; 00D1B4: provisional 68k lea.l -$56f2(a6), a1
db 0x72, 0x1F ; 00D1B8: provisional 68k moveq #$1f, d1
db 0x22, 0xC8 ; 00D1BA: provisional 68k move.l a0, (a1)+
db 0x22, 0xC0 ; 00D1BC: provisional 68k move.l d0, (a1)+
db 0x52, 0x40 ; 00D1BE: provisional 68k addq.w #$1, d0
db 0x51, 0xC9, 0xFF, 0xF8 ; 00D1C0: provisional 68k dbra d1, $d1ba
db 0x2D, 0x48, 0xAA, 0x16 ; 00D1C4: provisional 68k move.l a0, -$55ea(a6)
db 0x4E, 0x75 ; 00D1C8: provisional 68k rts 
