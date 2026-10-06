; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DB2A–00DB7F, inclusive.
cdi_nodv_entry_00db2a:
db 0x60, 0x18 ; 00DB2A: provisional 68k bra.b $db44
db 0x3E, 0x3E ; file 00DB2C
db 0x3E, 0x20 ; 00DB2E: provisional 68k move.w -(a0), d7
db 0x57, 0x41 ; 00DB30: provisional 68k subq.w #$3, d1
db 0x52, 0x4E ; 00DB32: provisional 68k addq.w #$1, a6
db 0x49, 0x4E ; file 00DB34
db 0x47, 0x20 ; 00DB36: provisional 68k dc.w $4720
db 0x2D, 0x20 ; 00DB38: provisional 68k move.l -(a0), -(a6)
db 0x73, 0x6D ; file 00DB3A
db 0x65, 0x5F ; 00DB3C: provisional 68k bcs.b $db9d
db 0x6F, 0x75 ; 00DB3E: provisional 68k ble.b $dbb5
db 0x74, 0x3A ; 00DB40: provisional 68k moveq #$3a, d2
db 0x20, 0x00 ; 00DB42: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 00DB44: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0xEF, 0xD6 ; 00DB46: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00DB4A: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xF0, 0x68 ; 00DB4C: provisional 68k bsr.w $cbb6
db 0x60, 0x00, 0xFF, 0xCE ; 00DB50: provisional 68k bra.w $db20
db 0x20, 0x2E, 0xAB, 0x9C ; 00DB54: provisional 68k move.l -$5464(a6), d0
db 0x67, 0x1C ; 00DB58: provisional 68k beq.b $db76
db 0x20, 0x40 ; 00DB5A: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xAB, 0xA0 ; 00DB5C: provisional 68k move.l -$5460(a6), d0
db 0x32, 0x2E, 0xAB, 0x88 ; 00DB60: provisional 68k move.w -$5478(a6), d1
db 0x34, 0x3C, 0x00, 0x0A ; 00DB64: provisional 68k move.w #$a, d2
db 0x4E, 0x90 ; 00DB68: provisional 68k jsr (a0)
db 0x3F, 0x3C, 0x00, 0x32 ; 00DB6A: provisional 68k move.w #$32, -(a7)
db 0x3F, 0x3C, 0x00, 0x00 ; 00DB6E: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0x03, 0x12 ; 00DB72: provisional 68k bsr.w $de86
db 0x42, 0xAE, 0xAB, 0x84 ; 00DB76: provisional 68k clr.l -$547c(a6)
db 0x42, 0x6E, 0xAB, 0x88 ; 00DB7A: provisional 68k clr.w -$5478(a6)
db 0x4E, 0x75 ; 00DB7E: provisional 68k rts 
