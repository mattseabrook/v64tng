; verified-role: Native DoAEOpenDocuments routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoAEOpenDocuments; evidence file offset 0x5162.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_do_aeopen_documents:
db 0x4E, 0x56, 0xFF, 0xFE ; file 00511C | 68k link.w a6, #$fffe
db 0x42, 0xAD, 0xDC, 0xA8 ; file 005120 | 68k clr.l -$2358(a5)
db 0x42, 0x67 ; file 005124 | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 005126 | 68k move.l $c(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x10 ; file 00512A | 68k move.l $10(a6), -(a7)
db 0x4E, 0xBA, 0x01, 0x12 ; file 00512E | 68k jsr $41da(pc)
db 0x3D, 0x40, 0xFF, 0xFE ; file 005132 | 68k move.w d0, -$2(a6)
db 0x42, 0x57 ; file 005136 | 68k clr.w (a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 005138 | 68k move.l $c(a6), -(a7)
db 0x2F, 0x3C, 0x65, 0x72, 0x72, 0x6E ; file 00513C | 68k move.l #$6572726e, -(a7)
db 0x2F, 0x3C, 0x73, 0x68, 0x6F, 0x72 ; file 005142 | 68k move.l #$73686f72, -(a7)
db 0x48, 0x6E, 0xFF, 0xFE ; file 005148 | 68k pea.l -$2(a6)
db 0x48, 0x78, 0x00, 0x02 ; file 00514C | 68k pea.l $2.w
db 0x30, 0x3C, 0x0A, 0x0F ; file 005150 | 68k move.w #$a0f, d0
db 0xA8, 0x16 ; file 005154 | 68k dc.w $a816
db 0x3D, 0x6E, 0xFF, 0xFE, 0x00, 0x14 ; file 005156 | 68k move.w -$2(a6), $14(a6)
db 0x4E, 0x5E ; file 00515C | 68k unlk a6
db 0x4E, 0x74, 0x00, 0x0C ; file 00515E | 68k rtd #$c
