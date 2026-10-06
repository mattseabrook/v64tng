; verified-role: Dispatch the volume-info parameter block through A207 or its asynchronous A607 form.
; Original native symbol: None; evidence file offset 0xf196.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_get_volume_info_parameter_block:
db 0x22, 0x5F ; file 00F196 | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F198 | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F19A | 68k movea.l (a7)+, a0
db 0x66, 0x04 ; file 00F19C | 68k bne.b $4ce
db 0xA2, 0x07 ; file 00F19E | 68k dc.w $a207
db 0x60, 0x02 ; file 00F1A0 | 68k bra.b $4d0
db 0xA6, 0x07 ; file 00F1A2 | 68k dc.w $a607
db 0x3E, 0x80 ; file 00F1A4 | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F1A6 | 68k jmp (a1)
db 0x22, 0x5F ; file 00F1A8 | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F1AA | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F1AC | 68k movea.l (a7)+, a0
db 0x66, 0x04 ; file 00F1AE | 68k bne.b $4e0
db 0xA2, 0x00 ; file 00F1B0 | 68k dc.w $a200
db 0x60, 0x02 ; file 00F1B2 | 68k bra.b $4e2
db 0xA6, 0x00 ; file 00F1B4 | 68k dc.w $a600
db 0x3E, 0x80 ; file 00F1B6 | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F1B8 | 68k jmp (a1)
db 0x22, 0x5F ; file 00F1BA | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F1BC | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F1BE | 68k movea.l (a7)+, a0
db 0x66, 0x04 ; file 00F1C0 | 68k bne.b $4f2
db 0xA2, 0x08 ; file 00F1C2 | 68k dc.w $a208
db 0x60, 0x02 ; file 00F1C4 | 68k bra.b $4f4
db 0xA6, 0x08 ; file 00F1C6 | 68k dc.w $a608
db 0x3E, 0x80 ; file 00F1C8 | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F1CA | 68k jmp (a1)
db 0x22, 0x5F ; file 00F1CC | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F1CE | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F1D0 | 68k movea.l (a7)+, a0
db 0x66, 0x04 ; file 00F1D2 | 68k bne.b $504
db 0xA2, 0x09 ; file 00F1D4 | 68k dc.w $a209
db 0x60, 0x02 ; file 00F1D6 | 68k bra.b $506
db 0xA6, 0x09 ; file 00F1D8 | 68k dc.w $a609
db 0x3E, 0x80 ; file 00F1DA | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F1DC | 68k jmp (a1)
db 0x22, 0x5F ; file 00F1DE | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F1E0 | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F1E2 | 68k movea.l (a7)+, a0
db 0x66, 0x04 ; file 00F1E4 | 68k bne.b $516
db 0xA2, 0x0C ; file 00F1E6 | 68k dc.w $a20c
db 0x60, 0x02 ; file 00F1E8 | 68k bra.b $518
db 0xA6, 0x0C ; file 00F1EA | 68k dc.w $a60c
db 0x3E, 0x80 ; file 00F1EC | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F1EE | 68k jmp (a1)
db 0x22, 0x5F ; file 00F1F0 | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F1F2 | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F1F4 | 68k movea.l (a7)+, a0
db 0x66, 0x04 ; file 00F1F6 | 68k bne.b $528
db 0xA2, 0x0D ; file 00F1F8 | 68k dc.w $a20d
db 0x60, 0x02 ; file 00F1FA | 68k bra.b $52a
db 0xA6, 0x0D ; file 00F1FC | 68k dc.w $a60d
db 0x3E, 0x80 ; file 00F1FE | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F200 | 68k jmp (a1)
db 0x20, 0x5F ; file 00F202 | 68k movea.l (a7)+, a0
db 0x30, 0x1F ; file 00F204 | 68k move.w (a7)+, d0
db 0x2F, 0x08 ; file 00F206 | 68k move.l a0, -(a7)
db 0x4E, 0x56, 0xFF, 0xE0 ; file 00F208 | 68k link.w a6, #$ffe0
db 0x20, 0x4F ; file 00F20C | 68k movea.l a7, a0
db 0x31, 0x7C, 0xFF, 0xFC, 0x00, 0x18 ; file 00F20E | 68k move.w #$fffc, $18(a0)
db 0x31, 0x7C, 0x00, 0x02, 0x00, 0x1A ; file 00F214 | 68k move.w #$2, $1a(a0)
db 0x31, 0x40, 0x00, 0x1C ; file 00F21A | 68k move.w d0, $1c(a0)
db 0xA2, 0x04 ; file 00F21E | 68k dc.w $a204
db 0x4E, 0x5E ; file 00F220 | 68k unlk a6
db 0x4E, 0x75 ; file 00F222 | 68k rts 
