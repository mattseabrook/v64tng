; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 014CD2–014D55, inclusive.
cdi_nodv_entry_014cd2:
db 0x48, 0xE7, 0xF8, 0xC0 ; 014CD2: provisional 68k movem.l d0-d4/a0-a1, -(a7)
db 0x24, 0x48 ; 014CD6: provisional 68k movea.l a0, a2
db 0x34, 0x00 ; 014CD8: provisional 68k move.w d0, d2
db 0x41, 0xFA, 0x00, 0x70 ; 014CDA: provisional 68k lea.l $14d4c(pc), a0
db 0x70, 0x41 ; 014CDE: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 014CE0: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x00, 0x00, 0x56 ; 014CE4: provisional 68k bcs.w $14d3c
db 0x20, 0x4A ; 014CE8: provisional 68k movea.l a2, a0
db 0x72, 0x20 ; 014CEA: provisional 68k moveq #$20, d1
db 0x4E, 0x40, 0x00, 0x8B ; 014CEC: provisional 68k trap #0 ; OS-9 service word $008B
db 0x65, 0x30 ; 014CF0: provisional 68k bcs.b $14d22
db 0x20, 0x4A ; 014CF2: provisional 68k movea.l a2, a0
db 0x76, 0x00 ; 014CF4: provisional 68k moveq #$0, d3
db 0x53, 0x41 ; 014CF6: provisional 68k subq.w #$1, d1
db 0x78, 0x00 ; 014CF8: provisional 68k moveq #$0, d4
db 0x18, 0x18 ; 014CFA: provisional 68k move.b (a0)+, d4
db 0xB8, 0x7C, 0x00, 0x3A ; 014CFC: provisional 68k cmp.w #$3a, d4
db 0x67, 0x10 ; 014D00: provisional 68k beq.b $14d12
db 0xC6, 0xFC, 0x00, 0x0A ; 014D02: provisional 68k mulu.w #$a, d3
db 0x98, 0x7C, 0x00, 0x30 ; 014D06: provisional 68k sub.w #$30, d4
db 0xD6, 0x44 ; 014D0A: provisional 68k add.w d4, d3
db 0x51, 0xC9, 0xFF, 0xEC ; 014D0C: provisional 68k dbra d1, $14cfa
db 0x60, 0x16 ; 014D10: provisional 68k bra.b $14d28
db 0xB4, 0x43 ; 014D12: provisional 68k cmp.w d3, d2
db 0x66, 0xD2 ; 014D14: provisional 68k bne.b $14ce8
db 0x4E, 0x40, 0x00, 0x8F ; 014D16: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x20 ; 014D1A: provisional 68k bcs.b $14d3c
db 0x4C, 0xDF, 0x03, 0x1F ; 014D1C: provisional 68k movem.l (a7)+, d0-d4/a0-a1
db 0x4E, 0x75 ; 014D20: provisional 68k rts 
db 0xB2, 0x7C, 0x00, 0xD3 ; 014D22: provisional 68k cmp.w #$d3, d1
db 0x66, 0x14 ; 014D26: provisional 68k bne.b $14d3c
db 0x4E, 0x40, 0x00, 0x8F ; 014D28: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x0E ; 014D2C: provisional 68k bcs.b $14d3c
db 0x4C, 0xDF, 0x03, 0x1F ; 014D2E: provisional 68k movem.l (a7)+, d0-d4/a0-a1
db 0x32, 0x3C, 0x81, 0x00 ; 014D32: provisional 68k move.w #$8100, d1
db 0x00, 0x3C, 0x00, 0x01 ; 014D36: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 014D3A: provisional 68k rts 
db 0x32, 0x01 ; 014D3C: provisional 68k move.w d1, d1
db 0x4E, 0xAE, 0xD1, 0x46 ; 014D3E: provisional 68k jsr -$2eba(a6)
db 0x63, 0x73 ; 014D42: provisional 68k bls.b $14db7
db 0x64, 0x5F ; 014D44: provisional 68k bcc.b $14da5
db 0x64, 0x73 ; 014D46: provisional 68k bcc.b $14dbb
db 0x64, 0x3A ; 014D48: provisional 68k bcc.b $14d84
db 0x20, 0x00 ; 014D4A: provisional 68k move.l d0, d0
db 0x2F, 0x6E, 0x76, 0x72, 0x2F, 0x63 ; 014D4C: provisional 68k move.l $7672(a6), $2f63(a7)
db 0x73, 0x64 ; file 014D52
db 0x00, 0x00 ; 014D54: provisional 68k ori.b #$aa, d0
