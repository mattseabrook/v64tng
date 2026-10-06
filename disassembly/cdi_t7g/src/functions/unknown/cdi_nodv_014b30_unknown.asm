; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 014B30–014CA3, inclusive.
cdi_nodv_entry_014b30:
db 0x3A, 0x20 ; 014B30: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 014B32: provisional 68k move usp, a7
db 0x74, 0x20 ; 014B34: provisional 68k moveq #$20, d2
db 0x69, 0x6D ; 014B36: provisional 68k bvs.b $14ba5
db 0x70, 0x6C ; 014B38: provisional 68k moveq #$6c, d0
db 0x65, 0x6D ; 014B3A: provisional 68k bcs.b $14ba9
db 0x65, 0x6E ; 014B3C: provisional 68k bcs.b $14bac
db 0x74, 0x65 ; 014B3E: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 014B40: provisional 68k bcc.b $14b62
db 0x79, 0x65 ; file 014B42
db 0x74, 0x00 ; 014B44: provisional 68k moveq #$0, d2
db 0x2F, 0x0D ; 014B46: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 014B48: provisional 68k movea.l $8(a7), a5
db 0x3B, 0x6F, 0x00, 0x0C, 0x00, 0x24 ; 014B4C: provisional 68k move.w $c(a7), $24(a5)
db 0x3B, 0x6F, 0x00, 0x0E, 0x00, 0x26 ; 014B52: provisional 68k move.w $e(a7), $26(a5)
db 0x2A, 0x5F ; 014B58: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 014B5A: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 014B5E: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 014B60: provisional 68k rts 
db 0x2F, 0x0D ; 014B62: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 014B64: provisional 68k movea.l $8(a7), a5
db 0x3B, 0x6F, 0x00, 0x0C, 0x00, 0x28 ; 014B68: provisional 68k move.w $c(a7), $28(a5)
db 0x3B, 0x6F, 0x00, 0x0E, 0x00, 0x2A ; 014B6E: provisional 68k move.w $e(a7), $2a(a5)
db 0x2A, 0x5F ; 014B74: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 014B76: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 014B7A: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 014B7C: provisional 68k rts 
db 0x48, 0xE7, 0x80, 0x04 ; 014B7E: provisional 68k movem.l d0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 014B82: provisional 68k movea.l $c(a7), a5
db 0x42, 0x80 ; 014B86: provisional 68k clr.l d0
db 0x30, 0x2F, 0x00, 0x10 ; 014B88: provisional 68k move.w $10(a7), d0
db 0x80, 0xED, 0x00, 0x32 ; 014B8C: provisional 68k divu.w $32(a5), d0
db 0x48, 0x40 ; 014B90: provisional 68k swap d0
db 0x3B, 0x40, 0x00, 0x30 ; 014B92: provisional 68k move.w d0, $30(a5)
db 0x4C, 0xDF, 0x20, 0x01 ; 014B96: provisional 68k movem.l (a7)+, d0/a5
db 0x2F, 0x57, 0x00, 0x06 ; 014B9A: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 014B9E: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 014BA0: provisional 68k rts 
db 0x48, 0xE7, 0xC0, 0x3C ; 014BA2: provisional 68k movem.l d0-d1/a2-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x1C ; 014BA6: provisional 68k movea.l $1c(a7), a5
db 0x28, 0x6F, 0x00, 0x20 ; 014BAA: provisional 68k movea.l $20(a7), a4
db 0x26, 0x6D, 0x00, 0x38 ; 014BAE: provisional 68k movea.l $38(a5), a3
db 0x30, 0x2D, 0x00, 0x30 ; 014BB2: provisional 68k move.w $30(a5), d0
db 0xD0, 0x40 ; 014BB6: provisional 68k add.w d0, d0
db 0x24, 0x6D, 0x00, 0x40 ; 014BB8: provisional 68k movea.l $40(a5), a2
db 0x30, 0x32, 0x00, 0x00 ; 014BBC: provisional 68k move.w (a2, d0.w), d0
db 0x24, 0x6D, 0x00, 0x3C ; 014BC0: provisional 68k movea.l $3c(a5), a2
db 0xD0, 0x40 ; 014BC4: provisional 68k add.w d0, d0
db 0x30, 0x32, 0x00, 0x00 ; 014BC6: provisional 68k move.w (a2, d0.w), d0
db 0xD4, 0xC0 ; 014BCA: provisional 68k adda.w d0, a2
db 0x27, 0x4A, 0x00, 0x3C ; 014BCC: provisional 68k move.l a2, $3c(a3)
db 0x30, 0x2D, 0x00, 0x24 ; 014BD0: provisional 68k move.w $24(a5), d0
db 0x32, 0x2D, 0x00, 0x26 ; 014BD4: provisional 68k move.w $26(a5), d1
db 0xD0, 0x6D, 0x00, 0x28 ; 014BD8: provisional 68k add.w $28(a5), d0
db 0xD2, 0x6D, 0x00, 0x2A ; 014BDC: provisional 68k add.w $2a(a5), d1
db 0x90, 0x6D, 0x00, 0x2C ; 014BE0: provisional 68k sub.w $2c(a5), d0
db 0x92, 0x6D, 0x00, 0x2E ; 014BE4: provisional 68k sub.w $2e(a5), d1
db 0x3F, 0x01 ; 014BE8: provisional 68k move.w d1, -(a7)
db 0x3F, 0x00 ; 014BEA: provisional 68k move.w d0, -(a7)
db 0x2F, 0x0B ; 014BEC: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xEC, 0xB2 ; 014BEE: provisional 68k bsr.w $138a2
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 014BF2: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x0C ; 014BF8: provisional 68k move.l a4, -(a7)
db 0x2F, 0x0B ; 014BFA: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xEC, 0xC0 ; 014BFC: provisional 68k bsr.w $138be
db 0x4C, 0xDF, 0x3C, 0x03 ; 014C00: provisional 68k movem.l (a7)+, d0-d1/a2-a5
db 0x2F, 0x57, 0x00, 0x08 ; 014C04: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 014C08: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 014C0A: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x06, 0xCF, 0xE8 ; 014C0C: provisional 68k movem.l -$3018(a6), d1-d2
db 0x3B, 0x7C, 0x00, 0x00, 0x00, 0x1C ; 014C12: provisional 68k move.w #$0, $1c(a5)
db 0x3B, 0x41, 0x00, 0x1E ; 014C18: provisional 68k move.w d1, $1e(a5)
db 0x3B, 0x41, 0x00, 0x20 ; 014C1C: provisional 68k move.w d1, $20(a5)
db 0x3B, 0x42, 0x00, 0x22 ; 014C20: provisional 68k move.w d2, $22(a5)
db 0x42, 0xAD, 0x00, 0x24 ; 014C24: provisional 68k clr.l $24(a5)
db 0x42, 0xAD, 0x00, 0x28 ; 014C28: provisional 68k clr.l $28(a5)
db 0x42, 0xAD, 0x00, 0x30 ; 014C2C: provisional 68k clr.l $30(a5)
db 0x3F, 0x02 ; 014C30: provisional 68k move.w d2, -(a7)
db 0x61, 0x00, 0xCE, 0x0E ; 014C32: provisional 68k bsr.w $11a42
db 0x3F, 0x01 ; 014C36: provisional 68k move.w d1, -(a7)
db 0x2F, 0x08 ; 014C38: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x82, 0x6E ; 014C3A: provisional 68k bsr.w $ceaa
db 0x2B, 0x48, 0x00, 0x2C ; 014C3E: provisional 68k move.l a0, $2c(a5)
db 0x41, 0xED, 0x00, 0x50 ; 014C42: provisional 68k lea.l $50(a5), a0
db 0x43, 0xED, 0x00, 0x82 ; 014C46: provisional 68k lea.l $82(a5), a1
db 0x45, 0xED, 0x00, 0xC2 ; 014C4A: provisional 68k lea.l $c2(a5), a2
db 0x47, 0xED, 0x00, 0xA2 ; 014C4E: provisional 68k lea.l $a2(a5), a3
db 0x2F, 0x0B ; 014C52: provisional 68k move.l a3, -(a7)
db 0x2F, 0x0A ; 014C54: provisional 68k move.l a2, -(a7)
db 0x2F, 0x09 ; 014C56: provisional 68k move.l a1, -(a7)
db 0x2F, 0x08 ; 014C58: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xA7, 0xBC ; 014C5A: provisional 68k bsr.w $f418
db 0x3F, 0x3C, 0x00, 0x00 ; 014C5E: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0B ; 014C62: provisional 68k move.l a3, -(a7)
db 0x3F, 0x3C, 0x00, 0x00 ; 014C64: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x2D, 0x00, 0x2C ; 014C68: provisional 68k move.l $2c(a5), -(a7)
db 0x61, 0x00, 0xA6, 0xEE ; 014C6C: provisional 68k bsr.w $f35c
db 0x3F, 0x3C, 0x00, 0x00 ; 014C70: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0B ; 014C74: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xA8, 0x40 ; 014C76: provisional 68k bsr.w $f4b8
db 0x4E, 0x75 ; 014C7A: provisional 68k rts 
db 0x4E, 0x75 ; 014C7C: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 014C7E: provisional 68k pea.l $14c88(pc)
db 0x4E, 0xAE, 0xD1, 0x40 ; 014C82: provisional 68k jsr -$2ec0(a6)
db 0x60, 0x08 ; 014C86: provisional 68k bra.b $14c90
db 0x62, 0x61 ; 014C88: provisional 68k bhi.b $14ceb
db 0x64, 0x20 ; 014C8A: provisional 68k bcc.b $14cac
db 0x2D, 0x20 ; 014C8C: provisional 68k move.l -(a0), -(a6)
db 0x00, 0x00, 0x2F, 0x0D ; 014C8E: provisional 68k ori.b #$d, d0
db 0x61, 0x00, 0xC5, 0x58 ; 014C92: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 014C96: provisional 68k rts 
db 0x4E, 0x75 ; 014C98: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x2C ; 014C9A: provisional 68k move.l $2c(a5), -(a7)
db 0x61, 0x00, 0x83, 0x58 ; 014C9E: provisional 68k bsr.w $cff8
db 0x4E, 0x75 ; 014CA2: provisional 68k rts 
