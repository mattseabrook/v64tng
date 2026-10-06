; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00ECAC–00ED07, inclusive.
cdi_t7g_entry_00ecac:
db 0x48, 0xE7, 0xF0, 0x00 ; 00ECAC: provisional 68k movem.l d0-d3, -(a7)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00ECB0: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00ECB4: provisional 68k moveq #$56, d1
db 0x74, 0x0F ; 00ECB6: provisional 68k moveq #$f, d2
db 0x36, 0x2F, 0x00, 0x14 ; 00ECB8: provisional 68k move.w $14(a7), d3
db 0x4E, 0x40, 0x00, 0x8E ; 00ECBC: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0E ; 00ECC0: provisional 68k bcs.b $ecd0
db 0x4C, 0xDF, 0x00, 0x0F ; 00ECC2: provisional 68k movem.l (a7)+, d0-d3
db 0x2F, 0x57, 0x00, 0x02 ; 00ECC6: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00ECCA: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00ECCE: provisional 68k rts 
db 0x32, 0x01 ; 00ECD0: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xD0, 0xAA ; 00ECD2: provisional 68k bsr.w $bd7e
db 0x20, 0x76, 0x69, 0x64, 0x5F, 0x69 ; 00ECD6: provisional 68k movea.l $5f69(a6, invalid.w), a0
db 0x6E, 0x74 ; 00ECDC: provisional 68k bgt.b $ed52
db 0x65, 0x72 ; 00ECDE: provisional 68k bcs.b $ed52
db 0x6C, 0x61 ; 00ECE0: provisional 68k bge.b $ed43
db 0x63, 0x65 ; 00ECE2: provisional 68k bls.b $ed49
db 0x20, 0x3A, 0x20, 0x00 ; 00ECE4: provisional 68k move.l $10ce6(pc), d0
db 0x3D, 0x6F, 0x00, 0x04, 0xC0, 0x48 ; 00ECE8: provisional 68k move.w $4(a7), -$3fb8(a6)
db 0x3D, 0x6F, 0x00, 0x06, 0xC0, 0x4C ; 00ECEE: provisional 68k move.w $6(a7), -$3fb4(a6)
db 0x3D, 0x6F, 0x00, 0x08, 0xC0, 0x4A ; 00ECF4: provisional 68k move.w $8(a7), -$3fb6(a6)
db 0x3D, 0x6F, 0x00, 0x0A, 0xC0, 0x4E ; 00ECFA: provisional 68k move.w $a(a7), -$3fb2(a6)
db 0x2F, 0x57, 0x00, 0x08 ; 00ED00: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 00ED04: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 00ED06: provisional 68k rts 
