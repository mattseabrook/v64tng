; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FCFC–00FD77, inclusive.
cdi_t7g_entry_00fcfc:
db 0x52, 0x47 ; 00FCFC: provisional 68k addq.w #$1, d7
db 0x4A, 0x80 ; 00FCFE: provisional 68k tst.l d0
db 0x67, 0x72 ; 00FD00: provisional 68k beq.b $fd74
db 0x3F, 0x07 ; 00FD02: provisional 68k move.w d7, -(a7)
db 0x53, 0x47 ; 00FD04: provisional 68k subq.w #$1, d7
db 0x48, 0x7A, 0x00, 0x08 ; 00FD06: provisional 68k pea.l $fd10(pc)
db 0x61, 0x00, 0xC0, 0x44 ; 00FD0A: provisional 68k bsr.w $bd50
db 0x60, 0x04 ; 00FD0E: provisional 68k bra.b $fd14
db 0x7C, 0x20 ; 00FD10: provisional 68k moveq #$20, d6
db 0x20, 0x00 ; 00FD12: provisional 68k move.l d0, d0
db 0x51, 0xCF, 0xFF, 0xF0 ; 00FD14: provisional 68k dbra d7, $fd06
db 0x3E, 0x1F ; 00FD18: provisional 68k move.w (a7)+, d7
db 0x20, 0x40 ; 00FD1A: provisional 68k movea.l d0, a0
db 0x61, 0x00, 0xFE, 0xA4 ; 00FD1C: provisional 68k bsr.w $fbc2
db 0x42, 0xE7 ; 00FD20: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00FD22: provisional 68k pea.l $fd2c(pc)
db 0x61, 0x00, 0xC0, 0x28 ; 00FD26: provisional 68k bsr.w $bd50
db 0x60, 0x06 ; 00FD2A: provisional 68k bra.b $fd32
db 0x69, 0x64 ; 00FD2C: provisional 68k bvs.b $fd92
db 0x20, 0x3D ; file 00FD2E
db 0x20, 0x00 ; 00FD30: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 00FD32: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xBF, 0x68 ; 00FD34: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00FD38: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00FD3A: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00FD3C: provisional 68k pea.l $fd46(pc)
db 0x61, 0x00, 0xC0, 0x0E ; 00FD40: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00FD44: provisional 68k bra.b $fd52
db 0x20, 0x73, 0x74, 0x61 ; 00FD46: provisional 68k movea.l $61(a3, d7.w), a0
db 0x74, 0x75 ; 00FD4A: provisional 68k moveq #$75, d2
db 0x73, 0x20 ; file 00FD4C
db 0x3D, 0x20 ; 00FD4E: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x1F, 0x28 ; 00FD50: provisional 68k ori.b #$28, d0
db 0x00, 0x01, 0x61, 0x00 ; 00FD54: provisional 68k ori.b #$0, d1
db 0xBF, 0x92 ; 00FD58: provisional 68k eor.l d7, (a2)
db 0x44, 0xDF ; 00FD5A: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBF, 0xD8 ; 00FD5C: provisional 68k bsr.w $bd36
db 0x20, 0x28, 0x00, 0x16 ; 00FD60: provisional 68k move.l $16(a0), d0
db 0x67, 0x08 ; 00FD64: provisional 68k beq.b $fd6e
db 0x2F, 0x08 ; 00FD66: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFF, 0x92 ; 00FD68: provisional 68k bsr.w $fcfc
db 0x20, 0x5F ; 00FD6C: provisional 68k movea.l (a7)+, a0
db 0x20, 0x28, 0x00, 0x22 ; 00FD6E: provisional 68k move.l $22(a0), d0
db 0x66, 0x8E ; 00FD72: provisional 68k bne.b $fd02
db 0x53, 0x47 ; 00FD74: provisional 68k subq.w #$1, d7
db 0x4E, 0x75 ; 00FD76: provisional 68k rts 
