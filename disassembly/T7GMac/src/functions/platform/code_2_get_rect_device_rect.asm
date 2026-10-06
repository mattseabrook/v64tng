; verified-role: Native GetRectDeviceRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetRectDeviceRect; evidence file offset 0x6950.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_rect_device_rect:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 00690C | 68k link.w a6, #$fff8
db 0x4A, 0x6D, 0xDE, 0x0E ; file 006910 | 68k tst.w -$21f2(a5)
db 0x6F, 0x20 ; file 006914 | 68k ble.b $58ce
db 0x2F, 0x2E, 0x00, 0x10 ; file 006916 | 68k move.l $10(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 00691A | 68k move.l $c(a6), -(a7)
db 0x4E, 0xBA, 0xFF, 0x60 ; file 00691E | 68k jsr $5818(pc)
db 0x20, 0x40 ; file 006922 | 68k movea.l d0, a0
db 0x20, 0x50 ; file 006924 | 68k movea.l (a0), a0
db 0x22, 0x6E, 0x00, 0x08 ; file 006926 | 68k movea.l $8(a6), a1
db 0x22, 0xA8, 0x00, 0x22 ; file 00692A | 68k move.l $22(a0), (a1)
db 0x23, 0x68, 0x00, 0x26, 0x00, 0x04 ; file 00692E | 68k move.l $26(a0), $4(a1)
db 0x60, 0x16 ; file 006934 | 68k bra.b $58e4
db 0x48, 0x6E, 0xFF, 0xF8 ; file 006936 | 68k pea.l -$8(a6)
db 0x4E, 0xBA, 0xFE, 0xEE ; file 00693A | 68k jsr $57c2(pc)
db 0x20, 0x6E, 0x00, 0x08 ; file 00693E | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xF8 ; file 006942 | 68k move.l -$8(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xFC, 0x00, 0x04 ; file 006946 | 68k move.l -$4(a6), $4(a0)
db 0x4E, 0x5E ; file 00694C | 68k unlk a6
db 0x4E, 0x75 ; file 00694E | 68k rts 
