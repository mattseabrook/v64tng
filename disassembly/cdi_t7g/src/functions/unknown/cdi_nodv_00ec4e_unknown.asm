; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EC4E–00ED31, inclusive.
cdi_nodv_entry_00ec4e:
db 0x4A, 0x68, 0x00, 0x24 ; 00EC4E: provisional 68k tst.w $24(a0)
db 0x67, 0x00, 0x00, 0x3C ; 00EC52: provisional 68k beq.w $ec90
db 0x38, 0x28, 0x00, 0x28 ; 00EC56: provisional 68k move.w $28(a0), d4
db 0x3A, 0x04 ; 00EC5A: provisional 68k move.w d4, d5
db 0xDA, 0x68, 0x00, 0x24 ; 00EC5C: provisional 68k add.w $24(a0), d5
db 0x53, 0x45 ; 00EC60: provisional 68k subq.w #$1, d5
db 0x3C, 0x2D, 0x00, 0x3C ; 00EC62: provisional 68k move.w $3c(a5), d6
db 0x3E, 0x06 ; 00EC66: provisional 68k move.w d6, d7
db 0xDE, 0x6D, 0x00, 0x3E ; 00EC68: provisional 68k add.w $3e(a5), d7
db 0x53, 0x47 ; 00EC6C: provisional 68k subq.w #$1, d7
db 0xBE, 0x44 ; 00EC6E: provisional 68k cmp.w d4, d7
db 0x6B, 0x1E ; 00EC70: provisional 68k bmi.b $ec90
db 0xBC, 0x45 ; 00EC72: provisional 68k cmp.w d5, d6
db 0x6E, 0x1A ; 00EC74: provisional 68k bgt.b $ec90
db 0xBE, 0x45 ; 00EC76: provisional 68k cmp.w d5, d7
db 0x6B, 0x02 ; 00EC78: provisional 68k bmi.b $ec7c
db 0x3E, 0x05 ; 00EC7A: provisional 68k move.w d5, d7
db 0xBC, 0x44 ; 00EC7C: provisional 68k cmp.w d4, d6
db 0x6A, 0x02 ; 00EC7E: provisional 68k bpl.b $ec82
db 0x3C, 0x04 ; 00EC80: provisional 68k move.w d4, d6
db 0x3A, 0x06 ; 00EC82: provisional 68k move.w d6, d5
db 0x9A, 0x44 ; 00EC84: provisional 68k sub.w d4, d5
db 0x9E, 0x46 ; 00EC86: provisional 68k sub.w d6, d7
db 0x52, 0x47 ; 00EC88: provisional 68k addq.w #$1, d7
db 0x02, 0x3C, 0x00, 0x0E ; 00EC8A: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 00EC8E: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 00EC90: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00EC94: provisional 68k rts 
db 0x38, 0x43 ; 00EC96: provisional 68k movea.w d3, a4
db 0x53, 0x47 ; 00EC98: provisional 68k subq.w #$1, d7
db 0x26, 0x11 ; 00EC9A: provisional 68k move.l (a1), d3
db 0xC6, 0x86 ; 00EC9C: provisional 68k and.l d6, d3
db 0x86, 0x84 ; 00EC9E: provisional 68k or.l d4, d3
db 0x22, 0x83 ; 00ECA0: provisional 68k move.l d3, (a1)
db 0x26, 0x29, 0x00, 0x04 ; 00ECA2: provisional 68k move.l $4(a1), d3
db 0xC6, 0x81 ; 00ECA6: provisional 68k and.l d1, d3
db 0x86, 0x80 ; 00ECA8: provisional 68k or.l d0, d3
db 0x23, 0x43, 0x00, 0x04 ; 00ECAA: provisional 68k move.l d3, $4(a1)
db 0x26, 0x8A ; 00ECAE: provisional 68k move.l a2, (a3)
db 0x26, 0x18 ; 00ECB0: provisional 68k move.l (a0)+, d3
db 0x86, 0x82 ; 00ECB2: provisional 68k or.l d2, d3
db 0x27, 0x43, 0x00, 0x04 ; 00ECB4: provisional 68k move.l d3, $4(a3)
db 0xD2, 0xC5 ; 00ECB8: provisional 68k adda.w d5, a1
db 0xD6, 0xCC ; 00ECBA: provisional 68k adda.w a4, a3
db 0x51, 0xCF, 0xFF, 0xDC ; 00ECBC: provisional 68k dbra d7, $ec9a
db 0x4E, 0x75 ; 00ECC0: provisional 68k rts 
db 0x38, 0x43 ; 00ECC2: provisional 68k movea.w d3, a4
db 0x53, 0x47 ; 00ECC4: provisional 68k subq.w #$1, d7
db 0x26, 0x11 ; 00ECC6: provisional 68k move.l (a1), d3
db 0xC6, 0x86 ; 00ECC8: provisional 68k and.l d6, d3
db 0x86, 0x84 ; 00ECCA: provisional 68k or.l d4, d3
db 0x22, 0x83 ; 00ECCC: provisional 68k move.l d3, (a1)
db 0x23, 0x83, 0x50, 0x00 ; 00ECCE: provisional 68k move.l d3, (a1, d5.w)
db 0x26, 0x29, 0x00, 0x04 ; 00ECD2: provisional 68k move.l $4(a1), d3
db 0xC6, 0x81 ; 00ECD6: provisional 68k and.l d1, d3
db 0x86, 0x80 ; 00ECD8: provisional 68k or.l d0, d3
db 0x23, 0x43, 0x00, 0x04 ; 00ECDA: provisional 68k move.l d3, $4(a1)
db 0x23, 0x83, 0x50, 0x04 ; 00ECDE: provisional 68k move.l d3, $4(a1, d5.w)
db 0x26, 0x8A ; 00ECE2: provisional 68k move.l a2, (a3)
db 0x26, 0x18 ; 00ECE4: provisional 68k move.l (a0)+, d3
db 0x86, 0x82 ; 00ECE6: provisional 68k or.l d2, d3
db 0x27, 0x43, 0x00, 0x04 ; 00ECE8: provisional 68k move.l d3, $4(a3)
db 0xD6, 0xCC ; 00ECEC: provisional 68k adda.w a4, a3
db 0x27, 0x43, 0x00, 0x04 ; 00ECEE: provisional 68k move.l d3, $4(a3)
db 0x27, 0x4A, 0x00, 0x00 ; 00ECF2: provisional 68k move.l a2, $0(a3)
db 0xD2, 0xC5 ; 00ECF6: provisional 68k adda.w d5, a1
db 0xD2, 0xC5 ; 00ECF8: provisional 68k adda.w d5, a1
db 0xD6, 0xCC ; 00ECFA: provisional 68k adda.w a4, a3
db 0x51, 0xCF, 0xFF, 0xC8 ; 00ECFC: provisional 68k dbra d7, $ecc6
db 0x4E, 0x75 ; 00ED00: provisional 68k rts 
db 0x38, 0x43 ; 00ED02: provisional 68k movea.w d3, a4
db 0xE4, 0x4F ; 00ED04: provisional 68k lsr.w #$2, d7
db 0x53, 0x47 ; 00ED06: provisional 68k subq.w #$1, d7
db 0x26, 0x11 ; 00ED08: provisional 68k move.l (a1), d3
db 0xC6, 0x86 ; 00ED0A: provisional 68k and.l d6, d3
db 0x86, 0x84 ; 00ED0C: provisional 68k or.l d4, d3
db 0x22, 0x83 ; 00ED0E: provisional 68k move.l d3, (a1)
db 0x26, 0x29, 0x00, 0x04 ; 00ED10: provisional 68k move.l $4(a1), d3
db 0xC6, 0x81 ; 00ED14: provisional 68k and.l d1, d3
db 0x86, 0x80 ; 00ED16: provisional 68k or.l d0, d3
db 0x23, 0x43, 0x00, 0x04 ; 00ED18: provisional 68k move.l d3, $4(a1)
db 0x26, 0x8A ; 00ED1C: provisional 68k move.l a2, (a3)
db 0x26, 0x18 ; 00ED1E: provisional 68k move.l (a0)+, d3
db 0x86, 0x82 ; 00ED20: provisional 68k or.l d2, d3
db 0x27, 0x43, 0x00, 0x04 ; 00ED22: provisional 68k move.l d3, $4(a3)
db 0x58, 0x48 ; 00ED26: provisional 68k addq.w #$4, a0
db 0xD2, 0xC5 ; 00ED28: provisional 68k adda.w d5, a1
db 0xD6, 0xCC ; 00ED2A: provisional 68k adda.w a4, a3
db 0x51, 0xCF, 0xFF, 0xDA ; 00ED2C: provisional 68k dbra d7, $ed08
db 0x4E, 0x75 ; 00ED30: provisional 68k rts 
