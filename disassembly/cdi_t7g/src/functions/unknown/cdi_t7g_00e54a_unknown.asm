; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E54A–00E597, inclusive.
cdi_t7g_entry_00e54a:
db 0x48, 0xE7, 0x81, 0xC0 ; 00E54A: provisional 68k movem.l d0/d7/a0-a1, -(a7)
db 0x42, 0x87 ; 00E54E: provisional 68k clr.l d7
db 0x20, 0x6F, 0x00, 0x14 ; 00E550: provisional 68k movea.l $14(a7), a0
db 0x11, 0x47, 0x00, 0x00 ; 00E554: provisional 68k move.b d7, $0(a0)
db 0x31, 0x6F, 0x00, 0x18, 0x00, 0x04 ; 00E558: provisional 68k move.w $18(a7), $4(a0)
db 0x21, 0x47, 0x00, 0x06 ; 00E55E: provisional 68k move.l d7, $6(a0)
db 0x21, 0x47, 0x00, 0x18 ; 00E562: provisional 68k move.l d7, $18(a0)
db 0x22, 0x6F, 0x00, 0x1A ; 00E566: provisional 68k movea.l $1a(a7), a1
db 0x30, 0x2F, 0x00, 0x1E ; 00E56A: provisional 68k move.w $1e(a7), d0
db 0xE5, 0x40 ; 00E56E: provisional 68k asl.w #$2, d0
db 0xD2, 0xC0 ; 00E570: provisional 68k adda.w d0, a1
db 0x22, 0x29, 0x00, 0x10 ; 00E572: provisional 68k move.l $10(a1), d1
db 0x67, 0x0C ; 00E576: provisional 68k beq.b $e584
db 0x23, 0x48, 0x00, 0x10 ; 00E578: provisional 68k move.l a0, $10(a1)
db 0x20, 0x41 ; 00E57C: provisional 68k movea.l d1, a0
db 0x21, 0x49, 0x00, 0x06 ; 00E57E: provisional 68k move.l a1, $6(a0)
db 0x60, 0x06 ; 00E582: provisional 68k bra.b $e58a
db 0x22, 0x88 ; 00E584: provisional 68k move.l a0, (a1)
db 0x23, 0x48, 0x00, 0x10 ; 00E586: provisional 68k move.l a0, $10(a1)
db 0x4C, 0xDF, 0x03, 0x81 ; 00E58A: provisional 68k movem.l (a7)+, d0/d7/a0-a1
db 0x2F, 0x57, 0x00, 0x0C ; 00E58E: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00E592: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00E596: provisional 68k rts 
