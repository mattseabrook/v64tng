; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012B12–012B9B, inclusive.
cdi_t7g_entry_012b12:
db 0x0C, 0x6D, 0xFF, 0xFF, 0x00, 0x2A ; 012B12: provisional 68k cmpi.w #$ffff, $2a(a5)
db 0x67, 0x32 ; 012B18: provisional 68k beq.b $12b4c
db 0x60, 0x00, 0x00, 0x02 ; 012B1A: provisional 68k bra.w $12b1e
db 0x32, 0x3C, 0x80, 0x00 ; 012B1E: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x92, 0x5A ; 012B22: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 012B26: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012B28
db 0x65, 0x5F ; 012B2A: provisional 68k bcs.b $12b8b
db 0x63, 0x6C ; 012B2C: provisional 68k bls.b $12b9a
db 0x38, 0x5F ; 012B2E: provisional 68k movea.w (a7)+, a4
db 0x74, 0x72 ; 012B30: provisional 68k moveq #$72, d2
db 0x61, 0x6E ; 012B32: provisional 68k bsr.b $12ba2
db 0x73, 0x3A ; file 012B34
db 0x20, 0x4E ; 012B36: provisional 68k movea.l a6, a0
db 0x6F, 0x74 ; 012B38: provisional 68k ble.b $12bae
db 0x20, 0x69, 0x6D, 0x70 ; 012B3A: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 012B3E: provisional 68k bge.b $12ba5
db 0x6D, 0x65 ; 012B40: provisional 68k blt.b $12ba7
db 0x6E, 0x74 ; 012B42: provisional 68k bgt.b $12bb8
db 0x65, 0x64 ; 012B44: provisional 68k bcs.b $12baa
db 0x20, 0x79, 0x65, 0x74, 0x21, 0x00 ; 012B46: provisional 68k movea.l $65742100.l, a0
db 0x61, 0x00, 0x02, 0x88 ; 012B4C: provisional 68k bsr.w $12dd6
db 0x64, 0x02 ; 012B50: provisional 68k bcc.b $12b54
db 0x4E, 0x75 ; 012B52: provisional 68k rts 
db 0x61, 0x00, 0x02, 0x72 ; 012B54: provisional 68k bsr.w $12dc8
db 0x61, 0x00, 0x02, 0x3C ; 012B58: provisional 68k bsr.w $12d96
db 0xE2, 0x48 ; 012B5C: provisional 68k lsr.w #$1, d0
db 0xE2, 0x49 ; 012B5E: provisional 68k lsr.w #$1, d1
db 0xD4, 0xC1 ; 012B60: provisional 68k adda.w d1, a2
db 0x42, 0x43 ; 012B62: provisional 68k clr.w d3
db 0x53, 0x45 ; 012B64: provisional 68k subq.w #$1, d5
db 0xE2, 0x4E ; 012B66: provisional 68k lsr.w #$1, d6
db 0xE4, 0x4E ; 012B68: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 012B6A: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 012B6C: provisional 68k subq.w #$1, d7
db 0x48, 0xA7, 0x63, 0x00 ; 012B6E: provisional 68k movem.w d1-d2/d6-d7, -(a7)
db 0x53, 0x44 ; 012B72: provisional 68k subq.w #$1, d4
db 0x6A, 0x0A ; 012B74: provisional 68k bpl.b $12b80
db 0x22, 0x69, 0x09, 0x34 ; 012B76: provisional 68k movea.l $934(a1), a1
db 0x24, 0x49 ; 012B7A: provisional 68k movea.l a1, a2
db 0xD4, 0xC1 ; 012B7C: provisional 68k adda.w d1, a2
db 0x38, 0x05 ; 012B7E: provisional 68k move.w d5, d4
db 0x26, 0x58 ; 012B80: provisional 68k movea.l (a0)+, a3
db 0xD6, 0xC0 ; 012B82: provisional 68k adda.w d0, a3
db 0x42, 0x42 ; 012B84: provisional 68k clr.w d2
db 0x2F, 0x0A ; 012B86: provisional 68k move.l a2, -(a7)
db 0x26, 0xDA ; 012B88: provisional 68k move.l (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 012B8A: provisional 68k dbra d6, $12b88
db 0x24, 0x5F ; 012B8E: provisional 68k movea.l (a7)+, a2
db 0x4C, 0x9F, 0x00, 0xC6 ; 012B90: provisional 68k movem.w (a7)+, d1-d2/d6-d7
db 0xD4, 0xC2 ; 012B94: provisional 68k adda.w d2, a2
db 0x51, 0xCF, 0xFF, 0xD6 ; 012B96: provisional 68k dbra d7, $12b6e
db 0x4E, 0x75 ; 012B9A: provisional 68k rts 
