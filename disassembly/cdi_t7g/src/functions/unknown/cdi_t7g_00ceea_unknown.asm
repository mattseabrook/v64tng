; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CEEA–00CFC1, inclusive.
cdi_t7g_entry_00ceea:
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 00CEEA: provisional 68k movea.l $0.l, a3
db 0x24, 0x2B, 0x00, 0x54 ; 00CEF0: provisional 68k move.l $54(a3), d2
db 0x94, 0xAE, 0xAB, 0xCE ; 00CEF4: provisional 68k sub.l -$5432(a6), d2
db 0xB4, 0x6E, 0xAB, 0xD4 ; 00CEF8: provisional 68k cmp.w -$542c(a6), d2
db 0x63, 0x06 ; 00CEFC: provisional 68k bls.b $cf04
db 0x34, 0x2E, 0xAB, 0xD2 ; 00CEFE: provisional 68k move.w -$542e(a6), d2
db 0x60, 0x08 ; 00CF02: provisional 68k bra.b $cf0c
db 0xC5, 0xEE, 0xAB, 0xD2 ; 00CF04: provisional 68k muls.w -$542e(a6), d2
db 0x85, 0xEE, 0xAB, 0xD4 ; 00CF08: provisional 68k divs.w -$542c(a6), d2
db 0xD4, 0x6E, 0xAB, 0xD6 ; 00CF0C: provisional 68k add.w -$542a(a6), d2
db 0xB4, 0x6E, 0xAB, 0xDA ; 00CF10: provisional 68k cmp.w -$5426(a6), d2
db 0x67, 0x00, 0x00, 0x46 ; 00CF14: provisional 68k beq.w $cf5c
db 0x3D, 0x42, 0xAB, 0xDA ; 00CF18: provisional 68k move.w d2, -$5426(a6)
db 0x16, 0x3B, 0x20, 0x40 ; 00CF1C: provisional 68k move.b $cf5e(pc, d2.w), d3
db 0xE1, 0x43 ; 00CF20: provisional 68k asl.w #$8, d3
db 0x3F, 0x03 ; 00CF22: provisional 68k move.w d3, -(a7)
db 0x48, 0x43 ; 00CF24: provisional 68k swap d3
db 0x36, 0x1F ; 00CF26: provisional 68k move.w (a7)+, d3
db 0x86, 0xBC, 0x00, 0x80, 0x00, 0x80 ; 00CF28: provisional 68k or.l #$800080, d3
db 0x3F, 0x02 ; 00CF2E: provisional 68k move.w d2, -(a7)
db 0x38, 0x3C, 0x00, 0x00 ; 00CF30: provisional 68k move.w #$0, d4
db 0x26, 0x03 ; 00CF34: provisional 68k move.l d3, d3
db 0x34, 0x2E, 0xAB, 0x16 ; 00CF36: provisional 68k move.w -$54ea(a6), d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00CF3A: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x20 ; 00CF3E: provisional 68k move.w #$120, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00CF42: provisional 68k trap #0 ; OS-9 service word $008E
db 0x34, 0x1F ; 00CF46: provisional 68k move.w (a7)+, d2
db 0xB4, 0x6E, 0xAB, 0xD8 ; 00CF48: provisional 68k cmp.w -$5428(a6), d2
db 0x66, 0x0E ; 00CF4C: provisional 68k bne.b $cf5c
db 0x42, 0x6E, 0xAB, 0xCA ; 00CF4E: provisional 68k clr.w -$5436(a6)
db 0x4A, 0x6E, 0xAB, 0xCC ; 00CF52: provisional 68k tst.w -$5434(a6)
db 0x67, 0x04 ; 00CF56: provisional 68k beq.b $cf5c
db 0x61, 0x00, 0x03, 0xE6 ; 00CF58: provisional 68k bsr.w $d340
db 0x4E, 0x75 ; 00CF5C: provisional 68k rts 
db 0x00, 0x00, 0x00, 0x00 ; 00CF5E: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 00CF62: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x01, 0x01 ; 00CF66: provisional 68k ori.b #$1, d0
db 0x01, 0x01 ; 00CF6A: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 00CF6C: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 00CF6E: provisional 68k btst.l d0, d1
db 0x01, 0x02 ; 00CF70: provisional 68k btst.l d0, d2
db 0x02, 0x02, 0x02, 0x02 ; 00CF72: provisional 68k andi.b #$2, d2
db 0x02, 0x02, 0x03, 0x03 ; 00CF76: provisional 68k andi.b #$3, d2
db 0x03, 0x03 ; 00CF7A: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 00CF7C: provisional 68k btst.l d1, d3
db 0x03, 0x04 ; 00CF7E: provisional 68k btst.l d1, d4
db 0x04, 0x04, 0x04, 0x04 ; 00CF80: provisional 68k subi.b #$4, d4
db 0x04, 0x04, 0x05, 0x05 ; 00CF84: provisional 68k subi.b #$5, d4
db 0x05, 0x05 ; 00CF88: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 00CF8A: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x06, 0x06 ; 00CF8C: provisional 68k addi.b #$6, d6
db 0x06, 0x07, 0x07, 0x07 ; 00CF90: provisional 68k addi.b #$7, d7
db 0x07, 0x07 ; 00CF94: provisional 68k btst.l d3, d7
db 0x08, 0x08, 0x08, 0x08 ; file 00CF96
db 0x09, 0x09, 0x09, 0x09 ; 00CF9A: provisional 68k movep.w $909(a1), d4
db 0x0A, 0x0A, 0x0A, 0x0B ; file 00CF9E
db 0x0B, 0x0B, 0x0C, 0x0C ; 00CFA2: provisional 68k movep.w $c0c(a3), d5
db 0x0C, 0x0D ; file 00CFA6
db 0x0D, 0x0D, 0x0E, 0x0E ; 00CFA8: provisional 68k movep.w $e0e(a5), d6
db 0x0F, 0x0F, 0x10, 0x10 ; 00CFAC: provisional 68k movep.w $1010(a7), d7
db 0x11, 0x11 ; 00CFB0: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 00CFB2: provisional 68k move.b (a2), d1
db 0x13, 0x14 ; 00CFB4: provisional 68k move.b (a4), -(a1)
db 0x15, 0x16 ; 00CFB6: provisional 68k move.b (a6), -(a2)
db 0x17, 0x18 ; 00CFB8: provisional 68k move.b (a0)+, -(a3)
db 0x19, 0x1A ; 00CFBA: provisional 68k move.b (a2)+, -(a4)
db 0x1C, 0x1D ; 00CFBC: provisional 68k move.b (a5)+, d6
db 0x20, 0x23 ; 00CFBE: provisional 68k move.l -(a3), d0
db 0x27, 0x80 ; file 00CFC0
