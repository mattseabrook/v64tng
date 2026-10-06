; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FE80–00FF17, inclusive.
cdi_nodv_entry_00fe80:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FE80: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FE84: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00FE86: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00FE88: provisional 68k move.w #$1, d3
db 0x38, 0x3C, 0x00, 0x0F ; 00FE8C: provisional 68k move.w #$f, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FE90: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FE94: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x68 ; 00FE98: provisional 68k bcs.w $ff02
db 0x3D, 0x40, 0xC0, 0x4C ; 00FE9C: provisional 68k move.w d0, -$3fb4(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FEA0: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FEA4: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00FEA6: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00FEA8: provisional 68k move.w #$1, d3
db 0x38, 0x3C, 0x00, 0x0F ; 00FEAC: provisional 68k move.w #$f, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FEB0: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FEB4: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x48 ; 00FEB8: provisional 68k bcs.w $ff02
db 0x3D, 0x40, 0xC0, 0x4E ; 00FEBC: provisional 68k move.w d0, -$3fb2(a6)
db 0x3E, 0x2E, 0xAD, 0xB6 ; 00FEC0: provisional 68k move.w -$524a(a6), d7
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FEC4: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FEC8: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00FECA: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00FECC: provisional 68k move.w #$1, d3
db 0x38, 0x07 ; 00FED0: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FED2: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FED6: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x26 ; 00FEDA: provisional 68k bcs.w $ff02
db 0x3D, 0x40, 0xC0, 0x54 ; 00FEDE: provisional 68k move.w d0, -$3fac(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FEE2: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FEE6: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00FEE8: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00FEEA: provisional 68k move.w #$1, d3
db 0x38, 0x07 ; 00FEEE: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FEF0: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FEF4: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x08 ; 00FEF8: provisional 68k bcs.w $ff02
db 0x3D, 0x40, 0xC0, 0x56 ; 00FEFC: provisional 68k move.w d0, -$3faa(a6)
db 0x4E, 0x75 ; 00FF00: provisional 68k rts 
db 0x32, 0x01 ; 00FF02: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCC, 0xF8 ; 00FF04: provisional 68k bsr.w $cbfe
db 0x63, 0x72 ; 00FF08: provisional 68k bls.b $ff7c
db 0x65, 0x61 ; 00FF0A: provisional 68k bcs.b $ff6d
db 0x74, 0x65 ; 00FF0C: provisional 68k moveq #$65, d2
db 0x5F, 0x64 ; 00FF0E: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 00FF10: provisional 68k bls.b $ff82
db 0x5F, 0x62 ; 00FF12: provisional 68k subq.w #$7, -(a2)
db 0x20, 0x3A, 0x20, 0x00 ; 00FF14: provisional 68k move.l $11f16(pc), d0
