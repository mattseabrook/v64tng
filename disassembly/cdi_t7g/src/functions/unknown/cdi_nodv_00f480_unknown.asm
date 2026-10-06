; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F480–00F4B7, inclusive.
cdi_nodv_entry_00f480:
db 0x48, 0xE7, 0x80, 0xC0 ; 00F480: provisional 68k movem.l d0/a0-a1, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x10 ; 00F484: provisional 68k movem.l $10(a7), a0-a1
db 0x20, 0x2F, 0x00, 0x18 ; 00F48A: provisional 68k move.l $18(a7), d0
db 0x42, 0x28, 0x00, 0x00 ; 00F48E: provisional 68k clr.b $0(a0)
db 0x42, 0x68, 0x00, 0x04 ; 00F492: provisional 68k clr.w $4(a0)
db 0x42, 0xA8, 0x00, 0x06 ; 00F496: provisional 68k clr.l $6(a0)
db 0x21, 0x49, 0x00, 0x0A ; 00F49A: provisional 68k move.l a1, $a(a0)
db 0x21, 0x40, 0x00, 0x0E ; 00F49E: provisional 68k move.l d0, $e(a0)
db 0x42, 0xA8, 0x00, 0x12 ; 00F4A2: provisional 68k clr.l $12(a0)
db 0x42, 0xA8, 0x00, 0x18 ; 00F4A6: provisional 68k clr.l $18(a0)
db 0x4C, 0xDF, 0x03, 0x01 ; 00F4AA: provisional 68k movem.l (a7)+, d0/a0-a1
db 0x2F, 0x57, 0x00, 0x0C ; 00F4AE: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00F4B2: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00F4B6: provisional 68k rts 
