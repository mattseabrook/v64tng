; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DDCE–00DEB1, inclusive.
cdi_t7g_entry_00ddce:
db 0x4A, 0x68, 0x00, 0x24 ; 00DDCE: provisional 68k tst.w $24(a0)
db 0x67, 0x00, 0x00, 0x3C ; 00DDD2: provisional 68k beq.w $de10
db 0x38, 0x28, 0x00, 0x28 ; 00DDD6: provisional 68k move.w $28(a0), d4
db 0x3A, 0x04 ; 00DDDA: provisional 68k move.w d4, d5
db 0xDA, 0x68, 0x00, 0x24 ; 00DDDC: provisional 68k add.w $24(a0), d5
db 0x53, 0x45 ; 00DDE0: provisional 68k subq.w #$1, d5
db 0x3C, 0x2D, 0x00, 0x3C ; 00DDE2: provisional 68k move.w $3c(a5), d6
db 0x3E, 0x06 ; 00DDE6: provisional 68k move.w d6, d7
db 0xDE, 0x6D, 0x00, 0x3E ; 00DDE8: provisional 68k add.w $3e(a5), d7
db 0x53, 0x47 ; 00DDEC: provisional 68k subq.w #$1, d7
db 0xBE, 0x44 ; 00DDEE: provisional 68k cmp.w d4, d7
db 0x6B, 0x1E ; 00DDF0: provisional 68k bmi.b $de10
db 0xBC, 0x45 ; 00DDF2: provisional 68k cmp.w d5, d6
db 0x6E, 0x1A ; 00DDF4: provisional 68k bgt.b $de10
db 0xBE, 0x45 ; 00DDF6: provisional 68k cmp.w d5, d7
db 0x6B, 0x02 ; 00DDF8: provisional 68k bmi.b $ddfc
db 0x3E, 0x05 ; 00DDFA: provisional 68k move.w d5, d7
db 0xBC, 0x44 ; 00DDFC: provisional 68k cmp.w d4, d6
db 0x6A, 0x02 ; 00DDFE: provisional 68k bpl.b $de02
db 0x3C, 0x04 ; 00DE00: provisional 68k move.w d4, d6
db 0x3A, 0x06 ; 00DE02: provisional 68k move.w d6, d5
db 0x9A, 0x44 ; 00DE04: provisional 68k sub.w d4, d5
db 0x9E, 0x46 ; 00DE06: provisional 68k sub.w d6, d7
db 0x52, 0x47 ; 00DE08: provisional 68k addq.w #$1, d7
db 0x02, 0x3C, 0x00, 0x0E ; 00DE0A: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 00DE0E: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 00DE10: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00DE14: provisional 68k rts 
db 0x38, 0x43 ; 00DE16: provisional 68k movea.w d3, a4
db 0x53, 0x47 ; 00DE18: provisional 68k subq.w #$1, d7
db 0x26, 0x11 ; 00DE1A: provisional 68k move.l (a1), d3
db 0xC6, 0x86 ; 00DE1C: provisional 68k and.l d6, d3
db 0x86, 0x84 ; 00DE1E: provisional 68k or.l d4, d3
db 0x22, 0x83 ; 00DE20: provisional 68k move.l d3, (a1)
db 0x26, 0x29, 0x00, 0x04 ; 00DE22: provisional 68k move.l $4(a1), d3
db 0xC6, 0x81 ; 00DE26: provisional 68k and.l d1, d3
db 0x86, 0x80 ; 00DE28: provisional 68k or.l d0, d3
db 0x23, 0x43, 0x00, 0x04 ; 00DE2A: provisional 68k move.l d3, $4(a1)
db 0x26, 0x8A ; 00DE2E: provisional 68k move.l a2, (a3)
db 0x26, 0x18 ; 00DE30: provisional 68k move.l (a0)+, d3
db 0x86, 0x82 ; 00DE32: provisional 68k or.l d2, d3
db 0x27, 0x43, 0x00, 0x04 ; 00DE34: provisional 68k move.l d3, $4(a3)
db 0xD2, 0xC5 ; 00DE38: provisional 68k adda.w d5, a1
db 0xD6, 0xCC ; 00DE3A: provisional 68k adda.w a4, a3
db 0x51, 0xCF, 0xFF, 0xDC ; 00DE3C: provisional 68k dbra d7, $de1a
db 0x4E, 0x75 ; 00DE40: provisional 68k rts 
db 0x38, 0x43 ; 00DE42: provisional 68k movea.w d3, a4
db 0x53, 0x47 ; 00DE44: provisional 68k subq.w #$1, d7
db 0x26, 0x11 ; 00DE46: provisional 68k move.l (a1), d3
db 0xC6, 0x86 ; 00DE48: provisional 68k and.l d6, d3
db 0x86, 0x84 ; 00DE4A: provisional 68k or.l d4, d3
db 0x22, 0x83 ; 00DE4C: provisional 68k move.l d3, (a1)
db 0x23, 0x83, 0x50, 0x00 ; 00DE4E: provisional 68k move.l d3, (a1, d5.w)
db 0x26, 0x29, 0x00, 0x04 ; 00DE52: provisional 68k move.l $4(a1), d3
db 0xC6, 0x81 ; 00DE56: provisional 68k and.l d1, d3
db 0x86, 0x80 ; 00DE58: provisional 68k or.l d0, d3
db 0x23, 0x43, 0x00, 0x04 ; 00DE5A: provisional 68k move.l d3, $4(a1)
db 0x23, 0x83, 0x50, 0x04 ; 00DE5E: provisional 68k move.l d3, $4(a1, d5.w)
db 0x26, 0x8A ; 00DE62: provisional 68k move.l a2, (a3)
db 0x26, 0x18 ; 00DE64: provisional 68k move.l (a0)+, d3
db 0x86, 0x82 ; 00DE66: provisional 68k or.l d2, d3
db 0x27, 0x43, 0x00, 0x04 ; 00DE68: provisional 68k move.l d3, $4(a3)
db 0xD6, 0xCC ; 00DE6C: provisional 68k adda.w a4, a3
db 0x27, 0x43, 0x00, 0x04 ; 00DE6E: provisional 68k move.l d3, $4(a3)
db 0x27, 0x4A, 0x00, 0x00 ; 00DE72: provisional 68k move.l a2, $0(a3)
db 0xD2, 0xC5 ; 00DE76: provisional 68k adda.w d5, a1
db 0xD2, 0xC5 ; 00DE78: provisional 68k adda.w d5, a1
db 0xD6, 0xCC ; 00DE7A: provisional 68k adda.w a4, a3
db 0x51, 0xCF, 0xFF, 0xC8 ; 00DE7C: provisional 68k dbra d7, $de46
db 0x4E, 0x75 ; 00DE80: provisional 68k rts 
db 0x38, 0x43 ; 00DE82: provisional 68k movea.w d3, a4
db 0xE4, 0x4F ; 00DE84: provisional 68k lsr.w #$2, d7
db 0x53, 0x47 ; 00DE86: provisional 68k subq.w #$1, d7
db 0x26, 0x11 ; 00DE88: provisional 68k move.l (a1), d3
db 0xC6, 0x86 ; 00DE8A: provisional 68k and.l d6, d3
db 0x86, 0x84 ; 00DE8C: provisional 68k or.l d4, d3
db 0x22, 0x83 ; 00DE8E: provisional 68k move.l d3, (a1)
db 0x26, 0x29, 0x00, 0x04 ; 00DE90: provisional 68k move.l $4(a1), d3
db 0xC6, 0x81 ; 00DE94: provisional 68k and.l d1, d3
db 0x86, 0x80 ; 00DE96: provisional 68k or.l d0, d3
db 0x23, 0x43, 0x00, 0x04 ; 00DE98: provisional 68k move.l d3, $4(a1)
db 0x26, 0x8A ; 00DE9C: provisional 68k move.l a2, (a3)
db 0x26, 0x18 ; 00DE9E: provisional 68k move.l (a0)+, d3
db 0x86, 0x82 ; 00DEA0: provisional 68k or.l d2, d3
db 0x27, 0x43, 0x00, 0x04 ; 00DEA2: provisional 68k move.l d3, $4(a3)
db 0x58, 0x48 ; 00DEA6: provisional 68k addq.w #$4, a0
db 0xD2, 0xC5 ; 00DEA8: provisional 68k adda.w d5, a1
db 0xD6, 0xCC ; 00DEAA: provisional 68k adda.w a4, a3
db 0x51, 0xCF, 0xFF, 0xDA ; 00DEAC: provisional 68k dbra d7, $de88
db 0x4E, 0x75 ; 00DEB0: provisional 68k rts 
