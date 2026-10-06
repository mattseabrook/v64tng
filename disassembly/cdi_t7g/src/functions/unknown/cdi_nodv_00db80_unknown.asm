; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DB80–00DBCD, inclusive.
cdi_nodv_entry_00db80:
db 0x30, 0x3C, 0x00, 0x02 ; 00DB80: provisional 68k move.w #$2, d0
db 0x41, 0xEE, 0xAB, 0x18 ; 00DB84: provisional 68k lea.l -$54e8(a6), a0
db 0x61, 0x00, 0x71, 0x48 ; 00DB88: provisional 68k bsr.w $14cd2
db 0x65, 0x00, 0x00, 0x2C ; 00DB8C: provisional 68k bcs.w $dbba
db 0x41, 0xEE, 0xAB, 0x18 ; 00DB90: provisional 68k lea.l -$54e8(a6), a0
db 0x43, 0xEE, 0xAB, 0x38 ; 00DB94: provisional 68k lea.l -$54c8(a6), a1
db 0x61, 0x00, 0x71, 0x24 ; 00DB98: provisional 68k bsr.w $14cbe
db 0x41, 0xEE, 0xAB, 0x18 ; 00DB9C: provisional 68k lea.l -$54e8(a6), a0
db 0x43, 0xEE, 0xAB, 0x58 ; 00DBA0: provisional 68k lea.l -$54a8(a6), a1
db 0x61, 0x00, 0x70, 0xFE ; 00DBA4: provisional 68k bsr.w $14ca4
db 0x41, 0xEE, 0xAB, 0x38 ; 00DBA8: provisional 68k lea.l -$54c8(a6), a0
db 0x70, 0x41 ; 00DBAC: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00DBAE: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x06 ; 00DBB2: provisional 68k bcs.b $dbba
db 0x3D, 0x40, 0xAB, 0x78 ; 00DBB4: provisional 68k move.w d0, -$5488(a6)
db 0x4E, 0x75 ; 00DBB8: provisional 68k rts 
db 0x32, 0x01 ; 00DBBA: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF0, 0x40 ; 00DBBC: provisional 68k bsr.w $cbfe
db 0x6F, 0x70 ; 00DBC0: provisional 68k ble.b $dc32
db 0x65, 0x6E ; 00DBC2: provisional 68k bcs.b $dc32
db 0x5F, 0x61 ; 00DBC4: provisional 68k subq.w #$7, -(a1)
db 0x75, 0x64 ; file 00DBC6
db 0x69, 0x6F ; 00DBC8: provisional 68k bvs.b $dc39
db 0x20, 0x3A, 0x20, 0x00 ; 00DBCA: provisional 68k move.l $fbcc(pc), d0
