; verified-role: Copy 49 cells and four counters, apply the move, and convert occupied adjacent cells.
; Original native symbol: makenuboard; evidence file offset 0x7fb2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_apply_move_to_scratch_board:
db 0x4E, 0x56, 0x00, 0x00 ; file 007F4A | 68k link.w a6, #$0
db 0x48, 0xE7, 0x03, 0x08 ; file 007F4E | 68k movem.l d6-d7/a4, -(a7)
db 0x1C, 0x2E, 0x00, 0x08 ; file 007F52 | 68k move.b $8(a6), d6
db 0x7E, 0x00 ; file 007F56 | 68k moveq #$0, d7
db 0x60, 0x0C ; file 007F58 | 68k bra.b $800
db 0x1B, 0xB5, 0x71, 0x20, 0xDF, 0x36, 0x71, 0x20, 0xE4, 0xFF ; file 007F5A | 68k move.b $df36(a5, d7.w), $e4ff(a5, d7.w)
db 0x52, 0x47 ; file 007F64 | 68k addq.w #$1, d7
db 0x0C, 0x47, 0x00, 0x35 ; file 007F66 | 68k cmpi.w #$35, d7
db 0x6D, 0xEE ; file 007F6A | 68k blt.b $7f4
db 0x10, 0x2D, 0xDF, 0x6C ; file 007F6C | 68k move.b -$2094(a5), d0
db 0x49, 0xC0 ; file 007F70 | 68k extb.l d0
db 0x1B, 0x86, 0x09, 0x20, 0xE4, 0xFF ; file 007F72 | 68k move.b d6, $e4ff(a5, d0.l)
db 0x10, 0x06 ; file 007F78 | 68k move.b d6, d0
db 0x49, 0xC0 ; file 007F7A | 68k extb.l d0
db 0x49, 0xED, 0xE5, 0x2F ; file 007F7C | 68k lea.l -$1ad1(a5), a4
db 0xD8, 0xC0 ; file 007F80 | 68k adda.w d0, a4
db 0x52, 0x14 ; file 007F82 | 68k addq.b #$1, (a4)
db 0x0C, 0x2D, 0x00, 0x02, 0xDF, 0x6D ; file 007F84 | 68k cmpi.b #$2, -$2093(a5)
db 0x66, 0x0E ; file 007F8A | 68k bne.b $834
db 0x10, 0x2D, 0xDF, 0x6B ; file 007F8C | 68k move.b -$2095(a5), d0
db 0x49, 0xC0 ; file 007F90 | 68k extb.l d0
db 0x42, 0x35, 0x09, 0x20, 0xE4, 0xFF ; file 007F92 | 68k clr.b $e4ff(a5, d0.l)
db 0x53, 0x14 ; file 007F98 | 68k subq.b #$1, (a4)
db 0x1F, 0x06 ; file 007F9A | 68k move.b d6, -(a7)
db 0x10, 0x2D, 0xDF, 0x6C ; file 007F9C | 68k move.b -$2094(a5), d0
db 0x49, 0xC0 ; file 007FA0 | 68k extb.l d0
db 0x3F, 0x00 ; file 007FA2 | 68k move.w d0, -(a7)
db 0x4E, 0xBA, 0xFB, 0x78 ; file 007FA4 | 68k jsr $3b8(pc)
db 0x4C, 0xEE, 0x10, 0xC0, 0xFF, 0xF4 ; file 007FA8 | 68k movem.l -$c(a6), d6-d7/a4
db 0x4E, 0x5E ; file 007FAE | 68k unlk a6
db 0x4E, 0x75 ; file 007FB0 | 68k rts 
