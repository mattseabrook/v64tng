; verified-role: Native GetWindowDeviceRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetWindowDeviceRect; evidence file offset 0x6bea.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_window_device_rect:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 006BAA | 68k link.w a6, #$fff8
db 0x4A, 0x6D, 0xDE, 0x0E ; file 006BAE | 68k tst.w -$21f2(a5)
db 0x6F, 0x1C ; file 006BB2 | 68k ble.b $5b68
db 0x2F, 0x2E, 0x00, 0x0C ; file 006BB4 | 68k move.l $c(a6), -(a7)
db 0x4E, 0xBA, 0xFF, 0xBE ; file 006BB8 | 68k jsr $5b10(pc)
db 0x20, 0x40 ; file 006BBC | 68k movea.l d0, a0
db 0x20, 0x50 ; file 006BBE | 68k movea.l (a0), a0
db 0x22, 0x6E, 0x00, 0x08 ; file 006BC0 | 68k movea.l $8(a6), a1
db 0x22, 0xA8, 0x00, 0x22 ; file 006BC4 | 68k move.l $22(a0), (a1)
db 0x23, 0x68, 0x00, 0x26, 0x00, 0x04 ; file 006BC8 | 68k move.l $26(a0), $4(a1)
db 0x60, 0x16 ; file 006BCE | 68k bra.b $5b7e
db 0x48, 0x6E, 0xFF, 0xF8 ; file 006BD0 | 68k pea.l -$8(a6)
db 0x4E, 0xBA, 0xFC, 0x54 ; file 006BD4 | 68k jsr $57c2(pc)
db 0x20, 0x6E, 0x00, 0x08 ; file 006BD8 | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xF8 ; file 006BDC | 68k move.l -$8(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xFC, 0x00, 0x04 ; file 006BE0 | 68k move.l -$4(a6), $4(a0)
db 0x4E, 0x5E ; file 006BE6 | 68k unlk a6
db 0x4E, 0x75 ; file 006BE8 | 68k rts 
