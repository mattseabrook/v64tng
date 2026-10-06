; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010B7C–010BF7, inclusive.
cdi_nodv_entry_010b7c:
db 0x52, 0x47 ; 010B7C: provisional 68k addq.w #$1, d7
db 0x4A, 0x80 ; 010B7E: provisional 68k tst.l d0
db 0x67, 0x72 ; 010B80: provisional 68k beq.b $10bf4
db 0x3F, 0x07 ; 010B82: provisional 68k move.w d7, -(a7)
db 0x53, 0x47 ; 010B84: provisional 68k subq.w #$1, d7
db 0x48, 0x7A, 0x00, 0x08 ; 010B86: provisional 68k pea.l $10b90(pc)
db 0x61, 0x00, 0xC0, 0x44 ; 010B8A: provisional 68k bsr.w $cbd0
db 0x60, 0x04 ; 010B8E: provisional 68k bra.b $10b94
db 0x7C, 0x20 ; 010B90: provisional 68k moveq #$20, d6
db 0x20, 0x00 ; 010B92: provisional 68k move.l d0, d0
db 0x51, 0xCF, 0xFF, 0xF0 ; 010B94: provisional 68k dbra d7, $10b86
db 0x3E, 0x1F ; 010B98: provisional 68k move.w (a7)+, d7
db 0x20, 0x40 ; 010B9A: provisional 68k movea.l d0, a0
db 0x61, 0x00, 0xFE, 0xA4 ; 010B9C: provisional 68k bsr.w $10a42
db 0x42, 0xE7 ; 010BA0: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010BA2: provisional 68k pea.l $10bac(pc)
db 0x61, 0x00, 0xC0, 0x28 ; 010BA6: provisional 68k bsr.w $cbd0
db 0x60, 0x06 ; 010BAA: provisional 68k bra.b $10bb2
db 0x69, 0x64 ; 010BAC: provisional 68k bvs.b $10c12
db 0x20, 0x3D ; file 010BAE
db 0x20, 0x00 ; 010BB0: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 010BB2: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xBF, 0x68 ; 010BB4: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 010BB8: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 010BBA: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010BBC: provisional 68k pea.l $10bc6(pc)
db 0x61, 0x00, 0xC0, 0x0E ; 010BC0: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 010BC4: provisional 68k bra.b $10bd2
db 0x20, 0x73, 0x74, 0x61 ; 010BC6: provisional 68k movea.l $61(a3, d7.w), a0
db 0x74, 0x75 ; 010BCA: provisional 68k moveq #$75, d2
db 0x73, 0x20 ; file 010BCC
db 0x3D, 0x20 ; 010BCE: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x1F, 0x28 ; 010BD0: provisional 68k ori.b #$28, d0
db 0x00, 0x01, 0x61, 0x00 ; 010BD4: provisional 68k ori.b #$0, d1
db 0xBF, 0x92 ; 010BD8: provisional 68k eor.l d7, (a2)
db 0x44, 0xDF ; 010BDA: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBF, 0xD8 ; 010BDC: provisional 68k bsr.w $cbb6
db 0x20, 0x28, 0x00, 0x16 ; 010BE0: provisional 68k move.l $16(a0), d0
db 0x67, 0x08 ; 010BE4: provisional 68k beq.b $10bee
db 0x2F, 0x08 ; 010BE6: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFF, 0x92 ; 010BE8: provisional 68k bsr.w $10b7c
db 0x20, 0x5F ; 010BEC: provisional 68k movea.l (a7)+, a0
db 0x20, 0x28, 0x00, 0x22 ; 010BEE: provisional 68k move.l $22(a0), d0
db 0x66, 0x8E ; 010BF2: provisional 68k bne.b $10b82
db 0x53, 0x47 ; 010BF4: provisional 68k subq.w #$1, d7
db 0x4E, 0x75 ; 010BF6: provisional 68k rts 
