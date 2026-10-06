; verified-role: Native InitScript routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: InitScript; evidence file offset 0xb7bc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_init_script:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 00B770 | 68k link.w a6, #$fff8
db 0x4E, 0xBA, 0xFF, 0xAA ; file 00B774 | 68k jsr $3fba(pc)
db 0x4A, 0x40 ; file 00B778 | 68k tst.w d0
db 0x66, 0x04 ; file 00B77A | 68k bne.b $401a
db 0x70, 0x00 ; file 00B77C | 68k moveq #$0, d0
db 0x60, 0x38 ; file 00B77E | 68k bra.b $4052
db 0x20, 0x3C, 0x00, 0x00, 0x08, 0x00 ; file 00B780 | 68k move.l #$800, d0
db 0xA3, 0x1E ; file 00B786 | 68k dc.w $a31e
db 0x2B, 0x48, 0xF7, 0xA0 ; file 00B788 | 68k move.l a0, -$860(a5)
db 0x20, 0x08 ; file 00B78C | 68k move.l a0, d0
db 0x66, 0x04 ; file 00B78E | 68k bne.b $402e
db 0x70, 0x00 ; file 00B790 | 68k moveq #$0, d0
db 0x60, 0x24 ; file 00B792 | 68k bra.b $4052
db 0x3B, 0x7C, 0xFF, 0xFE, 0xF7, 0xBA ; file 00B794 | 68k move.w #$fffe, -$846(a5)
db 0x4E, 0xBA, 0x00, 0x2E ; file 00B79A | 68k jsr $4064(pc)
db 0x4A, 0x40 ; file 00B79E | 68k tst.w d0
db 0x66, 0x04 ; file 00B7A0 | 68k bne.b $4040
db 0x70, 0x00 ; file 00B7A2 | 68k moveq #$0, d0
db 0x60, 0x12 ; file 00B7A4 | 68k bra.b $4052
db 0x4A, 0x6D, 0xFC, 0xC8 ; file 00B7A6 | 68k tst.w -$338(a5)
db 0x67, 0x0A ; file 00B7AA | 68k beq.b $4050
db 0x20, 0x6D, 0xF7, 0xA0 ; file 00B7AC | 68k movea.l -$860(a5), a0
db 0x11, 0x7C, 0x00, 0x01, 0x01, 0x05 ; file 00B7B0 | 68k move.b #$1, $105(a0)
db 0x70, 0x01 ; file 00B7B6 | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 00B7B8 | 68k unlk a6
db 0x4E, 0x75 ; file 00B7BA | 68k rts 
