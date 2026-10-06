; verified-role: Native MissedAnyParameters routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: MissedAnyParameters; evidence file offset 0x508e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_missed_any_parameters:
db 0x4E, 0x56, 0xFF, 0xE4 ; file 00503C | 68k link.w a6, #$ffe4
db 0x2F, 0x07 ; file 005040 | 68k move.l d7, -(a7)
db 0x42, 0x67 ; file 005042 | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 005044 | 68k move.l $8(a6), -(a7)
db 0x2F, 0x3C, 0x6D, 0x69, 0x73, 0x73 ; file 005048 | 68k move.l #$6d697373, -(a7)
db 0x2F, 0x3C, 0x6B, 0x65, 0x79, 0x77 ; file 00504E | 68k move.l #$6b657977, -(a7)
db 0x48, 0x6E, 0xFF, 0xFC ; file 005054 | 68k pea.l -$4(a6)
db 0x48, 0x6E, 0xFF, 0xF8 ; file 005058 | 68k pea.l -$8(a6)
db 0x48, 0x78, 0x00, 0x04 ; file 00505C | 68k pea.l $4.w
db 0x48, 0x6E, 0xFF, 0xF4 ; file 005060 | 68k pea.l -$c(a6)
db 0x30, 0x3C, 0x0E, 0x15 ; file 005064 | 68k move.w #$e15, d0
db 0xA8, 0x16 ; file 005068 | 68k dc.w $a816
db 0x3E, 0x1F ; file 00506A | 68k move.w (a7)+, d7
db 0x4A, 0x47 ; file 00506C | 68k tst.w d7
db 0x66, 0x10 ; file 00506E | 68k bne.b $4018
db 0x2D, 0x6E, 0xFF, 0xFC, 0xFF, 0xE6 ; file 005070 | 68k move.l -$4(a6), -$1a(a6)
db 0x2D, 0x6E, 0xFF, 0xF8, 0xFF, 0xEE ; file 005076 | 68k move.l -$8(a6), -$12(a6)
db 0x3E, 0x3C, 0xF9, 0x54 ; file 00507C | 68k move.w #$f954, d7
db 0x0C, 0x47, 0xF9, 0x5B ; file 005080 | 68k cmpi.w #$f95b, d7
db 0x56, 0xC0 ; file 005084 | 68k sne.b d0
db 0x44, 0x00 ; file 005086 | 68k neg.b d0
db 0x2E, 0x1F ; file 005088 | 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 00508A | 68k unlk a6
db 0x4E, 0x75 ; file 00508C | 68k rts 
