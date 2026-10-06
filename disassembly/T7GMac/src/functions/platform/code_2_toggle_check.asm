; verified-role: Native ToggleCheck routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ToggleCheck; evidence file offset 0x73da.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_toggle_check:
db 0x4E, 0x56, 0xFF, 0xF2 ; file 0073A4 | 68k link.w a6, #$fff2
db 0x2F, 0x2E, 0x00, 0x08 ; file 0073A8 | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 0073AC | 68k move.w $c(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0xFE ; file 0073B0 | 68k pea.l -$2(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 0073B4 | 68k pea.l -$6(a6)
db 0x48, 0x6E, 0xFF, 0xF2 ; file 0073B8 | 68k pea.l -$e(a6)
db 0xA9, 0x8D ; file 0073BC | 68k dc.w $a98d
db 0x2F, 0x2E, 0xFF, 0xFA ; file 0073BE | 68k move.l -$6(a6), -(a7)
db 0x42, 0x67 ; file 0073C2 | 68k clr.w -(a7)
db 0x2F, 0x2E, 0xFF, 0xFA ; file 0073C4 | 68k move.l -$6(a6), -(a7)
db 0xA9, 0x60 ; file 0073C8 | 68k dc.w $a960
db 0x4A, 0x5F ; file 0073CA | 68k tst.w (a7)+
db 0x57, 0xC0 ; file 0073CC | 68k seq.b d0
db 0x44, 0x00 ; file 0073CE | 68k neg.b d0
db 0x49, 0xC0 ; file 0073D0 | 68k extb.l d0
db 0x3F, 0x00 ; file 0073D2 | 68k move.w d0, -(a7)
db 0xA9, 0x63 ; file 0073D4 | 68k dc.w $a963
db 0x4E, 0x5E ; file 0073D6 | 68k unlk a6
db 0x4E, 0x75 ; file 0073D8 | 68k rts 
