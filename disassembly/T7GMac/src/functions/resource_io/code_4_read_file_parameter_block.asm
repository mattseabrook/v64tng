; verified-role: Build a file read parameter block, invoke A002, and update the caller's transferred-byte count.
; Original native symbol: None; evidence file offset 0xf0e6.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_read_file_parameter_block:
db 0x51, 0xC1 ; file 00F0E6 | 68k sf.b d1
db 0x60, 0x02 ; file 00F0E8 | 68k bra.b $418
db 0x50, 0xC1 ; file 00F0EA | 68k st.b d1
db 0x4E, 0x56, 0xFF, 0xCE ; file 00F0EC | 68k link.w a6, #$ffce
db 0x20, 0x4F ; file 00F0F0 | 68k movea.l a7, a0
db 0x21, 0x6E, 0x00, 0x08, 0x00, 0x20 ; file 00F0F2 | 68k move.l $8(a6), $20(a0)
db 0x31, 0x6E, 0x00, 0x10, 0x00, 0x18 ; file 00F0F8 | 68k move.w $10(a6), $18(a0)
db 0x22, 0x6E, 0x00, 0x0C ; file 00F0FE | 68k movea.l $c(a6), a1
db 0x21, 0x51, 0x00, 0x24 ; file 00F102 | 68k move.l (a1), $24(a0)
db 0x42, 0x68, 0x00, 0x2C ; file 00F106 | 68k clr.w $2c(a0)
db 0x42, 0xA8, 0x00, 0x2E ; file 00F10A | 68k clr.l $2e(a0)
db 0x4A, 0x01 ; file 00F10E | 68k tst.b d1
db 0x66, 0x04 ; file 00F110 | 68k bne.b $442
db 0xA0, 0x02 ; file 00F112 | 68k dc.w $a002
db 0x60, 0x02 ; file 00F114 | 68k bra.b $444
db 0xA0, 0x03 ; file 00F116 | 68k dc.w $a003
db 0x3D, 0x40, 0x00, 0x12 ; file 00F118 | 68k move.w d0, $12(a6)
db 0x22, 0x6E, 0x00, 0x0C ; file 00F11C | 68k movea.l $c(a6), a1
db 0x22, 0xA8, 0x00, 0x28 ; file 00F120 | 68k move.l $28(a0), (a1)
db 0x4E, 0x5E ; file 00F124 | 68k unlk a6
db 0x22, 0x5F ; file 00F126 | 68k movea.l (a7)+, a1
db 0x4F, 0xEF, 0x00, 0x0A ; file 00F128 | 68k lea.l $a(a7), a7
db 0x4E, 0xD1 ; file 00F12C | 68k jmp (a1)
