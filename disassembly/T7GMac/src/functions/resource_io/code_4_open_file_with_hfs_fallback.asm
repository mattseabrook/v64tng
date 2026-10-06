; verified-role: Build a file parameter block, try the hierarchical open selector, and fall back to trap A000.
; Original native symbol: None; evidence file offset 0xf08c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_open_file_with_hfs_fallback:
db 0x4E, 0x56, 0xFF, 0xCE ; file 00F08C | 68k link.w a6, #$ffce
db 0x20, 0x4F ; file 00F090 | 68k movea.l a7, a0
db 0x21, 0x6E, 0x00, 0x0E, 0x00, 0x12 ; file 00F092 | 68k move.l $e(a6), $12(a0)
db 0x31, 0x6E, 0x00, 0x0C, 0x00, 0x16 ; file 00F098 | 68k move.w $c(a6), $16(a0)
db 0x42, 0x28, 0x00, 0x1A ; file 00F09E | 68k clr.b $1a(a0)
db 0x42, 0x28, 0x00, 0x1B ; file 00F0A2 | 68k clr.b $1b(a0)
db 0x42, 0xA8, 0x00, 0x1C ; file 00F0A6 | 68k clr.l $1c(a0)
db 0x70, 0x1A ; file 00F0AA | 68k moveq #$1a, d0
db 0xA0, 0x60 ; file 00F0AC | 68k dc.w $a060
db 0x0C, 0x40, 0xFF, 0xCE ; file 00F0AE | 68k cmpi.w #$ffce, d0
db 0x66, 0x02 ; file 00F0B2 | 68k bne.b $3e2
db 0xA0, 0x00 ; file 00F0B4 | 68k dc.w $a000
db 0x22, 0x6E, 0x00, 0x08 ; file 00F0B6 | 68k movea.l $8(a6), a1
db 0x32, 0xA8, 0x00, 0x18 ; file 00F0BA | 68k move.w $18(a0), (a1)
db 0x3D, 0x40, 0x00, 0x12 ; file 00F0BE | 68k move.w d0, $12(a6)
db 0x4E, 0x5E ; file 00F0C2 | 68k unlk a6
db 0x20, 0x5F ; file 00F0C4 | 68k movea.l (a7)+, a0
db 0x4F, 0xEF, 0x00, 0x0A ; file 00F0C6 | 68k lea.l $a(a7), a7
db 0x4E, 0xD0 ; file 00F0CA | 68k jmp (a0)
