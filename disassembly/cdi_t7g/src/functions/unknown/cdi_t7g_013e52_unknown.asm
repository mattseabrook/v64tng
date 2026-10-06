; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013E52–013ED5, inclusive.
cdi_t7g_entry_013e52:
db 0x48, 0xE7, 0xF8, 0xC0 ; 013E52: provisional 68k movem.l d0-d4/a0-a1, -(a7)
db 0x24, 0x48 ; 013E56: provisional 68k movea.l a0, a2
db 0x34, 0x00 ; 013E58: provisional 68k move.w d0, d2
db 0x41, 0xFA, 0x00, 0x70 ; 013E5A: provisional 68k lea.l $13ecc(pc), a0
db 0x70, 0x41 ; 013E5E: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 013E60: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x00, 0x00, 0x56 ; 013E64: provisional 68k bcs.w $13ebc
db 0x20, 0x4A ; 013E68: provisional 68k movea.l a2, a0
db 0x72, 0x20 ; 013E6A: provisional 68k moveq #$20, d1
db 0x4E, 0x40, 0x00, 0x8B ; 013E6C: provisional 68k trap #0 ; OS-9 service word $008B
db 0x65, 0x30 ; 013E70: provisional 68k bcs.b $13ea2
db 0x20, 0x4A ; 013E72: provisional 68k movea.l a2, a0
db 0x76, 0x00 ; 013E74: provisional 68k moveq #$0, d3
db 0x53, 0x41 ; 013E76: provisional 68k subq.w #$1, d1
db 0x78, 0x00 ; 013E78: provisional 68k moveq #$0, d4
db 0x18, 0x18 ; 013E7A: provisional 68k move.b (a0)+, d4
db 0xB8, 0x7C, 0x00, 0x3A ; 013E7C: provisional 68k cmp.w #$3a, d4
db 0x67, 0x10 ; 013E80: provisional 68k beq.b $13e92
db 0xC6, 0xFC, 0x00, 0x0A ; 013E82: provisional 68k mulu.w #$a, d3
db 0x98, 0x7C, 0x00, 0x30 ; 013E86: provisional 68k sub.w #$30, d4
db 0xD6, 0x44 ; 013E8A: provisional 68k add.w d4, d3
db 0x51, 0xC9, 0xFF, 0xEC ; 013E8C: provisional 68k dbra d1, $13e7a
db 0x60, 0x16 ; 013E90: provisional 68k bra.b $13ea8
db 0xB4, 0x43 ; 013E92: provisional 68k cmp.w d3, d2
db 0x66, 0xD2 ; 013E94: provisional 68k bne.b $13e68
db 0x4E, 0x40, 0x00, 0x8F ; 013E96: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x20 ; 013E9A: provisional 68k bcs.b $13ebc
db 0x4C, 0xDF, 0x03, 0x1F ; 013E9C: provisional 68k movem.l (a7)+, d0-d4/a0-a1
db 0x4E, 0x75 ; 013EA0: provisional 68k rts 
db 0xB2, 0x7C, 0x00, 0xD3 ; 013EA2: provisional 68k cmp.w #$d3, d1
db 0x66, 0x14 ; 013EA6: provisional 68k bne.b $13ebc
db 0x4E, 0x40, 0x00, 0x8F ; 013EA8: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x0E ; 013EAC: provisional 68k bcs.b $13ebc
db 0x4C, 0xDF, 0x03, 0x1F ; 013EAE: provisional 68k movem.l (a7)+, d0-d4/a0-a1
db 0x32, 0x3C, 0x81, 0x00 ; 013EB2: provisional 68k move.w #$8100, d1
db 0x00, 0x3C, 0x00, 0x01 ; 013EB6: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 013EBA: provisional 68k rts 
db 0x32, 0x01 ; 013EBC: provisional 68k move.w d1, d1
db 0x4E, 0xAE, 0xD0, 0x98 ; 013EBE: provisional 68k jsr -$2f68(a6)
db 0x63, 0x73 ; 013EC2: provisional 68k bls.b $13f37
db 0x64, 0x5F ; 013EC4: provisional 68k bcc.b $13f25
db 0x64, 0x73 ; 013EC6: provisional 68k bcc.b $13f3b
db 0x64, 0x3A ; 013EC8: provisional 68k bcc.b $13f04
db 0x20, 0x00 ; 013ECA: provisional 68k move.l d0, d0
db 0x2F, 0x6E, 0x76, 0x72, 0x2F, 0x63 ; 013ECC: provisional 68k move.l $7672(a6), $2f63(a7)
db 0x73, 0x64 ; file 013ED2
db 0x00, 0x00 ; 013ED4: provisional 68k ori.b #$aa, d0
