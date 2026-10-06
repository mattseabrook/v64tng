; verified-role: Recolor occupied scratch-board neighbors and update old/new piece counters.
; Original native symbol: flip; evidence file offset 0x7b68.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_convert_adjacent_pieces:
db 0x4E, 0x56, 0x00, 0x00 ; file 007B1E | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x38 ; file 007B22 | 68k movem.l d7/a2-a4, -(a7)
db 0x30, 0x2E, 0x00, 0x08 ; file 007B26 | 68k move.w $8(a6), d0
db 0x28, 0x75, 0x05, 0x20, 0xE3, 0x14 ; file 007B2A | 68k movea.l $e314(a5, d0.w * 4), a4
db 0x12, 0x2E, 0x00, 0x0A ; file 007B30 | 68k move.b $a(a6), d1
db 0x49, 0xC1 ; file 007B34 | 68k extb.l d1
db 0x47, 0xED, 0xE5, 0x2F ; file 007B36 | 68k lea.l -$1ad1(a5), a3
db 0xD6, 0xC1 ; file 007B3A | 68k adda.w d1, a3
db 0x60, 0x1A ; file 007B3C | 68k bra.b $3f2
db 0x45, 0xED, 0xE4, 0xFF ; file 007B3E | 68k lea.l -$1b01(a5), a2
db 0xD4, 0xC7 ; file 007B42 | 68k adda.w d7, a2
db 0x4A, 0x12 ; file 007B44 | 68k tst.b (a2)
db 0x6F, 0x10 ; file 007B46 | 68k ble.b $3f2
db 0x10, 0x12 ; file 007B48 | 68k move.b (a2), d0
db 0x49, 0xC0 ; file 007B4A | 68k extb.l d0
db 0x53, 0x35, 0x01, 0x20, 0xE5, 0x2F ; file 007B4C | 68k subq.b #$1, $e52f(a5, d0.w)
db 0x14, 0xAE, 0x00, 0x0A ; file 007B52 | 68k move.b $a(a6), (a2)
db 0x52, 0x13 ; file 007B56 | 68k addq.b #$1, (a3)
db 0x1E, 0x1C ; file 007B58 | 68k move.b (a4)+, d7
db 0x49, 0xC7 ; file 007B5A | 68k extb.l d7
db 0x4A, 0x47 ; file 007B5C | 68k tst.w d7
db 0x6C, 0xDE ; file 007B5E | 68k bge.b $3d8
db 0x4C, 0xDF, 0x1C, 0x80 ; file 007B60 | 68k movem.l (a7)+, d7/a2-a4
db 0x4E, 0x5E ; file 007B64 | 68k unlk a6
db 0x4E, 0x75 ; file 007B66 | 68k rts 
