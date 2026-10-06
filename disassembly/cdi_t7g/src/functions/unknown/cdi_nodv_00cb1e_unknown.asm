; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CB1E–00CB69, inclusive.
cdi_nodv_entry_00cb1e:
db 0x48, 0xE7, 0xE0, 0x40 ; 00CB1E: provisional 68k movem.l d0-d2/a1, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00CB22: provisional 68k move.w $14(a7), d0
db 0x43, 0xFA, 0x00, 0x3D ; 00CB26: provisional 68k lea.l $cb65(pc), a1
db 0x74, 0x03 ; 00CB2A: provisional 68k moveq #$3, d2
db 0xE9, 0x58 ; 00CB2C: provisional 68k rol.w #$4, d0
db 0x32, 0x00 ; 00CB2E: provisional 68k move.w d0, d1
db 0xC2, 0x7C, 0x00, 0x0F ; 00CB30: provisional 68k and.w #$f, d1
db 0xB2, 0x7C, 0x00, 0x0A ; 00CB34: provisional 68k cmp.w #$a, d1
db 0x6A, 0x00, 0x00, 0x0A ; 00CB38: provisional 68k bpl.w $cb44
db 0xD2, 0x7C, 0x00, 0x30 ; 00CB3C: provisional 68k add.w #$30, d1
db 0x60, 0x00, 0x00, 0x06 ; 00CB40: provisional 68k bra.w $cb48
db 0xD2, 0x7C, 0x00, 0x37 ; 00CB44: provisional 68k add.w #$37, d1
db 0x12, 0xC1 ; 00CB48: provisional 68k move.b d1, (a1)+
db 0x51, 0xCA, 0xFF, 0xE0 ; 00CB4A: provisional 68k dbra d2, $cb2c
db 0x48, 0x7A, 0x00, 0x14 ; 00CB4E: provisional 68k pea.l $cb64(pc)
db 0x61, 0x00, 0x00, 0x7C ; 00CB52: provisional 68k bsr.w $cbd0
db 0x4C, 0xDF, 0x02, 0x07 ; 00CB56: provisional 68k movem.l (a7)+, d0-d2/a1
db 0x2F, 0x57, 0x00, 0x02 ; 00CB5A: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00CB5E: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00CB62: provisional 68k rts 
db 0x24, 0x30, 0x30, 0x30 ; 00CB64: provisional 68k move.l $30(a0, d3.w), d2
db 0x30, 0x00 ; 00CB68: provisional 68k move.w d0, d0
