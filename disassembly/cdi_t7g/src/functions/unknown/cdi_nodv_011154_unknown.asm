; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011154–0111A1, inclusive.
cdi_nodv_entry_011154:
db 0x48, 0xE7, 0xFF, 0xFC ; 011154: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2F, 0x00, 0x3C ; 011158: provisional 68k move.l $3c(a7), d0
db 0x66, 0x28 ; 01115C: provisional 68k bne.b $11186
db 0x61, 0x00, 0xBA, 0x56 ; 01115E: provisional 68k bsr.w $cbb6
db 0x48, 0x7A, 0x00, 0x08 ; 011162: provisional 68k pea.l $1116c(pc)
db 0x61, 0x00, 0xBA, 0x68 ; 011166: provisional 68k bsr.w $cbd0
db 0x60, 0x10 ; 01116A: provisional 68k bra.b $1117c
db 0x6F, 0x62 ; 01116C: provisional 68k ble.b $111d0
db 0x6A, 0x65 ; 01116E: provisional 68k bpl.b $111d5
db 0x63, 0x74 ; 011170: provisional 68k bls.b $111e6
db 0x20, 0x3D ; file 011172
db 0x20, 0x3C, 0x6E, 0x75, 0x6C, 0x6C ; 011174: provisional 68k move.l #$6e756c6c, d0
db 0x3E, 0x00 ; 01117A: provisional 68k move.w d0, d7
db 0x61, 0x00, 0xBA, 0x38 ; 01117C: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xBA, 0x34 ; 011180: provisional 68k bsr.w $cbb6
db 0x60, 0x14 ; 011184: provisional 68k bra.b $1119a
db 0x2A, 0x40 ; 011186: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 011188: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 01118C: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFB, 0x64 ; 011190: provisional 68k lea.l $10cf6(pc), a0
db 0xD0, 0xC0 ; 011194: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x0C ; 011196: provisional 68k jsr $c(a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 01119A: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 01119E: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 0111A0: provisional 68k rts 
