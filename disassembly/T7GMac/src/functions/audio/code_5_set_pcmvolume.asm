; recovered-symbol-candidate: Native SetPCMVolume routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SetPCMVolume; evidence file offset 0xbaf4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_set_pcmvolume:
db 0x4E, 0x56, 0xFF, 0xF6 ; file 00BACE | 68k link.w a6, #$fff6
db 0x3D, 0x7C, 0x00, 0x2B, 0xFF, 0xF6 ; file 00BAD2 | 68k move.w #$2b, -$a(a6)
db 0x3D, 0x6E, 0x00, 0x08, 0xFF, 0xF8 ; file 00BAD8 | 68k move.w $8(a6), -$8(a6)
db 0x42, 0xAE, 0xFF, 0xFA ; file 00BADE | 68k clr.l -$6(a6)
db 0x42, 0x67 ; file 00BAE2 | 68k clr.w -(a7)
db 0x2F, 0x2D, 0xF8, 0xA4 ; file 00BAE4 | 68k move.l -$75c(a5), -(a7)
db 0x48, 0x6E, 0xFF, 0xF6 ; file 00BAE8 | 68k pea.l -$a(a6)
db 0xA8, 0x04 ; file 00BAEC | 68k dc.w $a804
db 0x70, 0x01 ; file 00BAEE | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 00BAF0 | 68k unlk a6
db 0x4E, 0x75 ; file 00BAF2 | 68k rts 
