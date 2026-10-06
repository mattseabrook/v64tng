; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011F32–011F5F, inclusive.
cdi_t7g_entry_011f32:
db 0x2A, 0x48 ; 011F32: provisional 68k movea.l a0, a5
db 0x28, 0x49 ; 011F34: provisional 68k movea.l a1, a4
db 0x61, 0x00, 0x03, 0xFC ; 011F36: provisional 68k bsr.w $12334
db 0x26, 0x68, 0x00, 0x34 ; 011F3A: provisional 68k movea.l $34(a0), a3
db 0x28, 0x69, 0x00, 0x34 ; 011F3E: provisional 68k movea.l $34(a1), a4
db 0xD6, 0x43 ; 011F42: provisional 68k add.w d3, d3
db 0x0C, 0x68, 0x00, 0x00, 0x00, 0x20 ; 011F44: provisional 68k cmpi.w #$0, $20(a0)
db 0x66, 0x02 ; 011F4A: provisional 68k bne.b $11f4e
db 0xD6, 0x43 ; 011F4C: provisional 68k add.w d3, d3
db 0xD6, 0xC3 ; 011F4E: provisional 68k adda.w d3, a3
db 0xDA, 0x45 ; 011F50: provisional 68k add.w d5, d5
db 0x0C, 0x69, 0x00, 0x00, 0x00, 0x20 ; 011F52: provisional 68k cmpi.w #$0, $20(a1)
db 0x66, 0x02 ; 011F58: provisional 68k bne.b $11f5c
db 0xDA, 0x45 ; 011F5A: provisional 68k add.w d5, d5
db 0xD8, 0xC5 ; 011F5C: provisional 68k adda.w d5, a4
db 0x4E, 0x75 ; 011F5E: provisional 68k rts 
