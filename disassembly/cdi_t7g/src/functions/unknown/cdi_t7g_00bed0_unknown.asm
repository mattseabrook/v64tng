; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BED0–00BFD1, inclusive.
cdi_t7g_entry_00bed0:
db 0x64, 0x6E ; 00BED0: provisional 68k bcc.b $bf40
db 0x6C, 0x69 ; 00BED2: provisional 68k bge.b $bf3d
db 0x73, 0x74 ; file 00BED4
db 0x42, 0x00 ; 00BED6: provisional 68k clr.b d0
db 0x2D, 0x48, 0xA9, 0x00 ; 00BED8: provisional 68k move.l a0, -$5700(a6)
db 0x34, 0x1F ; 00BEDC: provisional 68k move.w (a7)+, d2
db 0x3F, 0x3C, 0x00, 0x02 ; 00BEDE: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00BEE2: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x42, 0xCF, 0xE8 ; 00BEE8: provisional 68k move.l d2, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x01, 0xCF, 0xEC ; 00BEEC: provisional 68k move.l #$1, -$3014(a6)
db 0x61, 0x00, 0x41, 0x88 ; 00BEF4: provisional 68k bsr.w $1007e
db 0x65, 0x00, 0x00, 0xCE ; 00BEF8: provisional 68k bcs.w $bfc8
db 0x48, 0x7A, 0x00, 0x0A ; 00BEFC: provisional 68k pea.l $bf08(pc)
db 0x2F, 0x08 ; 00BF00: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x44, 0x1E ; 00BF02: provisional 68k bsr.w $10322
db 0x60, 0x08 ; 00BF06: provisional 68k bra.b $bf10
db 0x64, 0x6E ; 00BF08: provisional 68k bcc.b $bf78
db 0x6C, 0x69 ; 00BF0A: provisional 68k bge.b $bf75
db 0x73, 0x74 ; file 00BF0C
db 0x53, 0x00 ; 00BF0E: provisional 68k subq.b #$1, d0
db 0x2D, 0x48, 0xA9, 0x04 ; 00BF10: provisional 68k move.l a0, -$56fc(a6)
db 0x3F, 0x3C, 0x00, 0x02 ; 00BF14: provisional 68k move.w #$2, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00BF18: provisional 68k move.l #$0, -(a7)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x00, 0xCF, 0xE8 ; 00BF1E: provisional 68k move.l #$0, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x90, 0xCF, 0xEC ; 00BF26: provisional 68k move.l #$90, -$3014(a6)
db 0x61, 0x00, 0x41, 0x4E ; 00BF2E: provisional 68k bsr.w $1007e
db 0x65, 0x00, 0x00, 0xC6 ; 00BF32: provisional 68k bcs.w $bffa
db 0x48, 0x7A, 0x00, 0x0A ; 00BF36: provisional 68k pea.l $bf42(pc)
db 0x2F, 0x08 ; 00BF3A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x43, 0xE4 ; 00BF3C: provisional 68k bsr.w $10322
db 0x60, 0x08 ; 00BF40: provisional 68k bra.b $bf4a
db 0x64, 0x6E ; 00BF42: provisional 68k bcc.b $bfb2
db 0x6C, 0x69 ; 00BF44: provisional 68k bge.b $bfaf
db 0x73, 0x74 ; file 00BF46
db 0x46, 0x00 ; 00BF48: provisional 68k not.b d0
db 0x2D, 0x48, 0xA9, 0x08 ; 00BF4A: provisional 68k move.l a0, -$56f8(a6)
db 0x42, 0x6E, 0xA9, 0x0C ; 00BF4E: provisional 68k clr.w -$56f4(a6)
db 0x4E, 0x75 ; 00BF52: provisional 68k rts 
db 0x32, 0x01 ; 00BF54: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFE, 0x26 ; 00BF56: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 00BF5A: provisional 68k bcc.b $bfca
db 0x64, 0x65 ; 00BF5C: provisional 68k bcc.b $bfc3
db 0x5F, 0x69, 0x6E, 0x69 ; 00BF5E: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00BF62: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00BF64: provisional 68k bsr.b $bfd2
db 0x69, 0x73 ; 00BF66: provisional 68k bvs.b $bfdb
db 0x65, 0x20 ; 00BF68: provisional 68k bcs.b $bf8a
db 0x3A, 0x20 ; 00BF6A: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00BF6C: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00BF74: provisional 68k movea.l $6e20(a1), a0
db 0x76, 0x69 ; 00BF78: provisional 68k moveq #$69, d3
db 0x64, 0x65 ; 00BF7A: provisional 68k bcc.b $bfe1
db 0x6F, 0x20 ; 00BF7C: provisional 68k ble.b $bf9e
db 0x70, 0x6C ; 00BF7E: provisional 68k moveq #$6c, d0
db 0x61, 0x6E ; 00BF80: provisional 68k bsr.b $bff0
db 0x65, 0x20 ; 00BF82: provisional 68k bcs.b $bfa4
db 0x31, 0x20 ; 00BF84: provisional 68k move.w -(a0), -(a0)
db 0x6D, 0x65 ; 00BF86: provisional 68k blt.b $bfed
db 0x6D, 0x6F ; 00BF88: provisional 68k blt.b $bff9
db 0x72, 0x79 ; 00BF8A: provisional 68k moveq #$79, d1
db 0x00, 0x00, 0x32, 0x01 ; 00BF8C: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xFD, 0xEC ; 00BF90: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 00BF94: provisional 68k bcc.b $c004
db 0x64, 0x65 ; 00BF96: provisional 68k bcc.b $bffd
db 0x5F, 0x69, 0x6E, 0x69 ; 00BF98: provisional 68k subq.w #$7, $6e69(a1)
db 0x74, 0x69 ; 00BF9C: provisional 68k moveq #$69, d2
db 0x61, 0x6C ; 00BF9E: provisional 68k bsr.b $c00c
db 0x69, 0x73 ; 00BFA0: provisional 68k bvs.b $c015
db 0x65, 0x20 ; 00BFA2: provisional 68k bcs.b $bfc4
db 0x3A, 0x20 ; 00BFA4: provisional 68k move.w -(a0), d5
db 0x50, 0x72, 0x6F, 0x62, 0x6C, 0x65, 0x6D, 0x73 ; 00BFA6: provisional 68k addq.w #$8, ([$6c65, a2], $6d73)
db 0x20, 0x69, 0x6E, 0x20 ; 00BFAE: provisional 68k movea.l $6e20(a1), a0
db 0x76, 0x69 ; 00BFB2: provisional 68k moveq #$69, d3
db 0x64, 0x65 ; 00BFB4: provisional 68k bcc.b $c01b
db 0x6F, 0x20 ; 00BFB6: provisional 68k ble.b $bfd8
db 0x70, 0x6C ; 00BFB8: provisional 68k moveq #$6c, d0
db 0x61, 0x6E ; 00BFBA: provisional 68k bsr.b $c02a
db 0x65, 0x20 ; 00BFBC: provisional 68k bcs.b $bfde
db 0x32, 0x20 ; 00BFBE: provisional 68k move.w -(a0), d1
db 0x6D, 0x65 ; 00BFC0: provisional 68k blt.b $c027
db 0x6D, 0x6F ; 00BFC2: provisional 68k blt.b $c033
db 0x72, 0x79 ; 00BFC4: provisional 68k moveq #$79, d1
db 0x00, 0x00, 0x32, 0x01 ; 00BFC6: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xFD, 0xB2 ; 00BFCA: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 00BFCE: provisional 68k bcc.b $c03e
db 0x64, 0x65 ; 00BFD0: provisional 68k bcc.b $c037
