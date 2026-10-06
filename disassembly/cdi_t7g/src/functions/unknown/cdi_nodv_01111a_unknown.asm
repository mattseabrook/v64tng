; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01111A–011153, inclusive.
cdi_nodv_entry_01111a:
db 0x48, 0xE7 ; file 01111A
db 0xFF, 0xFC ; 01111C: provisional 68k dc.w $fffc
db 0x20, 0x2F, 0x00, 0x3C ; 01111E: provisional 68k move.l $3c(a7), d0
db 0x66, 0x14 ; 011122: provisional 68k bne.b $11138
db 0x48, 0x7A, 0x00, 0x08 ; 011124: provisional 68k pea.l $1112e(pc)
db 0x61, 0x00, 0xBA, 0xA6 ; 011128: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 01112C: provisional 68k bra.b $11136
db 0x3C, 0x6E, 0x75, 0x6C ; 01112E: provisional 68k movea.w $756c(a6), a6
db 0x6C, 0x3E ; 011132: provisional 68k bge.b $11172
db 0x00, 0x00, 0x60, 0x14 ; 011134: provisional 68k ori.b #$14, d0
db 0x2A, 0x40 ; 011138: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 01113A: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 01113E: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFB, 0xB2 ; 011142: provisional 68k lea.l $10cf6(pc), a0
db 0xD0, 0xC0 ; 011146: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x08 ; 011148: provisional 68k jsr $8(a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 01114C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 011150: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 011152: provisional 68k rts 
