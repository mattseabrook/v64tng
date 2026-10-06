; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E242–00E35D, inclusive.
cdi_t7g_entry_00e242:
db 0x48, 0xE7 ; file 00E242
db 0xFF, 0xFC ; 00E244: provisional 68k dc.w $fffc
db 0x0C, 0x6E, 0x00, 0x00, 0xAB, 0xE4 ; 00E246: provisional 68k cmpi.w #$0, -$541c(a6)
db 0x66, 0x00, 0x00, 0x6C ; 00E24C: provisional 68k bne.w $e2ba
db 0x20, 0x6F, 0x00, 0x3C ; 00E250: provisional 68k movea.l $3c(a7), a0
db 0x2D, 0x48, 0xAC, 0x80 ; 00E254: provisional 68k move.l a0, -$5380(a6)
db 0x42, 0x68, 0x00, 0x00 ; 00E258: provisional 68k clr.w $0(a0)
db 0x31, 0x6E, 0xAC, 0x84, 0x00, 0x02 ; 00E25C: provisional 68k move.w -$537c(a6), $2(a0)
db 0x21, 0x6F, 0x00, 0x40, 0x00, 0x1A ; 00E262: provisional 68k move.l $40(a7), $1a(a0)
db 0x21, 0x6F, 0x00, 0x44, 0x00, 0x04 ; 00E268: provisional 68k move.l $44(a7), $4(a0)
db 0x21, 0x6F, 0x00, 0x48, 0x00, 0x1E ; 00E26E: provisional 68k move.l $48(a7), $1e(a0)
db 0x21, 0x6F, 0x00, 0x4C, 0x00, 0x22 ; 00E274: provisional 68k move.l $4c(a7), $22(a0)
db 0x21, 0x6F, 0x00, 0x50, 0x00, 0x2A ; 00E27A: provisional 68k move.l $50(a7), $2a(a0)
db 0x3D, 0x7C, 0x00, 0x02, 0xAB, 0xE4 ; 00E280: provisional 68k move.w #$2, -$541c(a6)
db 0x30, 0x2E, 0xAB, 0xE6 ; 00E286: provisional 68k move.w -$541a(a6), d0
db 0x22, 0x28, 0x00, 0x1A ; 00E28A: provisional 68k move.l $1a(a0), d1
db 0xED, 0x81 ; 00E28E: provisional 68k asl.l #$6, d1
db 0xEB, 0x81 ; 00E290: provisional 68k asl.l #$5, d1
db 0x4E, 0x40, 0x00, 0x88 ; 00E292: provisional 68k trap #0 ; OS-9 service word $0088
db 0x65, 0x00, 0x00, 0xA4 ; 00E296: provisional 68k bcs.w $e33c
db 0x20, 0x6E, 0xAC, 0x80 ; 00E29A: provisional 68k movea.l -$5380(a6), a0
db 0x30, 0x2E, 0xAB, 0xE6 ; 00E29E: provisional 68k move.w -$541a(a6), d0
db 0x32, 0x3C, 0x00, 0x2D ; 00E2A2: provisional 68k move.w #$2d, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00E2A6: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x46 ; 00E2AA: provisional 68k bcs.b $e2f2
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E2AC: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x18 ; 00E2B0: provisional 68k move.l (a7), $18(a7)
db 0x4F, 0xEF, 0x00, 0x18 ; 00E2B4: provisional 68k lea.l $18(a7), a7
db 0x4E, 0x75 ; 00E2B8: provisional 68k rts 
db 0x42, 0xE7 ; 00E2BA: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E2BC: provisional 68k pea.l $e2c6(pc)
db 0x61, 0x00, 0xDA, 0x8E ; 00E2C0: provisional 68k bsr.w $bd50
db 0x60, 0x18 ; 00E2C4: provisional 68k bra.b $e2de
db 0x67, 0x66 ; 00E2C6: provisional 68k beq.b $e32e
db 0x6D, 0x5F ; 00E2C8: provisional 68k blt.b $e329
db 0x70, 0x6C ; 00E2CA: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00E2CC: provisional 68k bsr.b $e347
db 0x20, 0x41 ; 00E2CE: provisional 68k movea.l d1, a0
db 0x6C, 0x72 ; 00E2D0: provisional 68k bge.b $e344
db 0x65, 0x61 ; 00E2D2: provisional 68k bcs.b $e335
db 0x64, 0x79 ; 00E2D4: provisional 68k bcc.b $e34f
db 0x20, 0x62 ; 00E2D6: provisional 68k movea.l -(a2), a0
db 0x75, 0x73, 0x79, 0x3A ; file 00E2D8
db 0x20, 0x00 ; 00E2DC: provisional 68k move.l d0, d0
db 0x2F, 0x2E, 0xAC, 0x80 ; 00E2DE: provisional 68k move.l -$5380(a6), -(a7)
db 0x61, 0x00, 0xD9, 0x70 ; 00E2E2: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00E2E6: provisional 68k move.w (a7)+, ccr
db 0x32, 0x3C, 0x80, 0x00 ; 00E2E8: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xDA, 0x90 ; 00E2EC: provisional 68k bsr.w $bd7e
db 0x20, 0x00 ; 00E2F0: provisional 68k move.l d0, d0
db 0x42, 0xE7 ; 00E2F2: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E2F4: provisional 68k pea.l $e2fe(pc)
db 0x61, 0x00, 0xDA, 0x56 ; 00E2F8: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00E2FC: provisional 68k bra.b $e308
db 0x73, 0x73 ; file 00E2FE
db 0x5F, 0x70, 0x6C, 0x61 ; 00E300: provisional 68k subq.w #$7, $61(a0, d6.l)
db 0x79, 0x20 ; file 00E304
db 0x00, 0x00, 0x3F, 0x01 ; 00E306: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xD9, 0x92 ; 00E30A: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00E30E: provisional 68k move.w (a7)+, ccr
db 0x32, 0x01 ; 00E310: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xDA, 0x6A ; 00E312: provisional 68k bsr.w $bd7e
db 0x64, 0x65 ; 00E316: provisional 68k bcc.b $e37d
db 0x6C, 0x5F ; 00E318: provisional 68k bge.b $e379
db 0x70, 0x6C ; 00E31A: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00E31C: provisional 68k bsr.b $e397
db 0x3A, 0x20 ; 00E31E: provisional 68k move.w -(a0), d5
db 0x45, 0x72 ; file 00E320
db 0x72, 0x6F ; 00E322: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 00E324: provisional 68k moveq #$20, d1
db 0x72, 0x65 ; 00E326: provisional 68k moveq #$65, d1
db 0x74, 0x75 ; 00E328: provisional 68k moveq #$75, d2
db 0x72, 0x6E ; 00E32A: provisional 68k moveq #$6e, d1
db 0x65, 0x64 ; 00E32C: provisional 68k bcs.b $e392
db 0x20, 0x66 ; 00E32E: provisional 68k movea.l -(a6), a0
db 0x72, 0x6F ; 00E330: provisional 68k moveq #$6f, d1
db 0x6D, 0x20 ; 00E332: provisional 68k blt.b $e354
db 0x73, 0x73 ; file 00E334
db 0x5F, 0x70, 0x6C, 0x61 ; 00E336: provisional 68k subq.w #$7, $61(a0, d6.l)
db 0x79, 0x00 ; file 00E33A
db 0x32, 0x01 ; 00E33C: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xDA, 0x3E ; 00E33E: provisional 68k bsr.w $bd7e
db 0x67, 0x66 ; 00E342: provisional 68k beq.b $e3aa
db 0x6D, 0x5F ; 00E344: provisional 68k blt.b $e3a5
db 0x70, 0x6C ; 00E346: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00E348: provisional 68k bsr.b $e3c3
db 0x3A, 0x20 ; 00E34A: provisional 68k move.w -(a0), d5
db 0x45, 0x72 ; file 00E34C
db 0x72, 0x6F ; 00E34E: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 00E350: provisional 68k moveq #$20, d1
db 0x66, 0x72 ; 00E352: provisional 68k bne.b $e3c6
db 0x6F, 0x6D ; 00E354: provisional 68k ble.b $e3c3
db 0x20, 0x49 ; 00E356: provisional 68k movea.l a1, a0
db 0x24, 0x53 ; 00E358: provisional 68k movea.l (a3), a2
db 0x65, 0x65 ; 00E35A: provisional 68k bcs.b $e3c1
db 0x6B, 0x00 ; file 00E35C
