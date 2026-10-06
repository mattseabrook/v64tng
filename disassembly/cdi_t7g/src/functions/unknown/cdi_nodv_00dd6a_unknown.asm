; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DD6A–00DE41, inclusive.
cdi_nodv_entry_00dd6a:
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 00DD6A: provisional 68k movea.l $0.l, a3
db 0x24, 0x2B, 0x00, 0x54 ; 00DD70: provisional 68k move.l $54(a3), d2
db 0x94, 0xAE, 0xAB, 0xCE ; 00DD74: provisional 68k sub.l -$5432(a6), d2
db 0xB4, 0x6E, 0xAB, 0xD4 ; 00DD78: provisional 68k cmp.w -$542c(a6), d2
db 0x63, 0x06 ; 00DD7C: provisional 68k bls.b $dd84
db 0x34, 0x2E, 0xAB, 0xD2 ; 00DD7E: provisional 68k move.w -$542e(a6), d2
db 0x60, 0x08 ; 00DD82: provisional 68k bra.b $dd8c
db 0xC5, 0xEE, 0xAB, 0xD2 ; 00DD84: provisional 68k muls.w -$542e(a6), d2
db 0x85, 0xEE, 0xAB, 0xD4 ; 00DD88: provisional 68k divs.w -$542c(a6), d2
db 0xD4, 0x6E, 0xAB, 0xD6 ; 00DD8C: provisional 68k add.w -$542a(a6), d2
db 0xB4, 0x6E, 0xAB, 0xDA ; 00DD90: provisional 68k cmp.w -$5426(a6), d2
db 0x67, 0x00, 0x00, 0x46 ; 00DD94: provisional 68k beq.w $dddc
db 0x3D, 0x42, 0xAB, 0xDA ; 00DD98: provisional 68k move.w d2, -$5426(a6)
db 0x16, 0x3B, 0x20, 0x40 ; 00DD9C: provisional 68k move.b $ddde(pc, d2.w), d3
db 0xE1, 0x43 ; 00DDA0: provisional 68k asl.w #$8, d3
db 0x3F, 0x03 ; 00DDA2: provisional 68k move.w d3, -(a7)
db 0x48, 0x43 ; 00DDA4: provisional 68k swap d3
db 0x36, 0x1F ; 00DDA6: provisional 68k move.w (a7)+, d3
db 0x86, 0xBC, 0x00, 0x80, 0x00, 0x80 ; 00DDA8: provisional 68k or.l #$800080, d3
db 0x3F, 0x02 ; 00DDAE: provisional 68k move.w d2, -(a7)
db 0x38, 0x3C, 0x00, 0x00 ; 00DDB0: provisional 68k move.w #$0, d4
db 0x26, 0x03 ; 00DDB4: provisional 68k move.l d3, d3
db 0x34, 0x2E, 0xAB, 0x16 ; 00DDB6: provisional 68k move.w -$54ea(a6), d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00DDBA: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x20 ; 00DDBE: provisional 68k move.w #$120, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00DDC2: provisional 68k trap #0 ; OS-9 service word $008E
db 0x34, 0x1F ; 00DDC6: provisional 68k move.w (a7)+, d2
db 0xB4, 0x6E, 0xAB, 0xD8 ; 00DDC8: provisional 68k cmp.w -$5428(a6), d2
db 0x66, 0x0E ; 00DDCC: provisional 68k bne.b $dddc
db 0x42, 0x6E, 0xAB, 0xCA ; 00DDCE: provisional 68k clr.w -$5436(a6)
db 0x4A, 0x6E, 0xAB, 0xCC ; 00DDD2: provisional 68k tst.w -$5434(a6)
db 0x67, 0x04 ; 00DDD6: provisional 68k beq.b $dddc
db 0x61, 0x00, 0x03, 0xE6 ; 00DDD8: provisional 68k bsr.w $e1c0
db 0x4E, 0x75 ; 00DDDC: provisional 68k rts 
db 0x00, 0x00, 0x00, 0x00 ; 00DDDE: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x00 ; 00DDE2: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x01, 0x01 ; 00DDE6: provisional 68k ori.b #$1, d0
db 0x01, 0x01 ; 00DDEA: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 00DDEC: provisional 68k btst.l d0, d1
db 0x01, 0x01 ; 00DDEE: provisional 68k btst.l d0, d1
db 0x01, 0x02 ; 00DDF0: provisional 68k btst.l d0, d2
db 0x02, 0x02, 0x02, 0x02 ; 00DDF2: provisional 68k andi.b #$2, d2
db 0x02, 0x02, 0x03, 0x03 ; 00DDF6: provisional 68k andi.b #$3, d2
db 0x03, 0x03 ; 00DDFA: provisional 68k btst.l d1, d3
db 0x03, 0x03 ; 00DDFC: provisional 68k btst.l d1, d3
db 0x03, 0x04 ; 00DDFE: provisional 68k btst.l d1, d4
db 0x04, 0x04, 0x04, 0x04 ; 00DE00: provisional 68k subi.b #$4, d4
db 0x04, 0x04, 0x05, 0x05 ; 00DE04: provisional 68k subi.b #$5, d4
db 0x05, 0x05 ; 00DE08: provisional 68k btst.l d2, d5
db 0x05, 0x05 ; 00DE0A: provisional 68k btst.l d2, d5
db 0x06, 0x06, 0x06, 0x06 ; 00DE0C: provisional 68k addi.b #$6, d6
db 0x06, 0x07, 0x07, 0x07 ; 00DE10: provisional 68k addi.b #$7, d7
db 0x07, 0x07 ; 00DE14: provisional 68k btst.l d3, d7
db 0x08, 0x08, 0x08, 0x08 ; file 00DE16
db 0x09, 0x09, 0x09, 0x09 ; 00DE1A: provisional 68k movep.w $909(a1), d4
db 0x0A, 0x0A, 0x0A, 0x0B ; file 00DE1E
db 0x0B, 0x0B, 0x0C, 0x0C ; 00DE22: provisional 68k movep.w $c0c(a3), d5
db 0x0C, 0x0D ; file 00DE26
db 0x0D, 0x0D, 0x0E, 0x0E ; 00DE28: provisional 68k movep.w $e0e(a5), d6
db 0x0F, 0x0F, 0x10, 0x10 ; 00DE2C: provisional 68k movep.w $1010(a7), d7
db 0x11, 0x11 ; 00DE30: provisional 68k move.b (a1), -(a0)
db 0x12, 0x12 ; 00DE32: provisional 68k move.b (a2), d1
db 0x13, 0x14 ; 00DE34: provisional 68k move.b (a4), -(a1)
db 0x15, 0x16 ; 00DE36: provisional 68k move.b (a6), -(a2)
db 0x17, 0x18 ; 00DE38: provisional 68k move.b (a0)+, -(a3)
db 0x19, 0x1A ; 00DE3A: provisional 68k move.b (a2)+, -(a4)
db 0x1C, 0x1D ; 00DE3C: provisional 68k move.b (a5)+, d6
db 0x20, 0x23 ; 00DE3E: provisional 68k move.l -(a3), d0
db 0x27, 0x80 ; file 00DE40
