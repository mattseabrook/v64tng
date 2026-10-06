; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010A56–010B09, inclusive.
cdi_nodv_entry_010a56:
db 0x4A, 0xAE, 0xC0, 0xF6 ; 010A56: provisional 68k tst.l -$3f0a(a6)
db 0x67, 0x1C ; 010A5A: provisional 68k beq.b $10a78
db 0x20, 0x6E, 0xC0, 0xF6 ; 010A5C: provisional 68k movea.l -$3f0a(a6), a0
db 0x2D, 0x68, 0x00, 0x22, 0xC0, 0xF6 ; 010A60: provisional 68k move.l $22(a0), -$3f0a(a6)
db 0x42, 0xA8, 0x00, 0x22 ; 010A66: provisional 68k clr.l $22(a0)
db 0x42, 0xA8, 0x00, 0x1E ; 010A6A: provisional 68k clr.l $1e(a0)
db 0x42, 0xA8, 0x00, 0x16 ; 010A6E: provisional 68k clr.l $16(a0)
db 0x42, 0xA8, 0x00, 0x12 ; 010A72: provisional 68k clr.l $12(a0)
db 0x4E, 0x75 ; 010A76: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 010A78: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xC1, 0x7E ; 010A7E: provisional 68k bsr.w $cbfe
db 0x67, 0x65 ; 010A82: provisional 68k beq.b $10ae9
db 0x74, 0x5F ; 010A84: provisional 68k moveq #$5f, d2
db 0x68, 0x73 ; 010A86: provisional 68k bvc.b $10afb
db 0x70, 0x6F ; 010A88: provisional 68k moveq #$6f, d0
db 0x74, 0x20 ; 010A8A: provisional 68k moveq #$20, d2
db 0x3A, 0x20 ; 010A8C: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 010A8E: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 010A90: provisional 68k bgt.b $10ab2
db 0x6F, 0x75 ; 010A92: provisional 68k ble.b $10b09
db 0x74, 0x20 ; 010A94: provisional 68k moveq #$20, d2
db 0x6F, 0x66 ; 010A96: provisional 68k ble.b $10afe
db 0x20, 0x68, 0x6F, 0x74 ; 010A98: provisional 68k movea.l $6f74(a0), a0
db 0x73, 0x70 ; file 010A9C
db 0x6F, 0x74 ; 010A9E: provisional 68k ble.b $10b14
db 0x73, 0x21 ; file 010AA0
db 0x00, 0x00, 0x48, 0xE7 ; 010AA2: provisional 68k ori.b #$e7, d0
db 0xFF, 0xFC ; 010AA6: provisional 68k dc.w $fffc
db 0x61, 0x00, 0xC1, 0x0C ; 010AA8: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xC1, 0x08 ; 010AAC: provisional 68k bsr.w $cbb6
db 0x48, 0x7A, 0x00, 0x08 ; 010AB0: provisional 68k pea.l $10aba(pc)
db 0x61, 0x00, 0xC1, 0x1A ; 010AB4: provisional 68k bsr.w $cbd0
db 0x60, 0x14 ; 010AB8: provisional 68k bra.b $10ace
db 0x48, 0x6F, 0x74, 0x53 ; 010ABA: provisional 68k pea.l $7453(a7)
db 0x70, 0x6F ; 010ABE: provisional 68k moveq #$6f, d0
db 0x74, 0x20 ; 010AC0: provisional 68k moveq #$20, d2
db 0x46, 0x72, 0x65, 0x65, 0x20, 0x4C ; 010AC2: provisional 68k not.w ([$204c, a2])
db 0x69, 0x73 ; 010AC8: provisional 68k bvs.b $10b3d
db 0x74, 0x0D ; 010ACA: provisional 68k moveq #$d, d2
db 0x0A, 0x00, 0x20, 0x2E ; 010ACC: provisional 68k eori.b #$2e, d0
db 0xC0, 0xF6, 0x20, 0x40 ; 010AD0: provisional 68k mulu.w $40(a6, d2.w), d0
db 0x61, 0x00, 0xFF, 0x6C ; 010AD4: provisional 68k bsr.w $10a42
db 0x42, 0xE7 ; 010AD8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010ADA: provisional 68k pea.l $10ae4(pc)
db 0x61, 0x00, 0xC0, 0xF0 ; 010ADE: provisional 68k bsr.w $cbd0
db 0x60, 0x06 ; 010AE2: provisional 68k bra.b $10aea
db 0x69, 0x64 ; 010AE4: provisional 68k bvs.b $10b4a
db 0x20, 0x3D ; file 010AE6
db 0x20, 0x00 ; 010AE8: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 010AEA: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xC0, 0x30 ; 010AEC: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 010AF0: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xC0, 0xC2 ; 010AF2: provisional 68k bsr.w $cbb6
db 0x20, 0x28, 0x00, 0x22 ; 010AF6: provisional 68k move.l $22(a0), d0
db 0x66, 0xD6 ; 010AFA: provisional 68k bne.b $10ad2
db 0x61, 0x00, 0xC0, 0xB8 ; 010AFC: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xC0, 0xB4 ; 010B00: provisional 68k bsr.w $cbb6
db 0x4C, 0xDF, 0x3F, 0xFF ; 010B04: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 010B08: provisional 68k rts 
