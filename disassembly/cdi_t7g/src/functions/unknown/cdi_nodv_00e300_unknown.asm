; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E300–00E363, inclusive.
cdi_nodv_entry_00e300:
db 0x48, 0xE7, 0x80, 0xC4 ; 00E300: provisional 68k movem.l d0/a0-a1/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00E304: provisional 68k move.w $14(a7), d0
db 0x22, 0x6F, 0x00, 0x16 ; 00E308: provisional 68k movea.l $16(a7), a1
db 0x61, 0x00, 0x05, 0xA2 ; 00E30C: provisional 68k bsr.w $e8b0
db 0x30, 0x2D, 0x00, 0x58 ; 00E310: provisional 68k move.w $58(a5), d0
db 0xB0, 0x7C, 0x00, 0x08 ; 00E314: provisional 68k cmp.w #$8, d0
db 0x67, 0x26 ; 00E318: provisional 68k beq.b $e340
db 0x52, 0x6D, 0x00, 0x58 ; 00E31A: provisional 68k addq.w #$1, $58(a5)
db 0x41, 0xED, 0x00, 0x5A ; 00E31E: provisional 68k lea.l $5a(a5), a0
db 0xE5, 0x40 ; 00E322: provisional 68k asl.w #$2, d0
db 0x21, 0x89, 0x00, 0x00 ; 00E324: provisional 68k move.l a1, (a0, d0.w)
db 0x0C, 0x69, 0x00, 0x06, 0x00, 0x0A ; 00E328: provisional 68k cmpi.w #$6, $a(a1)
db 0x66, 0x04 ; 00E32E: provisional 68k bne.b $e334
db 0x61, 0x00, 0x00, 0x32 ; 00E330: provisional 68k bsr.w $e364
db 0x4C, 0xDF, 0x23, 0x01 ; 00E334: provisional 68k movem.l (a7)+, d0/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 00E338: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 00E33C: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 00E33E: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00E340: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xE8, 0xB8 ; 00E344: provisional 68k bsr.w $cbfe
db 0x64, 0x73 ; 00E348: provisional 68k bcc.b $e3bd
db 0x70, 0x5F ; 00E34A: provisional 68k moveq #$5f, d0
db 0x61, 0x64 ; 00E34C: provisional 68k bsr.b $e3b2
db 0x64, 0x3A ; 00E34E: provisional 68k bcc.b $e38a
db 0x20, 0x44 ; 00E350: provisional 68k movea.l d4, a0
db 0x69, 0x73 ; 00E352: provisional 68k bvs.b $e3c7
db 0x70, 0x6C ; 00E354: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00E356: provisional 68k bsr.b $e3d1
db 0x20, 0x61 ; 00E358: provisional 68k movea.l -(a1), a0
db 0x72, 0x72 ; 00E35A: provisional 68k moveq #$72, d1
db 0x61, 0x79 ; 00E35C: provisional 68k bsr.b $e3d7
db 0x20, 0x66 ; 00E35E: provisional 68k movea.l -(a6), a0
db 0x75, 0x6C ; file 00E360
db 0x6C, 0x00 ; file 00E362
