; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010BC2–010C69, inclusive.
cdi_t7g_entry_010bc2:
db 0x91, 0xC8 ; 010BC2: provisional 68k suba.l a0, a0
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x04 ; 010BC4: provisional 68k cmpi.w #$80, $4(a7)
db 0x66, 0x08 ; 010BCA: provisional 68k bne.b $10bd4
db 0x20, 0x6E, 0xA8, 0xFC ; 010BCC: provisional 68k movea.l -$5704(a6), a0
db 0x60, 0x00, 0x00, 0x2E ; 010BD0: provisional 68k bra.w $10c00
db 0x0C, 0x6F, 0x00, 0x81, 0x00, 0x04 ; 010BD4: provisional 68k cmpi.w #$81, $4(a7)
db 0x66, 0x08 ; 010BDA: provisional 68k bne.b $10be4
db 0x20, 0x6E, 0xA9, 0x00 ; 010BDC: provisional 68k movea.l -$5700(a6), a0
db 0x60, 0x00, 0x00, 0x1E ; 010BE0: provisional 68k bra.w $10c00
db 0x0C, 0x6F, 0x00, 0x01, 0x00, 0x04 ; 010BE4: provisional 68k cmpi.w #$1, $4(a7)
db 0x66, 0x08 ; 010BEA: provisional 68k bne.b $10bf4
db 0x20, 0x6E, 0xA9, 0x04 ; 010BEC: provisional 68k movea.l -$56fc(a6), a0
db 0x60, 0x00, 0x00, 0x0E ; 010BF0: provisional 68k bra.w $10c00
db 0x0C, 0x6F, 0x00, 0x90, 0x00, 0x04 ; 010BF4: provisional 68k cmpi.w #$90, $4(a7)
db 0x66, 0x0E ; 010BFA: provisional 68k bne.b $10c0a
db 0x20, 0x6E, 0xA9, 0x08 ; 010BFC: provisional 68k movea.l -$56f8(a6), a0
db 0x2F, 0x57, 0x00, 0x02 ; 010C00: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 010C04: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 010C08: provisional 68k rts 
db 0x30, 0x2F, 0x00, 0x04 ; 010C0A: provisional 68k move.w $4(a7), d0
db 0x42, 0xE7 ; 010C0E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010C10: provisional 68k pea.l $10c1a(pc)
db 0x61, 0x00, 0xB1, 0x3A ; 010C14: provisional 68k bsr.w $bd50
db 0x60, 0x1C ; 010C18: provisional 68k bra.b $10c36
db 0x64, 0x6E ; 010C1A: provisional 68k bcc.b $10c8a
db 0x6C, 0x69 ; 010C1C: provisional 68k bge.b $10c87
db 0x73, 0x74 ; file 010C1E
db 0x5F, 0x6D, 0x70, 0x6C ; 010C20: provisional 68k subq.w #$7, $706c(a5)
db 0x61, 0x6E ; 010C24: provisional 68k bsr.b $10c94
db 0x65, 0x3A ; 010C26: provisional 68k bcs.b $10c62
db 0x20, 0x70, 0x6C, 0x61 ; 010C28: provisional 68k movea.l $61(a0, d6.l), a0
db 0x6E, 0x65 ; 010C2C: provisional 68k bgt.b $10c93
db 0x20, 0x69, 0x64, 0x20 ; 010C2E: provisional 68k movea.l $6420(a1), a0
db 0x3D, 0x20 ; 010C32: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x00 ; 010C34: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xB0, 0x64 ; 010C38: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 010C3C: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB0, 0xF6 ; 010C3E: provisional 68k bsr.w $bd36
db 0x32, 0x3C, 0x80, 0x00 ; 010C42: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB1, 0x36 ; 010C46: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 010C4A: provisional 68k bcc.b $10cba
db 0x6C, 0x69 ; 010C4C: provisional 68k bge.b $10cb7
db 0x73, 0x74 ; file 010C4E
db 0x5F, 0x6D, 0x70, 0x6C ; 010C50: provisional 68k subq.w #$7, $706c(a5)
db 0x61, 0x6E ; 010C54: provisional 68k bsr.b $10cc4
db 0x65, 0x3A ; 010C56: provisional 68k bcs.b $10c92
db 0x20, 0x49 ; 010C58: provisional 68k movea.l a1, a0
db 0x6C, 0x6C ; 010C5A: provisional 68k bge.b $10cc8
db 0x65, 0x67 ; 010C5C: provisional 68k bcs.b $10cc5
db 0x61, 0x6C ; 010C5E: provisional 68k bsr.b $10ccc
db 0x20, 0x70, 0x6C, 0x61 ; 010C60: provisional 68k movea.l $61(a0, d6.l), a0
db 0x6E, 0x65 ; 010C64: provisional 68k bgt.b $10ccb
db 0x00, 0x00, 0x4E, 0x75 ; 010C66: provisional 68k ori.b #$75, d0
