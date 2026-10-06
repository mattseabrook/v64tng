; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FCE8–00FD79, inclusive.
cdi_nodv_entry_00fce8:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FCE8: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FCEC: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00FCEE: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00FCF0: provisional 68k move.w #$0, d3
db 0x38, 0x3C, 0x01, 0x1A ; 00FCF4: provisional 68k move.w #$11a, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FCF8: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FCFC: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x62 ; 00FD00: provisional 68k bcs.w $fd64
db 0x3D, 0x40, 0xC0, 0x48 ; 00FD04: provisional 68k move.w d0, -$3fb8(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FD08: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FD0C: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00FD0E: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00FD10: provisional 68k move.w #$0, d3
db 0x38, 0x3C, 0x01, 0x1A ; 00FD14: provisional 68k move.w #$11a, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FD18: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FD1C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x42 ; 00FD20: provisional 68k bcs.b $fd64
db 0x3D, 0x40, 0xC0, 0x4A ; 00FD22: provisional 68k move.w d0, -$3fb6(a6)
db 0x3E, 0x2E, 0xAD, 0xB6 ; 00FD26: provisional 68k move.w -$524a(a6), d7
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FD2A: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FD2E: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00FD30: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00FD32: provisional 68k move.w #$0, d3
db 0x38, 0x07 ; 00FD36: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FD38: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FD3C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x22 ; 00FD40: provisional 68k bcs.b $fd64
db 0x3D, 0x40, 0xC0, 0x50 ; 00FD42: provisional 68k move.w d0, -$3fb0(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FD46: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FD4A: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00FD4C: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00FD4E: provisional 68k move.w #$0, d3
db 0x38, 0x07 ; 00FD52: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00FD54: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FD58: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x06 ; 00FD5C: provisional 68k bcs.b $fd64
db 0x3D, 0x40, 0xC0, 0x52 ; 00FD5E: provisional 68k move.w d0, -$3fae(a6)
db 0x4E, 0x75 ; 00FD62: provisional 68k rts 
db 0x32, 0x01 ; 00FD64: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCE, 0x96 ; 00FD66: provisional 68k bsr.w $cbfe
db 0x63, 0x72 ; 00FD6A: provisional 68k bls.b $fdde
db 0x65, 0x61 ; 00FD6C: provisional 68k bcs.b $fdcf
db 0x74, 0x65 ; 00FD6E: provisional 68k moveq #$65, d2
db 0x5F, 0x64 ; 00FD70: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 00FD72: provisional 68k bls.b $fde4
db 0x5F, 0x61 ; 00FD74: provisional 68k subq.w #$7, -(a1)
db 0x20, 0x3A, 0x20, 0x00 ; 00FD76: provisional 68k move.l $11d78(pc), d0
