; verified-role: Native GetKFreeSpace routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetKFreeSpace; evidence file offset 0x681a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_kfree_space:
db 0x4E, 0x56, 0xFF, 0x86 ; file 0067D6 | 68k link.w a6, #$ff86
db 0x2F, 0x07 ; file 0067DA | 68k move.l d7, -(a7)
db 0x42, 0xAE, 0xFF, 0x98 ; file 0067DC | 68k clr.l -$68(a6)
db 0x3D, 0x6E, 0x00, 0x08, 0xFF, 0x9C ; file 0067E0 | 68k move.w $8(a6), -$64(a6)
db 0x42, 0x6E, 0xFF, 0xA2 ; file 0067E6 | 68k clr.w -$5e(a6)
db 0x42, 0x67 ; file 0067EA | 68k clr.w -(a7)
db 0x48, 0x6E, 0xFF, 0x86 ; file 0067EC | 68k pea.l -$7a(a6)
db 0x42, 0x27 ; file 0067F0 | 68k clr.b -(a7)
db 0x4E, 0xAD, 0x02, 0x7A ; file 0067F2 | 68k jsr $27a(a5)
db 0x3E, 0x1F ; file 0067F6 | 68k move.w (a7)+, d7
db 0x4A, 0x47 ; file 0067F8 | 68k tst.w d7
db 0x66, 0x16 ; file 0067FA | 68k bne.b $57aa
db 0x70, 0x00 ; file 0067FC | 68k moveq #$0, d0
db 0x30, 0x2E, 0xFF, 0xC4 ; file 0067FE | 68k move.w -$3c(a6), d0
db 0x4C, 0x2E, 0x00, 0x00, 0xFF, 0xB6 ; file 006802 | 68k mulu.l -$4a(a6), d0
db 0x4C, 0x7C, 0x08, 0x00, 0x00, 0x00, 0x04, 0x00 ; file 006808 | 68k divs.l #$400, d0
db 0x60, 0x02 ; file 006810 | 68k bra.b $57ac
db 0x70, 0xFF ; file 006812 | 68k moveq #$ff, d0
db 0x2E, 0x1F ; file 006814 | 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 006816 | 68k unlk a6
db 0x4E, 0x75 ; file 006818 | 68k rts 
