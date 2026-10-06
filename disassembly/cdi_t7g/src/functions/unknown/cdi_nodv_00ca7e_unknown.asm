; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CA7E–00CAD3, inclusive.
cdi_nodv_entry_00ca7e:
db 0x4A, 0x6E, 0x80, 0x5A ; 00CA7E: provisional 68k tst.w -$7fa6(a6)
db 0x67, 0x2C ; 00CA82: provisional 68k beq.b $cab0
db 0x20, 0x6E, 0x80, 0x56 ; 00CA84: provisional 68k movea.l -$7faa(a6), a0
db 0x2D, 0x68, 0x00, 0x3E, 0x80, 0x56 ; 00CA88: provisional 68k move.l $3e(a0), -$7faa(a6)
db 0x42, 0xA8, 0x00, 0x0A ; 00CA8E: provisional 68k clr.l $a(a0)
db 0x42, 0xA8, 0x00, 0x3E ; 00CA92: provisional 68k clr.l $3e(a0)
db 0x42, 0xA8, 0x00, 0x42 ; 00CA96: provisional 68k clr.l $42(a0)
db 0x42, 0xA8, 0x00, 0x0E ; 00CA9A: provisional 68k clr.l $e(a0)
db 0x42, 0x68, 0x00, 0x2C ; 00CA9E: provisional 68k clr.w $2c(a0)
db 0x42, 0x68, 0x00, 0x2A ; 00CAA2: provisional 68k clr.w $2a(a0)
db 0x53, 0x6E, 0x80, 0x5A ; 00CAA6: provisional 68k subq.w #$1, -$7fa6(a6)
db 0x52, 0x6E, 0x80, 0x5C ; 00CAAA: provisional 68k addq.w #$1, -$7fa4(a6)
db 0x4E, 0x75 ; 00CAAE: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00CAB0: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x01, 0x48 ; 00CAB4: provisional 68k bsr.w $cbfe
db 0x67, 0x65 ; 00CAB8: provisional 68k beq.b $cb1f
db 0x74, 0x5F ; 00CABA: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 00CABC: provisional 68k ble.b $cb20
db 0x6A, 0x65 ; 00CABE: provisional 68k bpl.b $cb25
db 0x63, 0x74 ; 00CAC0: provisional 68k bls.b $cb36
db 0x3A, 0x20 ; 00CAC2: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 00CAC4: provisional 68k move usp, a7
db 0x20, 0x6D, 0x6F, 0x72 ; 00CAC6: provisional 68k movea.l $6f72(a5), a0
db 0x65, 0x20 ; 00CACA: provisional 68k bcs.b $caec
db 0x6F, 0x62 ; 00CACC: provisional 68k ble.b $cb30
db 0x6A, 0x65 ; 00CACE: provisional 68k bpl.b $cb35
db 0x63, 0x74 ; 00CAD0: provisional 68k bls.b $cb46
db 0x73, 0x00 ; file 00CAD2
