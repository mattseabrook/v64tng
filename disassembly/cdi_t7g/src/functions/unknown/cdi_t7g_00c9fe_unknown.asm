; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C9FE–00CA81, inclusive.
cdi_t7g_entry_00c9fe:
db 0x30, 0x3C, 0x00, 0x5A ; 00C9FE: provisional 68k move.w #$5a, d0
db 0x41, 0xEE, 0xAA, 0x22 ; 00CA02: provisional 68k lea.l -$55de(a6), a0
db 0x61, 0x00, 0x74, 0x4A ; 00CA06: provisional 68k bsr.w $13e52
db 0x65, 0x00, 0x00, 0x2C ; 00CA0A: provisional 68k bcs.w $ca38
db 0x41, 0xEE, 0xAA, 0x22 ; 00CA0E: provisional 68k lea.l -$55de(a6), a0
db 0x43, 0xEE, 0xAA, 0x42 ; 00CA12: provisional 68k lea.l -$55be(a6), a1
db 0x61, 0x00, 0x74, 0x26 ; 00CA16: provisional 68k bsr.w $13e3e
db 0x41, 0xEE, 0xAA, 0x22 ; 00CA1A: provisional 68k lea.l -$55de(a6), a0
db 0x43, 0xEE, 0xAA, 0x62 ; 00CA1E: provisional 68k lea.l -$559e(a6), a1
db 0x61, 0x00, 0x74, 0x00 ; 00CA22: provisional 68k bsr.w $13e24
db 0x41, 0xEE, 0xAA, 0x42 ; 00CA26: provisional 68k lea.l -$55be(a6), a0
db 0x70, 0x00 ; 00CA2A: provisional 68k moveq #$0, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00CA2C: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x06 ; 00CA30: provisional 68k bcs.b $ca38
db 0x3D, 0x40, 0xAA, 0x82 ; 00CA32: provisional 68k move.w d0, -$557e(a6)
db 0x4E, 0x75 ; 00CA36: provisional 68k rts 
db 0x32, 0x01 ; 00CA38: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF3, 0x42 ; 00CA3A: provisional 68k bsr.w $bd7e
db 0x6F, 0x70 ; 00CA3E: provisional 68k ble.b $cab0
db 0x65, 0x6E ; 00CA40: provisional 68k bcs.b $cab0
db 0x5F, 0x6D, 0x70, 0x65 ; 00CA42: provisional 68k subq.w #$7, $7065(a5)
db 0x67, 0x76 ; 00CA46: provisional 68k beq.b $cabe
db 0x20, 0x3A, 0x20, 0x00 ; 00CA48: provisional 68k move.l $ea4a(pc), d0
db 0x61, 0x00, 0x00, 0x34 ; 00CA4C: provisional 68k bsr.w $ca82
db 0x34, 0x3C, 0x00, 0x01 ; 00CA50: provisional 68k move.w #$1, d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00CA54: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x38 ; 00CA58: provisional 68k move.w #$138, d1
db 0x4E, 0x40, 0x00, 0x8D ; 00CA5C: provisional 68k trap #0 ; OS-9 service word $008D
db 0x65, 0x06 ; 00CA60: provisional 68k bcs.b $ca68
db 0x3D, 0x40, 0xAB, 0x16 ; 00CA62: provisional 68k move.w d0, -$54ea(a6)
db 0x4E, 0x75 ; 00CA66: provisional 68k rts 
db 0x32, 0x01 ; 00CA68: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF3, 0x12 ; 00CA6A: provisional 68k bsr.w $bd7e
db 0x6D, 0x61 ; 00CA6E: provisional 68k blt.b $cad1
db 0x6D, 0x5F ; 00CA70: provisional 68k blt.b $cad1
db 0x69, 0x6E ; 00CA72: provisional 68k bvs.b $cae2
db 0x69, 0x74 ; 00CA74: provisional 68k bvs.b $caea
db 0x69, 0x61 ; 00CA76: provisional 68k bvs.b $cad9
db 0x6C, 0x69 ; 00CA78: provisional 68k bge.b $cae3
db 0x73, 0x65 ; file 00CA7A
db 0x3A, 0x20 ; 00CA7C: provisional 68k move.w -(a0), d5
db 0x3F, 0x3F ; file 00CA7E
db 0x3F, 0x00 ; 00CA80: provisional 68k move.w d0, -(a7)
