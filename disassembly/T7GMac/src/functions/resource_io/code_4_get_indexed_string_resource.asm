; verified-role: Load STR# by resource ID, bounds-check its Pascal-string index, and copy the selected string.
; Original native symbol: None; evidence file offset 0xf274.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_get_indexed_string_resource:
db 0x4E, 0x56, 0x00, 0x00 ; file 00F274 | 68k link.w a6, #$0
db 0x59, 0x4F ; file 00F278 | 68k subq.w #$4, a7
db 0x2F, 0x3C, 0x53, 0x54, 0x52, 0x23 ; file 00F27A | 68k move.l #$53545223, -(a7)
db 0x3F, 0x2E, 0x00, 0x0A ; file 00F280 | 68k move.w $a(a6), -(a7)
db 0xA9, 0xA0 ; file 00F284 | 68k dc.w $a9a0
db 0x22, 0x6E, 0x00, 0x0C ; file 00F286 | 68k movea.l $c(a6), a1
db 0x42, 0x11 ; file 00F28A | 68k clr.b (a1)
db 0x20, 0x1F ; file 00F28C | 68k move.l (a7)+, d0
db 0x67, 0x22 ; file 00F28E | 68k beq.b $5de
db 0x20, 0x40 ; file 00F290 | 68k movea.l d0, a0
db 0x20, 0x50 ; file 00F292 | 68k movea.l (a0), a0
db 0x30, 0x18 ; file 00F294 | 68k move.w (a0)+, d0
db 0x32, 0x2E, 0x00, 0x08 ; file 00F296 | 68k move.w $8(a6), d1
db 0x67, 0x16 ; file 00F29A | 68k beq.b $5de
db 0xB2, 0x40 ; file 00F29C | 68k cmp.w d0, d1
db 0x62, 0x12 ; file 00F29E | 68k bhi.b $5de
db 0x70, 0x00 ; file 00F2A0 | 68k moveq #$0, d0
db 0x53, 0x41 ; file 00F2A2 | 68k subq.w #$1, d1
db 0x67, 0x06 ; file 00F2A4 | 68k beq.b $5d8
db 0x10, 0x18 ; file 00F2A6 | 68k move.b (a0)+, d0
db 0xD1, 0xC0 ; file 00F2A8 | 68k adda.l d0, a0
db 0x60, 0xF6 ; file 00F2AA | 68k bra.b $5ce
db 0x10, 0x10 ; file 00F2AC | 68k move.b (a0), d0
db 0x52, 0x40 ; file 00F2AE | 68k addq.w #$1, d0
db 0xA0, 0x2E ; file 00F2B0 | 68k dc.w $a02e
db 0x4E, 0x5E ; file 00F2B2 | 68k unlk a6
db 0x20, 0x5F ; file 00F2B4 | 68k movea.l (a7)+, a0
db 0x50, 0x8F ; file 00F2B6 | 68k addq.l #$8, a7
db 0x4E, 0xD0 ; file 00F2B8 | 68k jmp (a0)
