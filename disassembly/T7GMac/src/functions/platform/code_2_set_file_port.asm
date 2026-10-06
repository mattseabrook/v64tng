; verified-role: Native SetFilePort routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SetFilePort; evidence file offset 0x7754.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_set_file_port:
db 0x4E, 0x56, 0xFF, 0xFC ; file 007736 | 68k link.w a6, #$fffc
db 0x48, 0x6E, 0xFF, 0xFC ; file 00773A | 68k pea.l -$4(a6)
db 0xA8, 0x74 ; file 00773E | 68k dc.w $a874
db 0x20, 0x6E, 0x00, 0x08 ; file 007740 | 68k movea.l $8(a6), a0
db 0x20, 0x50 ; file 007744 | 68k movea.l (a0), a0
db 0x2F, 0x28, 0x00, 0x4A ; file 007746 | 68k move.l $4a(a0), -(a7)
db 0xA8, 0x73 ; file 00774A | 68k dc.w $a873
db 0x20, 0x2E, 0xFF, 0xFC ; file 00774C | 68k move.l -$4(a6), d0
db 0x4E, 0x5E ; file 007750 | 68k unlk a6
db 0x4E, 0x75 ; file 007752 | 68k rts 
