; recovered-symbol-candidate: Native InitBuffers routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: InitBuffers; evidence file offset 0x97f0.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_init_buffers:
db 0x4E, 0x56, 0xFF, 0xFC ; file 009798 | 68k link.w a6, #$fffc
db 0x2B, 0x7C, 0x00, 0x00, 0xCB, 0x20, 0xF3, 0xC0 ; file 00979C | 68k move.l #$cb20, -$c40(a5)
db 0x42, 0x6D, 0xF3, 0xC8 ; file 0097A4 | 68k clr.w -$c38(a5)
db 0xA0, 0x61 ; file 0097A8 | 68k dc.w $a061
db 0x2D, 0x40, 0xFF, 0xFC ; file 0097AA | 68k move.l d0, -$4(a6)
db 0xA0, 0x61 ; file 0097AE | 68k dc.w $a061
db 0x0C, 0x80, 0x00, 0x0B, 0xC7, 0xA0 ; file 0097B0 | 68k cmpi.l #$bc7a0, d0
db 0x6C, 0x04 ; file 0097B6 | 68k bge.b $2056
db 0x70, 0x00 ; file 0097B8 | 68k moveq #$0, d0
db 0x60, 0x30 ; file 0097BA | 68k bra.b $2086
db 0xA0, 0x61 ; file 0097BC | 68k dc.w $a061
db 0x06, 0x80, 0xFF, 0xF5, 0x03, 0x80 ; file 0097BE | 68k addi.l #$fff50380, d0
db 0x4C, 0x6D, 0x08, 0x00, 0xF3, 0xC0 ; file 0097C4 | 68k divs.l -$c40(a5), d0
db 0x3B, 0x40, 0xF3, 0xC8 ; file 0097CA | 68k move.w d0, -$c38(a5)
db 0x72, 0x00 ; file 0097CE | 68k moveq #$0, d1
db 0x32, 0x00 ; file 0097D0 | 68k move.w d0, d1
db 0x4C, 0x2D, 0x10, 0x00, 0xF3, 0xC0 ; file 0097D2 | 68k mulu.l -$c40(a5), d1
db 0x20, 0x01 ; file 0097D8 | 68k move.l d1, d0
db 0xA3, 0x1E ; file 0097DA | 68k dc.w $a31e
db 0x2B, 0x48, 0xF3, 0xC4 ; file 0097DC | 68k move.l a0, -$c3c(a5)
db 0x20, 0x08 ; file 0097E0 | 68k move.l a0, d0
db 0x66, 0x04 ; file 0097E2 | 68k bne.b $2082
db 0x70, 0x00 ; file 0097E4 | 68k moveq #$0, d0
db 0x60, 0x04 ; file 0097E6 | 68k bra.b $2086
db 0x42, 0x6D, 0xF3, 0xCA ; file 0097E8 | 68k clr.w -$c36(a5)
db 0x4E, 0x5E ; file 0097EC | 68k unlk a6
db 0x4E, 0x75 ; file 0097EE | 68k rts 
