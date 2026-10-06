; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E600–00E637, inclusive.
cdi_t7g_entry_00e600:
db 0x48, 0xE7, 0x80, 0xC0 ; 00E600: provisional 68k movem.l d0/a0-a1, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x10 ; 00E604: provisional 68k movem.l $10(a7), a0-a1
db 0x20, 0x2F, 0x00, 0x18 ; 00E60A: provisional 68k move.l $18(a7), d0
db 0x42, 0x28, 0x00, 0x00 ; 00E60E: provisional 68k clr.b $0(a0)
db 0x42, 0x68, 0x00, 0x04 ; 00E612: provisional 68k clr.w $4(a0)
db 0x42, 0xA8, 0x00, 0x06 ; 00E616: provisional 68k clr.l $6(a0)
db 0x21, 0x49, 0x00, 0x0A ; 00E61A: provisional 68k move.l a1, $a(a0)
db 0x21, 0x40, 0x00, 0x0E ; 00E61E: provisional 68k move.l d0, $e(a0)
db 0x42, 0xA8, 0x00, 0x12 ; 00E622: provisional 68k clr.l $12(a0)
db 0x42, 0xA8, 0x00, 0x18 ; 00E626: provisional 68k clr.l $18(a0)
db 0x4C, 0xDF, 0x03, 0x01 ; 00E62A: provisional 68k movem.l (a7)+, d0/a0-a1
db 0x2F, 0x57, 0x00, 0x0C ; 00E62E: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00E632: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00E636: provisional 68k rts 
