; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D480–00D4E3, inclusive.
cdi_t7g_entry_00d480:
db 0x48, 0xE7, 0x80, 0xC4 ; 00D480: provisional 68k movem.l d0/a0-a1/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00D484: provisional 68k move.w $14(a7), d0
db 0x22, 0x6F, 0x00, 0x16 ; 00D488: provisional 68k movea.l $16(a7), a1
db 0x61, 0x00, 0x05, 0xA2 ; 00D48C: provisional 68k bsr.w $da30
db 0x30, 0x2D, 0x00, 0x58 ; 00D490: provisional 68k move.w $58(a5), d0
db 0xB0, 0x7C, 0x00, 0x08 ; 00D494: provisional 68k cmp.w #$8, d0
db 0x67, 0x26 ; 00D498: provisional 68k beq.b $d4c0
db 0x52, 0x6D, 0x00, 0x58 ; 00D49A: provisional 68k addq.w #$1, $58(a5)
db 0x41, 0xED, 0x00, 0x5A ; 00D49E: provisional 68k lea.l $5a(a5), a0
db 0xE5, 0x40 ; 00D4A2: provisional 68k asl.w #$2, d0
db 0x21, 0x89, 0x00, 0x00 ; 00D4A4: provisional 68k move.l a1, (a0, d0.w)
db 0x0C, 0x69, 0x00, 0x06, 0x00, 0x0A ; 00D4A8: provisional 68k cmpi.w #$6, $a(a1)
db 0x66, 0x04 ; 00D4AE: provisional 68k bne.b $d4b4
db 0x61, 0x00, 0x00, 0x32 ; 00D4B0: provisional 68k bsr.w $d4e4
db 0x4C, 0xDF, 0x23, 0x01 ; 00D4B4: provisional 68k movem.l (a7)+, d0/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 00D4B8: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 00D4BC: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 00D4BE: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00D4C0: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xE8, 0xB8 ; 00D4C4: provisional 68k bsr.w $bd7e
db 0x64, 0x73 ; 00D4C8: provisional 68k bcc.b $d53d
db 0x70, 0x5F ; 00D4CA: provisional 68k moveq #$5f, d0
db 0x61, 0x64 ; 00D4CC: provisional 68k bsr.b $d532
db 0x64, 0x3A ; 00D4CE: provisional 68k bcc.b $d50a
db 0x20, 0x44 ; 00D4D0: provisional 68k movea.l d4, a0
db 0x69, 0x73 ; 00D4D2: provisional 68k bvs.b $d547
db 0x70, 0x6C ; 00D4D4: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00D4D6: provisional 68k bsr.b $d551
db 0x20, 0x61 ; 00D4D8: provisional 68k movea.l -(a1), a0
db 0x72, 0x72 ; 00D4DA: provisional 68k moveq #$72, d1
db 0x61, 0x79 ; 00D4DC: provisional 68k bsr.b $d557
db 0x20, 0x66 ; 00D4DE: provisional 68k movea.l -(a6), a0
db 0x75, 0x6C ; file 00D4E0
db 0x6C, 0x00 ; file 00D4E2
