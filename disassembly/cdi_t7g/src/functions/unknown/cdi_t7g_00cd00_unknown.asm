; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CD00–00CD4D, inclusive.
cdi_t7g_entry_00cd00:
db 0x30, 0x3C, 0x00, 0x02 ; 00CD00: provisional 68k move.w #$2, d0
db 0x41, 0xEE, 0xAB, 0x18 ; 00CD04: provisional 68k lea.l -$54e8(a6), a0
db 0x61, 0x00, 0x71, 0x48 ; 00CD08: provisional 68k bsr.w $13e52
db 0x65, 0x00, 0x00, 0x2C ; 00CD0C: provisional 68k bcs.w $cd3a
db 0x41, 0xEE, 0xAB, 0x18 ; 00CD10: provisional 68k lea.l -$54e8(a6), a0
db 0x43, 0xEE, 0xAB, 0x38 ; 00CD14: provisional 68k lea.l -$54c8(a6), a1
db 0x61, 0x00, 0x71, 0x24 ; 00CD18: provisional 68k bsr.w $13e3e
db 0x41, 0xEE, 0xAB, 0x18 ; 00CD1C: provisional 68k lea.l -$54e8(a6), a0
db 0x43, 0xEE, 0xAB, 0x58 ; 00CD20: provisional 68k lea.l -$54a8(a6), a1
db 0x61, 0x00, 0x70, 0xFE ; 00CD24: provisional 68k bsr.w $13e24
db 0x41, 0xEE, 0xAB, 0x38 ; 00CD28: provisional 68k lea.l -$54c8(a6), a0
db 0x70, 0x41 ; 00CD2C: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00CD2E: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x06 ; 00CD32: provisional 68k bcs.b $cd3a
db 0x3D, 0x40, 0xAB, 0x78 ; 00CD34: provisional 68k move.w d0, -$5488(a6)
db 0x4E, 0x75 ; 00CD38: provisional 68k rts 
db 0x32, 0x01 ; 00CD3A: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF0, 0x40 ; 00CD3C: provisional 68k bsr.w $bd7e
db 0x6F, 0x70 ; 00CD40: provisional 68k ble.b $cdb2
db 0x65, 0x6E ; 00CD42: provisional 68k bcs.b $cdb2
db 0x5F, 0x61 ; 00CD44: provisional 68k subq.w #$7, -(a1)
db 0x75, 0x64 ; file 00CD46
db 0x69, 0x6F ; 00CD48: provisional 68k bvs.b $cdb9
db 0x20, 0x3A, 0x20, 0x00 ; 00CD4A: provisional 68k move.l $ed4c(pc), d0
