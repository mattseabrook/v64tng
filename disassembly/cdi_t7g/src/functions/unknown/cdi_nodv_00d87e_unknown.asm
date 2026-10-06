; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D87E–00D901, inclusive.
cdi_nodv_entry_00d87e:
db 0x30, 0x3C, 0x00, 0x5A ; 00D87E: provisional 68k move.w #$5a, d0
db 0x41, 0xEE, 0xAA, 0x22 ; 00D882: provisional 68k lea.l -$55de(a6), a0
db 0x61, 0x00, 0x74, 0x4A ; 00D886: provisional 68k bsr.w $14cd2
db 0x65, 0x00, 0x00, 0x2C ; 00D88A: provisional 68k bcs.w $d8b8
db 0x41, 0xEE, 0xAA, 0x22 ; 00D88E: provisional 68k lea.l -$55de(a6), a0
db 0x43, 0xEE, 0xAA, 0x42 ; 00D892: provisional 68k lea.l -$55be(a6), a1
db 0x61, 0x00, 0x74, 0x26 ; 00D896: provisional 68k bsr.w $14cbe
db 0x41, 0xEE, 0xAA, 0x22 ; 00D89A: provisional 68k lea.l -$55de(a6), a0
db 0x43, 0xEE, 0xAA, 0x62 ; 00D89E: provisional 68k lea.l -$559e(a6), a1
db 0x61, 0x00, 0x74, 0x00 ; 00D8A2: provisional 68k bsr.w $14ca4
db 0x41, 0xEE, 0xAA, 0x42 ; 00D8A6: provisional 68k lea.l -$55be(a6), a0
db 0x70, 0x00 ; 00D8AA: provisional 68k moveq #$0, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00D8AC: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x06 ; 00D8B0: provisional 68k bcs.b $d8b8
db 0x3D, 0x40, 0xAA, 0x82 ; 00D8B2: provisional 68k move.w d0, -$557e(a6)
db 0x4E, 0x75 ; 00D8B6: provisional 68k rts 
db 0x32, 0x01 ; 00D8B8: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF3, 0x42 ; 00D8BA: provisional 68k bsr.w $cbfe
db 0x6F, 0x70 ; 00D8BE: provisional 68k ble.b $d930
db 0x65, 0x6E ; 00D8C0: provisional 68k bcs.b $d930
db 0x5F, 0x6D, 0x70, 0x65 ; 00D8C2: provisional 68k subq.w #$7, $7065(a5)
db 0x67, 0x76 ; 00D8C6: provisional 68k beq.b $d93e
db 0x20, 0x3A, 0x20, 0x00 ; 00D8C8: provisional 68k move.l $f8ca(pc), d0
db 0x61, 0x00, 0x00, 0x34 ; 00D8CC: provisional 68k bsr.w $d902
db 0x34, 0x3C, 0x00, 0x01 ; 00D8D0: provisional 68k move.w #$1, d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00D8D4: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x38 ; 00D8D8: provisional 68k move.w #$138, d1
db 0x4E, 0x40, 0x00, 0x8D ; 00D8DC: provisional 68k trap #0 ; OS-9 service word $008D
db 0x65, 0x06 ; 00D8E0: provisional 68k bcs.b $d8e8
db 0x3D, 0x40, 0xAB, 0x16 ; 00D8E2: provisional 68k move.w d0, -$54ea(a6)
db 0x4E, 0x75 ; 00D8E6: provisional 68k rts 
db 0x32, 0x01 ; 00D8E8: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF3, 0x12 ; 00D8EA: provisional 68k bsr.w $cbfe
db 0x6D, 0x61 ; 00D8EE: provisional 68k blt.b $d951
db 0x6D, 0x5F ; 00D8F0: provisional 68k blt.b $d951
db 0x69, 0x6E ; 00D8F2: provisional 68k bvs.b $d962
db 0x69, 0x74 ; 00D8F4: provisional 68k bvs.b $d96a
db 0x69, 0x61 ; 00D8F6: provisional 68k bvs.b $d959
db 0x6C, 0x69 ; 00D8F8: provisional 68k bge.b $d963
db 0x73, 0x65 ; file 00D8FA
db 0x3A, 0x20 ; 00D8FC: provisional 68k move.w -(a0), d5
db 0x3F, 0x3F ; file 00D8FE
db 0x3F, 0x00 ; 00D900: provisional 68k move.w d0, -(a7)
