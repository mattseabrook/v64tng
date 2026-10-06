; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0002B2–00034D, inclusive.
cdi_loader_entry_0002b2:
db 0x48, 0xE7, 0xF8, 0xC0 ; 0002B2: provisional 68k movem.l d0-d4/a0-a1, -(a7)
db 0x24, 0x48 ; 0002B6: provisional 68k movea.l a0, a2
db 0x34, 0x00 ; 0002B8: provisional 68k move.w d0, d2
db 0x41, 0xFA, 0x00, 0x88 ; 0002BA: provisional 68k lea.l $344(pc), a0
db 0x70, 0x41 ; 0002BE: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 0002C0: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x00, 0x00, 0x56 ; 0002C4: provisional 68k bcs.w $31c
db 0x20, 0x4A ; 0002C8: provisional 68k movea.l a2, a0
db 0x72, 0x20 ; 0002CA: provisional 68k moveq #$20, d1
db 0x4E, 0x40, 0x00, 0x8B ; 0002CC: provisional 68k trap #0 ; OS-9 service word $008B
db 0x65, 0x30 ; 0002D0: provisional 68k bcs.b $302
db 0x20, 0x4A ; 0002D2: provisional 68k movea.l a2, a0
db 0x76, 0x00 ; 0002D4: provisional 68k moveq #$0, d3
db 0x53, 0x41 ; 0002D6: provisional 68k subq.w #$1, d1
db 0x78, 0x00 ; 0002D8: provisional 68k moveq #$0, d4
db 0x18, 0x18 ; 0002DA: provisional 68k move.b (a0)+, d4
db 0xB8, 0x7C, 0x00, 0x3A ; 0002DC: provisional 68k cmp.w #$3a, d4
db 0x67, 0x10 ; 0002E0: provisional 68k beq.b $2f2
db 0xC6, 0xFC, 0x00, 0x0A ; 0002E2: provisional 68k mulu.w #$a, d3
db 0x98, 0x7C, 0x00, 0x30 ; 0002E6: provisional 68k sub.w #$30, d4
db 0xD6, 0x44 ; 0002EA: provisional 68k add.w d4, d3
db 0x51, 0xC9, 0xFF, 0xEC ; 0002EC: provisional 68k dbra d1, $2da
db 0x60, 0x16 ; 0002F0: provisional 68k bra.b $308
db 0xB4, 0x43 ; 0002F2: provisional 68k cmp.w d3, d2
db 0x66, 0xD2 ; 0002F4: provisional 68k bne.b $2c8
db 0x4E, 0x40, 0x00, 0x8F ; 0002F6: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x20 ; 0002FA: provisional 68k bcs.b $31c
db 0x4C, 0xDF, 0x03, 0x1F ; 0002FC: provisional 68k movem.l (a7)+, d0-d4/a0-a1
db 0x4E, 0x75 ; 000300: provisional 68k rts 
db 0xB2, 0x7C, 0x00, 0xD3 ; 000302: provisional 68k cmp.w #$d3, d1
db 0x66, 0x14 ; 000306: provisional 68k bne.b $31c
db 0x4E, 0x40, 0x00, 0x8F ; 000308: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x0E ; 00030C: provisional 68k bcs.b $31c
db 0x4C, 0xDF, 0x03, 0x1F ; 00030E: provisional 68k movem.l (a7)+, d0-d4/a0-a1
db 0x32, 0x3C, 0x81, 0x00 ; 000312: provisional 68k move.w #$8100, d1
db 0x00, 0x3C, 0x00, 0x01 ; 000316: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00031A: provisional 68k rts 
db 0x61, 0x00, 0xFE, 0xB4 ; 00031C: provisional 68k bsr.w $1d2
db 0x61, 0x00, 0xFE, 0xB0 ; 000320: provisional 68k bsr.w $1d2
db 0x48, 0x7A, 0x00, 0x08 ; 000324: provisional 68k pea.l $32e(pc)
db 0x61, 0x00, 0xFE, 0xC2 ; 000328: provisional 68k bsr.w $1ec
db 0x60, 0x0C ; 00032C: provisional 68k bra.b $33a
db 0x63, 0x73 ; 00032E: provisional 68k bls.b $3a3
db 0x64, 0x5F ; 000330: provisional 68k bcc.b $391
db 0x64, 0x73 ; 000332: provisional 68k bcc.b $3a7
db 0x64, 0x3A ; 000334: provisional 68k bcc.b $370
db 0x20, 0x0D ; 000336: provisional 68k move.l a5, d0
db 0x0A, 0x00, 0x61, 0x00 ; 000338: provisional 68k eori.b #$0, d0
db 0xFE, 0x96 ; 00033C: provisional 68k dc.w $fe96
db 0x32, 0x01 ; 00033E: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFE, 0xD8 ; 000340: provisional 68k bsr.w $21a
db 0x2F, 0x6E, 0x76, 0x72, 0x2F, 0x63 ; 000344: provisional 68k move.l $7672(a6), $2f63(a7)
db 0x73, 0x64 ; file 00034A
db 0x00, 0x00 ; 00034C: provisional 68k ori.b #$aa, d0
