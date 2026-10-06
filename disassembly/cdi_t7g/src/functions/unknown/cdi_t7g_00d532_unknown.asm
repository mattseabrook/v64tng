; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D532–00D605, inclusive.
cdi_t7g_entry_00d532:
db 0x67, 0x06 ; 00D532: provisional 68k beq.b $d53a
db 0x51, 0xCF, 0xFF, 0xFA ; 00D534: provisional 68k dbra d7, $d530
db 0x60, 0x2E ; 00D538: provisional 68k bra.b $d568
db 0x11, 0x7C, 0x00, 0xFF, 0xFF, 0xFC ; 00D53A: provisional 68k move.b #$ff, -$4(a0)
db 0x53, 0x47 ; 00D540: provisional 68k subq.w #$1, d7
db 0x6B, 0x08 ; 00D542: provisional 68k bmi.b $d54c
db 0x21, 0x58, 0xFF, 0xF8 ; 00D544: provisional 68k move.l (a0)+, -$8(a0)
db 0x51, 0xCF, 0xFF, 0xFA ; 00D548: provisional 68k dbra d7, $d544
db 0x53, 0x6D, 0x00, 0x58 ; 00D54C: provisional 68k subq.w #$1, $58(a5)
db 0x0C, 0x69, 0x00, 0x06, 0x00, 0x0A ; 00D550: provisional 68k cmpi.w #$6, $a(a1)
db 0x66, 0x04 ; 00D556: provisional 68k bne.b $d55c
db 0x61, 0x00, 0xFF, 0x8A ; 00D558: provisional 68k bsr.w $d4e4
db 0x4C, 0xDF, 0x23, 0x83 ; 00D55C: provisional 68k movem.l (a7)+, d0-d1/d7/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 00D560: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 00D564: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 00D566: provisional 68k rts 
db 0x42, 0xE7 ; 00D568: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00D56A: provisional 68k pea.l $d574(pc)
db 0x61, 0x00, 0xE7, 0xE0 ; 00D56E: provisional 68k bsr.w $bd50
db 0x60, 0x12 ; 00D572: provisional 68k bra.b $d586
db 0x54, 0x72, 0x79, 0x69, 0x6E, 0x67 ; 00D574: provisional 68k addq.w #$2, ([$6e67, a2])
db 0x20, 0x74, 0x6F, 0x20, 0x72, 0x65 ; 00D57A: provisional 68k movea.l $7265(a4, d6.l * 8), a0
db 0x6D, 0x6F ; 00D580: provisional 68k blt.b $d5f1
db 0x76, 0x65 ; 00D582: provisional 68k moveq #$65, d3
db 0x20, 0x00 ; 00D584: provisional 68k move.l d0, d0
db 0x2F, 0x00 ; 00D586: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0xE6, 0xCA ; 00D588: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00D58C: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE7, 0xA6 ; 00D58E: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0x00, 0x72 ; 00D592: provisional 68k bsr.w $d606
db 0x48, 0x7A, 0x00, 0x08 ; 00D596: provisional 68k pea.l $d5a0(pc)
db 0x61, 0x00, 0xE7, 0xB4 ; 00D59A: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00D59E: provisional 68k bra.b $d5ac
db 0x4F, 0x74 ; file 00D5A0
db 0x68, 0x65 ; 00D5A2: provisional 68k bvc.b $d609
db 0x72, 0x20 ; 00D5A4: provisional 68k moveq #$20, d1
db 0x64, 0x73 ; 00D5A6: provisional 68k bcc.b $d61b
db 0x70, 0x3A ; 00D5A8: provisional 68k moveq #$3a, d0
db 0x2D, 0x00 ; 00D5AA: provisional 68k move.l d0, -(a6)
db 0x30, 0x2F, 0x00, 0x1C ; 00D5AC: provisional 68k move.w $1c(a7), d0
db 0x42, 0xE7 ; 00D5B0: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00D5B2: provisional 68k pea.l $d5bc(pc)
db 0x61, 0x00, 0xE7, 0x98 ; 00D5B6: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00D5BA: provisional 68k bra.b $d5be
db 0x20, 0x00 ; 00D5BC: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 00D5BE: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xE6, 0xDC ; 00D5C0: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00D5C4: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE7, 0x6E ; 00D5C6: provisional 68k bsr.w $bd36
db 0x0A, 0x40, 0x00, 0x01 ; 00D5CA: provisional 68k eori.w #$1, d0
db 0x61, 0x00, 0x04, 0x60 ; 00D5CE: provisional 68k bsr.w $da30
db 0x61, 0x00, 0x00, 0x32 ; 00D5D2: provisional 68k bsr.w $d606
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00D5D6: provisional 68k move.l #$0, -(a7)
db 0x61, 0x00, 0x2E, 0x64 ; 00D5DC: provisional 68k bsr.w $10442
db 0x32, 0x3C, 0x80, 0x00 ; 00D5E0: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xE7, 0x98 ; 00D5E4: provisional 68k bsr.w $bd7e
db 0x64, 0x73 ; 00D5E8: provisional 68k bcc.b $d65d
db 0x70, 0x5F ; 00D5EA: provisional 68k moveq #$5f, d0
db 0x72, 0x65 ; 00D5EC: provisional 68k moveq #$65, d1
db 0x6D, 0x6F ; 00D5EE: provisional 68k blt.b $d65f
db 0x76, 0x65 ; 00D5F0: provisional 68k moveq #$65, d3
db 0x3A, 0x20 ; 00D5F2: provisional 68k move.w -(a0), d5
db 0x4F, 0x62 ; file 00D5F4
db 0x6A, 0x65 ; 00D5F6: provisional 68k bpl.b $d65d
db 0x63, 0x74 ; 00D5F8: provisional 68k bls.b $d66e
db 0x20, 0x6E, 0x6F, 0x74 ; 00D5FA: provisional 68k movea.l $6f74(a6), a0
db 0x20, 0x69, 0x6E, 0x20 ; 00D5FE: provisional 68k movea.l $6e20(a1), a0
db 0x64, 0x73 ; 00D602: provisional 68k bcc.b $d677
db 0x70, 0x00 ; 00D604: provisional 68k moveq #$0, d0
