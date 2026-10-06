; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D6EE–00D7C7, inclusive.
cdi_nodv_entry_00d6ee:
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9C ; 00D6EE: provisional 68k move.w #$ffff, -$5564(a6)
db 0x4A, 0x6D, 0x00, 0x30 ; 00D6F4: provisional 68k tst.w $30(a5)
db 0x6B, 0x46 ; 00D6F8: provisional 68k bmi.b $d740
db 0x61, 0x00, 0x0A, 0xC4 ; 00D6FA: provisional 68k bsr.w $e1c0
db 0x2F, 0x08 ; 00D6FE: provisional 68k move.l a0, -(a7)
db 0x41, 0xFA, 0x01, 0x16 ; 00D700: provisional 68k lea.l $d818(pc), a0
db 0x2F, 0x08 ; 00D704: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFB, 0xD2 ; 00D706: provisional 68k bsr.w $d2da
db 0x20, 0x5F ; 00D70A: provisional 68k movea.l (a7)+, a0
db 0x3F, 0x3C, 0x00, 0x09 ; 00D70C: provisional 68k move.w #$9, -(a7)
db 0x61, 0x00, 0xFB, 0x84 ; 00D710: provisional 68k bsr.w $d296
db 0x38, 0x2D, 0x00, 0x30 ; 00D714: provisional 68k move.w $30(a5), d4
db 0x26, 0x3C, 0x00, 0x80, 0x00, 0x80 ; 00D718: provisional 68k move.l #$800080, d3
db 0x34, 0x2E, 0xAB, 0x16 ; 00D71E: provisional 68k move.w -$54ea(a6), d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00D722: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x20 ; 00D726: provisional 68k move.w #$120, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D72A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x41, 0xEE, 0xAA, 0x94 ; 00D72E: provisional 68k lea.l -$556c(a6), a0
db 0x42, 0x68, 0x00, 0x00 ; 00D732: provisional 68k clr.w $0(a0)
db 0x31, 0x6E, 0xAA, 0x98, 0x00, 0x02 ; 00D736: provisional 68k move.w -$5568(a6), $2(a0)
db 0x42, 0x6E, 0xAA, 0x9C ; 00D73C: provisional 68k clr.w -$5564(a6)
db 0x4E, 0x75 ; 00D740: provisional 68k rts 
db 0x08, 0x01, 0x00, 0x00 ; 00D742: provisional 68k btst.b #$0, d1
db 0x66, 0x46 ; 00D746: provisional 68k bne.b $d78e
db 0x08, 0x01, 0x00, 0x01 ; 00D748: provisional 68k btst.b #$1, d1
db 0x66, 0x00, 0x00, 0x62 ; 00D74C: provisional 68k bne.w $d7b0
db 0x08, 0x01, 0x00, 0x04 ; 00D750: provisional 68k btst.b #$4, d1
db 0x66, 0x00, 0x00, 0x9A ; 00D754: provisional 68k bne.w $d7f0
db 0x08, 0x01, 0x00, 0x06 ; 00D758: provisional 68k btst.b #$6, d1
db 0x66, 0x00, 0x00, 0x88 ; 00D75C: provisional 68k bne.w $d7e6
db 0x08, 0x01, 0x00, 0x08 ; 00D760: provisional 68k btst.b #$8, d1
db 0x66, 0x00, 0x00, 0x48 ; 00D764: provisional 68k bne.w $d7ae
db 0x32, 0x3C, 0x80, 0x00 ; 00D768: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF4, 0x90 ; 00D76C: provisional 68k bsr.w $cbfe
db 0x6D, 0x76 ; 00D770: provisional 68k blt.b $d7e8
db 0x6D, 0x5F ; 00D772: provisional 68k blt.b $d7d3
db 0x68, 0x61 ; 00D774: provisional 68k bvc.b $d7d7
db 0x6E, 0x64 ; 00D776: provisional 68k bgt.b $d7dc
db 0x6C, 0x65 ; 00D778: provisional 68k bge.b $d7df
db 0x72, 0x3A ; 00D77A: provisional 68k moveq #$3a, d1
db 0x20, 0x55 ; 00D77C: provisional 68k movea.l (a5), a0
db 0x6E, 0x65 ; 00D77E: provisional 68k bgt.b $d7e5
db 0x78, 0x70 ; 00D780: provisional 68k moveq #$70, d4
db 0x65, 0x63 ; 00D782: provisional 68k bcs.b $d7e7
db 0x74, 0x65 ; 00D784: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 00D786: provisional 68k bcc.b $d7a8
db 0x65, 0x76 ; 00D788: provisional 68k bcs.b $d800
db 0x65, 0x6E ; 00D78A: provisional 68k bcs.b $d7fa
db 0x74, 0x00 ; 00D78C: provisional 68k moveq #$0, d2
db 0x32, 0x3C, 0x80, 0x00 ; 00D78E: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF4, 0x6A ; 00D792: provisional 68k bsr.w $cbfe
db 0x6D, 0x76 ; 00D796: provisional 68k blt.b $d80e
db 0x6D, 0x5F ; 00D798: provisional 68k blt.b $d7f9
db 0x68, 0x61 ; 00D79A: provisional 68k bvc.b $d7fd
db 0x6E, 0x64 ; 00D79C: provisional 68k bgt.b $d802
db 0x6C, 0x65 ; 00D79E: provisional 68k bge.b $d805
db 0x72, 0x3A ; 00D7A0: provisional 68k moveq #$3a, d1
db 0x20, 0x44 ; 00D7A2: provisional 68k movea.l d4, a0
db 0x61, 0x74 ; 00D7A4: provisional 68k bsr.b $d81a
db 0x61, 0x20 ; 00D7A6: provisional 68k bsr.b $d7c8
db 0x45, 0x72 ; file 00D7A8
db 0x72, 0x6F ; 00D7AA: provisional 68k moveq #$6f, d1
db 0x72, 0x00 ; 00D7AC: provisional 68k moveq #$0, d1
db 0x4E, 0x75 ; 00D7AE: provisional 68k rts 
db 0x53, 0x6E, 0xAA, 0xAC ; 00D7B0: provisional 68k subq.w #$1, -$5554(a6)
db 0x67, 0x12 ; 00D7B4: provisional 68k beq.b $d7c8
db 0x34, 0x3C, 0x00, 0x00 ; 00D7B6: provisional 68k move.w #$0, d2
db 0x30, 0x2E, 0xAA, 0x82 ; 00D7BA: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x12 ; 00D7BE: provisional 68k move.w #$112, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D7C2: provisional 68k trap #0 ; OS-9 service word $008E
db 0x60, 0x1C ; 00D7C6: provisional 68k bra.b $d7e4
