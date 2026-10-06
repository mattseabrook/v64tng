; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DE42–00DE85, inclusive.
cdi_nodv_entry_00de42:
db 0x48, 0xE7 ; file 00DE42
db 0xC0, 0x80 ; 00DE44: provisional 68k and.l d0, d0
db 0x4A, 0xAE, 0xAB, 0xB6 ; 00DE46: provisional 68k tst.l -$544a(a6)
db 0x66, 0x0A ; 00DE4A: provisional 68k bne.b $de56
db 0x30, 0x3C, 0x00, 0x5D ; 00DE4C: provisional 68k move.w #$5d, d0
db 0x61, 0x00, 0x03, 0x54 ; 00DE50: provisional 68k bsr.w $e1a6
db 0x60, 0x24 ; 00DE54: provisional 68k bra.b $de7a
db 0x20, 0x6E, 0xAB, 0xB6 ; 00DE56: provisional 68k movea.l -$544a(a6), a0
db 0x0C, 0x68, 0x00, 0x01, 0x00, 0x1C ; 00DE5A: provisional 68k cmpi.w #$1, $1c(a0)
db 0x66, 0x06 ; 00DE60: provisional 68k bne.b $de68
db 0x61, 0x00, 0x03, 0x5C ; 00DE62: provisional 68k bsr.w $e1c0
db 0x60, 0x12 ; 00DE66: provisional 68k bra.b $de7a
db 0x30, 0x3C, 0x00, 0x64 ; 00DE68: provisional 68k move.w #$64, d0
db 0x32, 0x2F, 0x00, 0x10 ; 00DE6C: provisional 68k move.w $10(a7), d1
db 0x61, 0x00, 0xFE, 0xC6 ; 00DE70: provisional 68k bsr.w $dd38
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAB, 0xCC ; 00DE74: provisional 68k move.w #$ffff, -$5434(a6)
db 0x4C, 0xDF, 0x01, 0x03 ; 00DE7A: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2F, 0x57, 0x00, 0x02 ; 00DE7E: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00DE82: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00DE84: provisional 68k rts 
