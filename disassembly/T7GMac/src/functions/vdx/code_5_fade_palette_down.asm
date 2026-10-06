; verified-role: Native FadePaletteDown routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: FadePaletteDown; evidence file offset 0xe2b4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_fade_palette_down:
db 0x4E, 0x56, 0xFC, 0xFA ; file 00E1EE | 68k link.w a6, #$fcfa
db 0x20, 0x6D, 0xFC, 0x7A ; file 00E1F2 | 68k movea.l -$386(a5), a0
db 0xD1, 0xFC, 0x00, 0x00, 0x00, 0x0A ; file 00E1F6 | 68k adda.l #$a, a0
db 0x22, 0x3C, 0x00, 0x00, 0x00, 0xFF ; file 00E1FC | 68k move.l #$ff, d1
db 0x43, 0xEE, 0xFC, 0xFE ; file 00E202 | 68k lea.l -$302(a6), a1
db 0x12, 0xD0 ; file 00E206 | 68k move.b (a0), (a1)+
db 0x54, 0x48 ; file 00E208 | 68k addq.w #$2, a0
db 0x12, 0xD0 ; file 00E20A | 68k move.b (a0), (a1)+
db 0x54, 0x48 ; file 00E20C | 68k addq.w #$2, a0
db 0x12, 0xD0 ; file 00E20E | 68k move.b (a0), (a1)+
db 0x58, 0x48 ; file 00E210 | 68k addq.w #$4, a0
db 0x51, 0xC9, 0xFF, 0xF2 ; file 00E212 | 68k dbra d1, $6aa0
db 0x3D, 0x6E, 0x00, 0x08, 0xFF, 0xFE ; file 00E216 | 68k move.w $8(a6), -$2(a6)
db 0x60, 0x00, 0x00, 0x80 ; file 00E21C | 68k bra.w $6b38
db 0x48, 0xE7, 0x1F, 0x3E ; file 00E220 | 68k movem.l d3-d7/a2-a6, -(a7)
db 0x7A, 0x00 ; file 00E224 | 68k moveq #$0, d5
db 0x3A, 0x2E, 0xFF, 0xFE ; file 00E226 | 68k move.w -$2(a6), d5
db 0x76, 0x00 ; file 00E22A | 68k moveq #$0, d3
db 0x36, 0x2E, 0x00, 0x08 ; file 00E22C | 68k move.w $8(a6), d3
db 0x66, 0x02 ; file 00E230 | 68k bne.b $6ace
db 0x76, 0x01 ; file 00E232 | 68k moveq #$1, d3
db 0x45, 0xEE, 0xFC, 0xFE ; file 00E234 | 68k lea.l -$302(a6), a2
db 0x26, 0x6D, 0xFC, 0x7A ; file 00E238 | 68k movea.l -$386(a5), a3
db 0xD7, 0xFC, 0x00, 0x00, 0x00, 0x0A ; file 00E23C | 68k adda.l #$a, a3
db 0x28, 0x3C, 0x00, 0x00, 0x00, 0xFF ; file 00E242 | 68k move.l #$ff, d4
db 0x72, 0x00 ; file 00E248 | 68k moveq #$0, d1
db 0x12, 0x1A ; file 00E24A | 68k move.b (a2)+, d1
db 0xC2, 0xC5 ; file 00E24C | 68k mulu.w d5, d1
db 0x82, 0xC3 ; file 00E24E | 68k divu.w d3, d1
db 0xE1, 0x49 ; file 00E250 | 68k lsl.w #$8, d1
db 0x36, 0xC1 ; file 00E252 | 68k move.w d1, (a3)+
db 0x72, 0x00 ; file 00E254 | 68k moveq #$0, d1
db 0x12, 0x1A ; file 00E256 | 68k move.b (a2)+, d1
db 0xC2, 0xC5 ; file 00E258 | 68k mulu.w d5, d1
db 0x82, 0xC3 ; file 00E25A | 68k divu.w d3, d1
db 0xE1, 0x49 ; file 00E25C | 68k lsl.w #$8, d1
db 0x36, 0xC1 ; file 00E25E | 68k move.w d1, (a3)+
db 0x72, 0x00 ; file 00E260 | 68k moveq #$0, d1
db 0x12, 0x1A ; file 00E262 | 68k move.b (a2)+, d1
db 0xC2, 0xC5 ; file 00E264 | 68k mulu.w d5, d1
db 0x82, 0xC3 ; file 00E266 | 68k divu.w d3, d1
db 0xE1, 0x49 ; file 00E268 | 68k lsl.w #$8, d1
db 0x36, 0xC1 ; file 00E26A | 68k move.w d1, (a3)+
db 0x54, 0x8B ; file 00E26C | 68k addq.l #$2, a3
db 0x51, 0xCC, 0xFF, 0xD8 ; file 00E26E | 68k dbra d4, $6ae2
db 0x4C, 0xDF, 0x7C, 0xF8 ; file 00E272 | 68k movem.l (a7)+, d3-d7/a2-a6
db 0x42, 0xA7 ; file 00E276 | 68k clr.l -(a7)
db 0xA9, 0x75 ; file 00E278 | 68k dc.w $a975
db 0x2D, 0x5F, 0xFC, 0xFA ; file 00E27A | 68k move.l (a7)+, -$306(a6)
db 0x2F, 0x3C, 0x00, 0xFF, 0x00, 0x00 ; file 00E27E | 68k move.l #$ff0000, -(a7)
db 0x20, 0x6D, 0xFC, 0x7A ; file 00E284 | 68k movea.l -$386(a5), a0
db 0x48, 0x68, 0x00, 0x08 ; file 00E288 | 68k pea.l $8(a0)
db 0xAA, 0x3F ; file 00E28C | 68k dc.w $aa3f
db 0x42, 0xA7 ; file 00E28E | 68k clr.l -(a7)
db 0xA9, 0x75 ; file 00E290 | 68k dc.w $a975
db 0x20, 0x2E, 0xFC, 0xFA ; file 00E292 | 68k move.l -$306(a6), d0
db 0xB0, 0x9F ; file 00E296 | 68k cmp.l (a7)+, d0
db 0x67, 0xF4 ; file 00E298 | 68k beq.b $6b28
db 0x53, 0x6E, 0xFF, 0xFE ; file 00E29A | 68k subq.w #$1, -$2(a6)
db 0x0C, 0x6E, 0xFF, 0xFF, 0xFF, 0xFE ; file 00E29E | 68k cmpi.w #$ffff, -$2(a6)
db 0x6E, 0x00, 0xFF, 0x7A ; file 00E2A4 | 68k bgt.w $6aba
db 0x42, 0x67 ; file 00E2A8 | 68k clr.w -(a7)
db 0x4E, 0xBA, 0x00, 0xD2 ; file 00E2AA | 68k jsr $6c18(pc)
db 0x54, 0x8F ; file 00E2AE | 68k addq.l #$2, a7
db 0x4E, 0x5E ; file 00E2B0 | 68k unlk a6
db 0x4E, 0x75 ; file 00E2B2 | 68k rts 
