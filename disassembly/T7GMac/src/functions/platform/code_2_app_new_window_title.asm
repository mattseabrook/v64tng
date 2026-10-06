; verified-role: Native AppNewWindowTitle routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppNewWindowTitle; evidence file offset 0x769a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_new_window_title:
db 0x4E, 0x56, 0xFF, 0x00 ; file 007666 | 68k link.w a6, #$ff00
db 0x2F, 0x0C ; file 00766A | 68k move.l a4, -(a7)
db 0x42, 0xA7 ; file 00766C | 68k clr.l -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 00766E | 68k move.l $8(a6), -(a7)
db 0xA9, 0x17 ; file 007672 | 68k dc.w $a917
db 0x28, 0x5F ; file 007674 | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 007676 | 68k move.l a4, d0
db 0x67, 0x1A ; file 007678 | 68k beq.b $662c
db 0x20, 0x54 ; file 00767A | 68k movea.l (a4), a0
db 0x48, 0x68, 0x00, 0x0A ; file 00767C | 68k pea.l $a(a0)
db 0x48, 0x6E, 0xFF, 0x00 ; file 007680 | 68k pea.l -$100(a6)
db 0x4E, 0xAD, 0x01, 0x9A ; file 007684 | 68k jsr $19a(a5)
db 0x2E, 0xAE, 0x00, 0x08 ; file 007688 | 68k move.l $8(a6), (a7)
db 0x48, 0x6E, 0xFF, 0x00 ; file 00768C | 68k pea.l -$100(a6)
db 0xA9, 0x1A ; file 007690 | 68k dc.w $a91a
db 0x58, 0x8F ; file 007692 | 68k addq.l #$4, a7
db 0x28, 0x5F ; file 007694 | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 007696 | 68k unlk a6
db 0x4E, 0x75 ; file 007698 | 68k rts 
