; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FBD6–00FC89, inclusive.
cdi_t7g_entry_00fbd6:
db 0x4A, 0xAE, 0xC0, 0xF6 ; 00FBD6: provisional 68k tst.l -$3f0a(a6)
db 0x67, 0x1C ; 00FBDA: provisional 68k beq.b $fbf8
db 0x20, 0x6E, 0xC0, 0xF6 ; 00FBDC: provisional 68k movea.l -$3f0a(a6), a0
db 0x2D, 0x68, 0x00, 0x22, 0xC0, 0xF6 ; 00FBE0: provisional 68k move.l $22(a0), -$3f0a(a6)
db 0x42, 0xA8, 0x00, 0x22 ; 00FBE6: provisional 68k clr.l $22(a0)
db 0x42, 0xA8, 0x00, 0x1E ; 00FBEA: provisional 68k clr.l $1e(a0)
db 0x42, 0xA8, 0x00, 0x16 ; 00FBEE: provisional 68k clr.l $16(a0)
db 0x42, 0xA8, 0x00, 0x12 ; 00FBF2: provisional 68k clr.l $12(a0)
db 0x4E, 0x75 ; 00FBF6: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 00FBF8: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xC1, 0x7E ; 00FBFE: provisional 68k bsr.w $bd7e
db 0x67, 0x65 ; 00FC02: provisional 68k beq.b $fc69
db 0x74, 0x5F ; 00FC04: provisional 68k moveq #$5f, d2
db 0x68, 0x73 ; 00FC06: provisional 68k bvc.b $fc7b
db 0x70, 0x6F ; 00FC08: provisional 68k moveq #$6f, d0
db 0x74, 0x20 ; 00FC0A: provisional 68k moveq #$20, d2
db 0x3A, 0x20 ; 00FC0C: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 00FC0E: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 00FC10: provisional 68k bgt.b $fc32
db 0x6F, 0x75 ; 00FC12: provisional 68k ble.b $fc89
db 0x74, 0x20 ; 00FC14: provisional 68k moveq #$20, d2
db 0x6F, 0x66 ; 00FC16: provisional 68k ble.b $fc7e
db 0x20, 0x68, 0x6F, 0x74 ; 00FC18: provisional 68k movea.l $6f74(a0), a0
db 0x73, 0x70 ; file 00FC1C
db 0x6F, 0x74 ; 00FC1E: provisional 68k ble.b $fc94
db 0x73, 0x21 ; file 00FC20
db 0x00, 0x00, 0x48, 0xE7 ; 00FC22: provisional 68k ori.b #$e7, d0
db 0xFF, 0xFC ; 00FC26: provisional 68k dc.w $fffc
db 0x61, 0x00, 0xC1, 0x0C ; 00FC28: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xC1, 0x08 ; 00FC2C: provisional 68k bsr.w $bd36
db 0x48, 0x7A, 0x00, 0x08 ; 00FC30: provisional 68k pea.l $fc3a(pc)
db 0x61, 0x00, 0xC1, 0x1A ; 00FC34: provisional 68k bsr.w $bd50
db 0x60, 0x14 ; 00FC38: provisional 68k bra.b $fc4e
db 0x48, 0x6F, 0x74, 0x53 ; 00FC3A: provisional 68k pea.l $7453(a7)
db 0x70, 0x6F ; 00FC3E: provisional 68k moveq #$6f, d0
db 0x74, 0x20 ; 00FC40: provisional 68k moveq #$20, d2
db 0x46, 0x72, 0x65, 0x65, 0x20, 0x4C ; 00FC42: provisional 68k not.w ([$204c, a2])
db 0x69, 0x73 ; 00FC48: provisional 68k bvs.b $fcbd
db 0x74, 0x0D ; 00FC4A: provisional 68k moveq #$d, d2
db 0x0A, 0x00, 0x20, 0x2E ; 00FC4C: provisional 68k eori.b #$2e, d0
db 0xC0, 0xF6, 0x20, 0x40 ; 00FC50: provisional 68k mulu.w $40(a6, d2.w), d0
db 0x61, 0x00, 0xFF, 0x6C ; 00FC54: provisional 68k bsr.w $fbc2
db 0x42, 0xE7 ; 00FC58: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00FC5A: provisional 68k pea.l $fc64(pc)
db 0x61, 0x00, 0xC0, 0xF0 ; 00FC5E: provisional 68k bsr.w $bd50
db 0x60, 0x06 ; 00FC62: provisional 68k bra.b $fc6a
db 0x69, 0x64 ; 00FC64: provisional 68k bvs.b $fcca
db 0x20, 0x3D ; file 00FC66
db 0x20, 0x00 ; 00FC68: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 00FC6A: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xC0, 0x30 ; 00FC6C: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00FC70: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xC0, 0xC2 ; 00FC72: provisional 68k bsr.w $bd36
db 0x20, 0x28, 0x00, 0x22 ; 00FC76: provisional 68k move.l $22(a0), d0
db 0x66, 0xD6 ; 00FC7A: provisional 68k bne.b $fc52
db 0x61, 0x00, 0xC0, 0xB8 ; 00FC7C: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xC0, 0xB4 ; 00FC80: provisional 68k bsr.w $bd36
db 0x4C, 0xDF, 0x3F, 0xFF ; 00FC84: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00FC88: provisional 68k rts 
