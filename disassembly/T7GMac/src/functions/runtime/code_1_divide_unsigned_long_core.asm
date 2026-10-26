; Verified internal arithmetic core; not a separate jump-table entry.
; CODE 1 payload 01D6..023F, file 012E44..012EAD.
; D0=unsigned dividend, D1=nonzero divisor; returns quotient D0 and remainder D1.
; D2/D3/D7 are scratch; the table-backed wrappers save/restore them.
; Original byte identity is enforced by this project’s build.sh.
mac_code_1_divide_unsigned_long_core:
db 0x2E, 0x3C, 0x00, 0x00, 0xFF, 0xFF ; file 012E44 | 68k move.l #$ffff, d7
db 0xB2, 0x80 ; file 012E4A | 68k cmp.l d0, d1
db 0x63, 0x06 ; file 012E4C | 68k bls.b $1e6
db 0x22, 0x00 ; file 012E4E | 68k move.l d0, d1
db 0x70, 0x00 ; file 012E50 | 68k moveq #$0, d0
db 0x4E, 0x75 ; file 012E52 | 68k rts 
db 0xB0, 0x87 ; file 012E54 | 68k cmp.l d7, d0
db 0x62, 0x0C ; file 012E56 | 68k bhi.b $1f6
db 0x80, 0xC1 ; file 012E58 | 68k divu.w d1, d0
db 0x48, 0x40 ; file 012E5A | 68k swap d0
db 0x32, 0x00 ; file 012E5C | 68k move.w d0, d1
db 0x42, 0x40 ; file 012E5E | 68k clr.w d0
db 0x48, 0x40 ; file 012E60 | 68k swap d0
db 0x4E, 0x75 ; file 012E62 | 68k rts 
db 0xB2, 0x87 ; file 012E64 | 68k cmp.l d7, d1
db 0x62, 0x1A ; file 012E66 | 68k bhi.b $214
db 0x2E, 0x00 ; file 012E68 | 68k move.l d0, d7
db 0x42, 0x40 ; file 012E6A | 68k clr.w d0
db 0x48, 0x40 ; file 012E6C | 68k swap d0
db 0x80, 0xC1 ; file 012E6E | 68k divu.w d1, d0
db 0x48, 0x40 ; file 012E70 | 68k swap d0
db 0x48, 0x47 ; file 012E72 | 68k swap d7
db 0x3E, 0x00 ; file 012E74 | 68k move.w d0, d7
db 0x48, 0x47 ; file 012E76 | 68k swap d7
db 0x8E, 0xC1 ; file 012E78 | 68k divu.w d1, d7
db 0x30, 0x07 ; file 012E7A | 68k move.w d7, d0
db 0x48, 0x47 ; file 012E7C | 68k swap d7
db 0x32, 0x07 ; file 012E7E | 68k move.w d7, d1
db 0x4E, 0x75 ; file 012E80 | 68k rts 
db 0x24, 0x00 ; file 012E82 | 68k move.l d0, d2
db 0x26, 0x01 ; file 012E84 | 68k move.l d1, d3
db 0xE2, 0x88 ; file 012E86 | 68k lsr.l #$1, d0
db 0xE2, 0x89 ; file 012E88 | 68k lsr.l #$1, d1
db 0xB2, 0x87 ; file 012E8A | 68k cmp.l d7, d1
db 0x62, 0xF8 ; file 012E8C | 68k bhi.b $218
db 0x80, 0xC1 ; file 012E8E | 68k divu.w d1, d0
db 0xC0, 0x87 ; file 012E90 | 68k and.l d7, d0
db 0x32, 0x03 ; file 012E92 | 68k move.w d3, d1
db 0xC2, 0xC0 ; file 012E94 | 68k mulu.w d0, d1
db 0x2E, 0x03 ; file 012E96 | 68k move.l d3, d7
db 0x48, 0x47 ; file 012E98 | 68k swap d7
db 0xCE, 0xC0 ; file 012E9A | 68k mulu.w d0, d7
db 0x48, 0x47 ; file 012E9C | 68k swap d7
db 0xD2, 0x87 ; file 012E9E | 68k add.l d7, d1
db 0x65, 0x08 ; file 012EA0 | 68k bcs.b $23c
db 0x92, 0x82 ; file 012EA2 | 68k sub.l d2, d1
db 0x62, 0x04 ; file 012EA4 | 68k bhi.b $23c
db 0x44, 0x81 ; file 012EA6 | 68k neg.l d1
db 0x4E, 0x75 ; file 012EA8 | 68k rts 
db 0x53, 0x40 ; file 012EAA | 68k subq.w #$1, d0
db 0x60, 0xE4 ; file 012EAC | 68k bra.b $224
