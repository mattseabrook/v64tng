; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F3CA–00F417, inclusive.
cdi_nodv_entry_00f3ca:
db 0x48, 0xE7, 0x81, 0xC0 ; 00F3CA: provisional 68k movem.l d0/d7/a0-a1, -(a7)
db 0x42, 0x87 ; 00F3CE: provisional 68k clr.l d7
db 0x20, 0x6F, 0x00, 0x14 ; 00F3D0: provisional 68k movea.l $14(a7), a0
db 0x11, 0x47, 0x00, 0x00 ; 00F3D4: provisional 68k move.b d7, $0(a0)
db 0x31, 0x6F, 0x00, 0x18, 0x00, 0x04 ; 00F3D8: provisional 68k move.w $18(a7), $4(a0)
db 0x21, 0x47, 0x00, 0x06 ; 00F3DE: provisional 68k move.l d7, $6(a0)
db 0x21, 0x47, 0x00, 0x18 ; 00F3E2: provisional 68k move.l d7, $18(a0)
db 0x22, 0x6F, 0x00, 0x1A ; 00F3E6: provisional 68k movea.l $1a(a7), a1
db 0x30, 0x2F, 0x00, 0x1E ; 00F3EA: provisional 68k move.w $1e(a7), d0
db 0xE5, 0x40 ; 00F3EE: provisional 68k asl.w #$2, d0
db 0xD2, 0xC0 ; 00F3F0: provisional 68k adda.w d0, a1
db 0x22, 0x29, 0x00, 0x10 ; 00F3F2: provisional 68k move.l $10(a1), d1
db 0x67, 0x0C ; 00F3F6: provisional 68k beq.b $f404
db 0x23, 0x48, 0x00, 0x10 ; 00F3F8: provisional 68k move.l a0, $10(a1)
db 0x20, 0x41 ; 00F3FC: provisional 68k movea.l d1, a0
db 0x21, 0x49, 0x00, 0x06 ; 00F3FE: provisional 68k move.l a1, $6(a0)
db 0x60, 0x06 ; 00F402: provisional 68k bra.b $f40a
db 0x22, 0x88 ; 00F404: provisional 68k move.l a0, (a1)
db 0x23, 0x48, 0x00, 0x10 ; 00F406: provisional 68k move.l a0, $10(a1)
db 0x4C, 0xDF, 0x03, 0x81 ; 00F40A: provisional 68k movem.l (a7)+, d0/d7/a0-a1
db 0x2F, 0x57, 0x00, 0x0C ; 00F40E: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00F412: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00F416: provisional 68k rts 
