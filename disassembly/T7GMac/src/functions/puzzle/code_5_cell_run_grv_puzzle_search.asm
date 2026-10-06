; verified-role: Normalize 49 board bytes: ASCII 32h maps to 1, 42h maps to 2, and other bytes map to zero; dispatch search.
; Original native symbol: Infection; evidence file offset 0x8d56.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_run_grv_puzzle_search:
db 0x4E, 0x56, 0x00, 0x00 ; file 008D0A | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x18 ; file 008D0E | 68k movem.l d7/a3-a4, -(a7)
db 0x26, 0x6E, 0x00, 0x0C ; file 008D12 | 68k movea.l $c(a6), a3
db 0x7E, 0x00 ; file 008D16 | 68k moveq #$0, d7
db 0x60, 0x20 ; file 008D18 | 68k bra.b $15d4
db 0x49, 0xED, 0xDF, 0x36 ; file 008D1A | 68k lea.l -$20ca(a5), a4
db 0xD8, 0xC7 ; file 008D1E | 68k adda.w d7, a4
db 0x42, 0x14 ; file 008D20 | 68k clr.b (a4)
db 0x0C, 0x13, 0x00, 0x32 ; file 008D22 | 68k cmpi.b #$32, (a3)
db 0x66, 0x04 ; file 008D26 | 68k bne.b $15c6
db 0x18, 0xBC, 0x00, 0x01 ; file 008D28 | 68k move.b #$1, (a4)
db 0x0C, 0x13, 0x00, 0x42 ; file 008D2C | 68k cmpi.b #$42, (a3)
db 0x66, 0x04 ; file 008D30 | 68k bne.b $15d0
db 0x18, 0xBC, 0x00, 0x02 ; file 008D32 | 68k move.b #$2, (a4)
db 0x52, 0x8B ; file 008D36 | 68k addq.l #$1, a3
db 0x52, 0x47 ; file 008D38 | 68k addq.w #$1, d7
db 0x0C, 0x47, 0x00, 0x31 ; file 008D3A | 68k cmpi.w #$31, d7
db 0x6D, 0xDA ; file 008D3E | 68k blt.b $15b4
db 0x3F, 0x2E, 0x00, 0x0A ; file 008D40 | 68k move.w $a(a6), -(a7)
db 0x1F, 0x2E, 0x00, 0x08 ; file 008D44 | 68k move.b $8(a6), -(a7)
db 0x4E, 0xBA, 0x00, 0x18 ; file 008D48 | 68k jsr $15fc(pc)
db 0x4C, 0xEE, 0x18, 0x80, 0xFF, 0xF4 ; file 008D4C | 68k movem.l -$c(a6), d7/a3-a4
db 0x4E, 0x5E ; file 008D52 | 68k unlk a6
db 0x4E, 0x75 ; file 008D54 | 68k rts 
