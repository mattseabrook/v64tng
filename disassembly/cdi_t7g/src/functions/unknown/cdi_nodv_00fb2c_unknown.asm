; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FB2C–00FB87, inclusive.
cdi_nodv_entry_00fb2c:
db 0x48, 0xE7, 0xF0, 0x00 ; 00FB2C: provisional 68k movem.l d0-d3, -(a7)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FB30: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FB34: provisional 68k moveq #$56, d1
db 0x74, 0x0F ; 00FB36: provisional 68k moveq #$f, d2
db 0x36, 0x2F, 0x00, 0x14 ; 00FB38: provisional 68k move.w $14(a7), d3
db 0x4E, 0x40, 0x00, 0x8E ; 00FB3C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0E ; 00FB40: provisional 68k bcs.b $fb50
db 0x4C, 0xDF, 0x00, 0x0F ; 00FB42: provisional 68k movem.l (a7)+, d0-d3
db 0x2F, 0x57, 0x00, 0x02 ; 00FB46: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00FB4A: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00FB4E: provisional 68k rts 
db 0x32, 0x01 ; 00FB50: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xD0, 0xAA ; 00FB52: provisional 68k bsr.w $cbfe
db 0x20, 0x76, 0x69, 0x64, 0x5F, 0x69 ; 00FB56: provisional 68k movea.l $5f69(a6, invalid.w), a0
db 0x6E, 0x74 ; 00FB5C: provisional 68k bgt.b $fbd2
db 0x65, 0x72 ; 00FB5E: provisional 68k bcs.b $fbd2
db 0x6C, 0x61 ; 00FB60: provisional 68k bge.b $fbc3
db 0x63, 0x65 ; 00FB62: provisional 68k bls.b $fbc9
db 0x20, 0x3A, 0x20, 0x00 ; 00FB64: provisional 68k move.l $11b66(pc), d0
db 0x3D, 0x6F, 0x00, 0x04, 0xC0, 0x48 ; 00FB68: provisional 68k move.w $4(a7), -$3fb8(a6)
db 0x3D, 0x6F, 0x00, 0x06, 0xC0, 0x4C ; 00FB6E: provisional 68k move.w $6(a7), -$3fb4(a6)
db 0x3D, 0x6F, 0x00, 0x08, 0xC0, 0x4A ; 00FB74: provisional 68k move.w $8(a7), -$3fb6(a6)
db 0x3D, 0x6F, 0x00, 0x0A, 0xC0, 0x4E ; 00FB7A: provisional 68k move.w $a(a7), -$3fb2(a6)
db 0x2F, 0x57, 0x00, 0x08 ; 00FB80: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 00FB84: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 00FB86: provisional 68k rts 
