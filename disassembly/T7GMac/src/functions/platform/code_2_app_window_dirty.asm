; verified-role: Native AppWindowDirty routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppWindowDirty; evidence file offset 0x76d4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_window_dirty:
db 0x4E, 0x56, 0x00, 0x00 ; file 0076AE | 68k link.w a6, #$0
db 0x2F, 0x0C ; file 0076B2 | 68k move.l a4, -(a7)
db 0x42, 0xA7 ; file 0076B4 | 68k clr.l -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 0076B6 | 68k move.l $8(a6), -(a7)
db 0xA9, 0x17 ; file 0076BA | 68k dc.w $a917
db 0x28, 0x5F ; file 0076BC | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 0076BE | 68k move.l a4, d0
db 0x67, 0x08 ; file 0076C0 | 68k beq.b $6662
db 0x2F, 0x0C ; file 0076C2 | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0xDF, 0x76 ; file 0076C4 | 68k jsr $45d4(pc)
db 0x60, 0x02 ; file 0076C8 | 68k bra.b $6664
db 0x70, 0x00 ; file 0076CA | 68k moveq #$0, d0
db 0x28, 0x6E, 0xFF, 0xFC ; file 0076CC | 68k movea.l -$4(a6), a4
db 0x4E, 0x5E ; file 0076D0 | 68k unlk a6
db 0x4E, 0x75 ; file 0076D2 | 68k rts 
