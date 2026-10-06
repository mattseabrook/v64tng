; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C86E–00C947, inclusive.
cdi_t7g_entry_00c86e:
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9C ; 00C86E: provisional 68k move.w #$ffff, -$5564(a6)
db 0x4A, 0x6D, 0x00, 0x30 ; 00C874: provisional 68k tst.w $30(a5)
db 0x6B, 0x46 ; 00C878: provisional 68k bmi.b $c8c0
db 0x61, 0x00, 0x0A, 0xC4 ; 00C87A: provisional 68k bsr.w $d340
db 0x2F, 0x08 ; 00C87E: provisional 68k move.l a0, -(a7)
db 0x41, 0xFA, 0x01, 0x16 ; 00C880: provisional 68k lea.l $c998(pc), a0
db 0x2F, 0x08 ; 00C884: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFB, 0xD2 ; 00C886: provisional 68k bsr.w $c45a
db 0x20, 0x5F ; 00C88A: provisional 68k movea.l (a7)+, a0
db 0x3F, 0x3C, 0x00, 0x09 ; 00C88C: provisional 68k move.w #$9, -(a7)
db 0x61, 0x00, 0xFB, 0x84 ; 00C890: provisional 68k bsr.w $c416
db 0x38, 0x2D, 0x00, 0x30 ; 00C894: provisional 68k move.w $30(a5), d4
db 0x26, 0x3C, 0x00, 0x80, 0x00, 0x80 ; 00C898: provisional 68k move.l #$800080, d3
db 0x34, 0x2E, 0xAB, 0x16 ; 00C89E: provisional 68k move.w -$54ea(a6), d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00C8A2: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x20 ; 00C8A6: provisional 68k move.w #$120, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C8AA: provisional 68k trap #0 ; OS-9 service word $008E
db 0x41, 0xEE, 0xAA, 0x94 ; 00C8AE: provisional 68k lea.l -$556c(a6), a0
db 0x42, 0x68, 0x00, 0x00 ; 00C8B2: provisional 68k clr.w $0(a0)
db 0x31, 0x6E, 0xAA, 0x98, 0x00, 0x02 ; 00C8B6: provisional 68k move.w -$5568(a6), $2(a0)
db 0x42, 0x6E, 0xAA, 0x9C ; 00C8BC: provisional 68k clr.w -$5564(a6)
db 0x4E, 0x75 ; 00C8C0: provisional 68k rts 
db 0x08, 0x01, 0x00, 0x00 ; 00C8C2: provisional 68k btst.b #$0, d1
db 0x66, 0x46 ; 00C8C6: provisional 68k bne.b $c90e
db 0x08, 0x01, 0x00, 0x01 ; 00C8C8: provisional 68k btst.b #$1, d1
db 0x66, 0x00, 0x00, 0x62 ; 00C8CC: provisional 68k bne.w $c930
db 0x08, 0x01, 0x00, 0x04 ; 00C8D0: provisional 68k btst.b #$4, d1
db 0x66, 0x00, 0x00, 0x9A ; 00C8D4: provisional 68k bne.w $c970
db 0x08, 0x01, 0x00, 0x06 ; 00C8D8: provisional 68k btst.b #$6, d1
db 0x66, 0x00, 0x00, 0x88 ; 00C8DC: provisional 68k bne.w $c966
db 0x08, 0x01, 0x00, 0x08 ; 00C8E0: provisional 68k btst.b #$8, d1
db 0x66, 0x00, 0x00, 0x48 ; 00C8E4: provisional 68k bne.w $c92e
db 0x32, 0x3C, 0x80, 0x00 ; 00C8E8: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF4, 0x90 ; 00C8EC: provisional 68k bsr.w $bd7e
db 0x6D, 0x76 ; 00C8F0: provisional 68k blt.b $c968
db 0x6D, 0x5F ; 00C8F2: provisional 68k blt.b $c953
db 0x68, 0x61 ; 00C8F4: provisional 68k bvc.b $c957
db 0x6E, 0x64 ; 00C8F6: provisional 68k bgt.b $c95c
db 0x6C, 0x65 ; 00C8F8: provisional 68k bge.b $c95f
db 0x72, 0x3A ; 00C8FA: provisional 68k moveq #$3a, d1
db 0x20, 0x55 ; 00C8FC: provisional 68k movea.l (a5), a0
db 0x6E, 0x65 ; 00C8FE: provisional 68k bgt.b $c965
db 0x78, 0x70 ; 00C900: provisional 68k moveq #$70, d4
db 0x65, 0x63 ; 00C902: provisional 68k bcs.b $c967
db 0x74, 0x65 ; 00C904: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 00C906: provisional 68k bcc.b $c928
db 0x65, 0x76 ; 00C908: provisional 68k bcs.b $c980
db 0x65, 0x6E ; 00C90A: provisional 68k bcs.b $c97a
db 0x74, 0x00 ; 00C90C: provisional 68k moveq #$0, d2
db 0x32, 0x3C, 0x80, 0x00 ; 00C90E: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF4, 0x6A ; 00C912: provisional 68k bsr.w $bd7e
db 0x6D, 0x76 ; 00C916: provisional 68k blt.b $c98e
db 0x6D, 0x5F ; 00C918: provisional 68k blt.b $c979
db 0x68, 0x61 ; 00C91A: provisional 68k bvc.b $c97d
db 0x6E, 0x64 ; 00C91C: provisional 68k bgt.b $c982
db 0x6C, 0x65 ; 00C91E: provisional 68k bge.b $c985
db 0x72, 0x3A ; 00C920: provisional 68k moveq #$3a, d1
db 0x20, 0x44 ; 00C922: provisional 68k movea.l d4, a0
db 0x61, 0x74 ; 00C924: provisional 68k bsr.b $c99a
db 0x61, 0x20 ; 00C926: provisional 68k bsr.b $c948
db 0x45, 0x72 ; file 00C928
db 0x72, 0x6F ; 00C92A: provisional 68k moveq #$6f, d1
db 0x72, 0x00 ; 00C92C: provisional 68k moveq #$0, d1
db 0x4E, 0x75 ; 00C92E: provisional 68k rts 
db 0x53, 0x6E, 0xAA, 0xAC ; 00C930: provisional 68k subq.w #$1, -$5554(a6)
db 0x67, 0x12 ; 00C934: provisional 68k beq.b $c948
db 0x34, 0x3C, 0x00, 0x00 ; 00C936: provisional 68k move.w #$0, d2
db 0x30, 0x2E, 0xAA, 0x82 ; 00C93A: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x12 ; 00C93E: provisional 68k move.w #$112, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C942: provisional 68k trap #0 ; OS-9 service word $008E
db 0x60, 0x1C ; 00C946: provisional 68k bra.b $c964
