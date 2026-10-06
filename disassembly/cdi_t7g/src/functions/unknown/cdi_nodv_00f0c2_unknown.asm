; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F0C2–00F1DD, inclusive.
cdi_nodv_entry_00f0c2:
db 0x48, 0xE7 ; file 00F0C2
db 0xFF, 0xFC ; 00F0C4: provisional 68k dc.w $fffc
db 0x0C, 0x6E, 0x00, 0x00, 0xAB, 0xE4 ; 00F0C6: provisional 68k cmpi.w #$0, -$541c(a6)
db 0x66, 0x00, 0x00, 0x6C ; 00F0CC: provisional 68k bne.w $f13a
db 0x20, 0x6F, 0x00, 0x3C ; 00F0D0: provisional 68k movea.l $3c(a7), a0
db 0x2D, 0x48, 0xAC, 0x80 ; 00F0D4: provisional 68k move.l a0, -$5380(a6)
db 0x42, 0x68, 0x00, 0x00 ; 00F0D8: provisional 68k clr.w $0(a0)
db 0x31, 0x6E, 0xAC, 0x84, 0x00, 0x02 ; 00F0DC: provisional 68k move.w -$537c(a6), $2(a0)
db 0x21, 0x6F, 0x00, 0x40, 0x00, 0x1A ; 00F0E2: provisional 68k move.l $40(a7), $1a(a0)
db 0x21, 0x6F, 0x00, 0x44, 0x00, 0x04 ; 00F0E8: provisional 68k move.l $44(a7), $4(a0)
db 0x21, 0x6F, 0x00, 0x48, 0x00, 0x1E ; 00F0EE: provisional 68k move.l $48(a7), $1e(a0)
db 0x21, 0x6F, 0x00, 0x4C, 0x00, 0x22 ; 00F0F4: provisional 68k move.l $4c(a7), $22(a0)
db 0x21, 0x6F, 0x00, 0x50, 0x00, 0x2A ; 00F0FA: provisional 68k move.l $50(a7), $2a(a0)
db 0x3D, 0x7C, 0x00, 0x02, 0xAB, 0xE4 ; 00F100: provisional 68k move.w #$2, -$541c(a6)
db 0x30, 0x2E, 0xAB, 0xE6 ; 00F106: provisional 68k move.w -$541a(a6), d0
db 0x22, 0x28, 0x00, 0x1A ; 00F10A: provisional 68k move.l $1a(a0), d1
db 0xED, 0x81 ; 00F10E: provisional 68k asl.l #$6, d1
db 0xEB, 0x81 ; 00F110: provisional 68k asl.l #$5, d1
db 0x4E, 0x40, 0x00, 0x88 ; 00F112: provisional 68k trap #0 ; OS-9 service word $0088
db 0x65, 0x00, 0x00, 0xA4 ; 00F116: provisional 68k bcs.w $f1bc
db 0x20, 0x6E, 0xAC, 0x80 ; 00F11A: provisional 68k movea.l -$5380(a6), a0
db 0x30, 0x2E, 0xAB, 0xE6 ; 00F11E: provisional 68k move.w -$541a(a6), d0
db 0x32, 0x3C, 0x00, 0x2D ; 00F122: provisional 68k move.w #$2d, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00F126: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x46 ; 00F12A: provisional 68k bcs.b $f172
db 0x4C, 0xDF, 0x3F, 0xFF ; 00F12C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x18 ; 00F130: provisional 68k move.l (a7), $18(a7)
db 0x4F, 0xEF, 0x00, 0x18 ; 00F134: provisional 68k lea.l $18(a7), a7
db 0x4E, 0x75 ; 00F138: provisional 68k rts 
db 0x42, 0xE7 ; 00F13A: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00F13C: provisional 68k pea.l $f146(pc)
db 0x61, 0x00, 0xDA, 0x8E ; 00F140: provisional 68k bsr.w $cbd0
db 0x60, 0x18 ; 00F144: provisional 68k bra.b $f15e
db 0x67, 0x66 ; 00F146: provisional 68k beq.b $f1ae
db 0x6D, 0x5F ; 00F148: provisional 68k blt.b $f1a9
db 0x70, 0x6C ; 00F14A: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00F14C: provisional 68k bsr.b $f1c7
db 0x20, 0x41 ; 00F14E: provisional 68k movea.l d1, a0
db 0x6C, 0x72 ; 00F150: provisional 68k bge.b $f1c4
db 0x65, 0x61 ; 00F152: provisional 68k bcs.b $f1b5
db 0x64, 0x79 ; 00F154: provisional 68k bcc.b $f1cf
db 0x20, 0x62 ; 00F156: provisional 68k movea.l -(a2), a0
db 0x75, 0x73, 0x79, 0x3A ; file 00F158
db 0x20, 0x00 ; 00F15C: provisional 68k move.l d0, d0
db 0x2F, 0x2E, 0xAC, 0x80 ; 00F15E: provisional 68k move.l -$5380(a6), -(a7)
db 0x61, 0x00, 0xD9, 0x70 ; 00F162: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00F166: provisional 68k move.w (a7)+, ccr
db 0x32, 0x3C, 0x80, 0x00 ; 00F168: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xDA, 0x90 ; 00F16C: provisional 68k bsr.w $cbfe
db 0x20, 0x00 ; 00F170: provisional 68k move.l d0, d0
db 0x42, 0xE7 ; 00F172: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00F174: provisional 68k pea.l $f17e(pc)
db 0x61, 0x00, 0xDA, 0x56 ; 00F178: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00F17C: provisional 68k bra.b $f188
db 0x73, 0x73 ; file 00F17E
db 0x5F, 0x70, 0x6C, 0x61 ; 00F180: provisional 68k subq.w #$7, $61(a0, d6.l)
db 0x79, 0x20 ; file 00F184
db 0x00, 0x00, 0x3F, 0x01 ; 00F186: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xD9, 0x92 ; 00F18A: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00F18E: provisional 68k move.w (a7)+, ccr
db 0x32, 0x01 ; 00F190: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xDA, 0x6A ; 00F192: provisional 68k bsr.w $cbfe
db 0x64, 0x65 ; 00F196: provisional 68k bcc.b $f1fd
db 0x6C, 0x5F ; 00F198: provisional 68k bge.b $f1f9
db 0x70, 0x6C ; 00F19A: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00F19C: provisional 68k bsr.b $f217
db 0x3A, 0x20 ; 00F19E: provisional 68k move.w -(a0), d5
db 0x45, 0x72 ; file 00F1A0
db 0x72, 0x6F ; 00F1A2: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 00F1A4: provisional 68k moveq #$20, d1
db 0x72, 0x65 ; 00F1A6: provisional 68k moveq #$65, d1
db 0x74, 0x75 ; 00F1A8: provisional 68k moveq #$75, d2
db 0x72, 0x6E ; 00F1AA: provisional 68k moveq #$6e, d1
db 0x65, 0x64 ; 00F1AC: provisional 68k bcs.b $f212
db 0x20, 0x66 ; 00F1AE: provisional 68k movea.l -(a6), a0
db 0x72, 0x6F ; 00F1B0: provisional 68k moveq #$6f, d1
db 0x6D, 0x20 ; 00F1B2: provisional 68k blt.b $f1d4
db 0x73, 0x73 ; file 00F1B4
db 0x5F, 0x70, 0x6C, 0x61 ; 00F1B6: provisional 68k subq.w #$7, $61(a0, d6.l)
db 0x79, 0x00 ; file 00F1BA
db 0x32, 0x01 ; 00F1BC: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xDA, 0x3E ; 00F1BE: provisional 68k bsr.w $cbfe
db 0x67, 0x66 ; 00F1C2: provisional 68k beq.b $f22a
db 0x6D, 0x5F ; 00F1C4: provisional 68k blt.b $f225
db 0x70, 0x6C ; 00F1C6: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00F1C8: provisional 68k bsr.b $f243
db 0x3A, 0x20 ; 00F1CA: provisional 68k move.w -(a0), d5
db 0x45, 0x72 ; file 00F1CC
db 0x72, 0x6F ; 00F1CE: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 00F1D0: provisional 68k moveq #$20, d1
db 0x66, 0x72 ; 00F1D2: provisional 68k bne.b $f246
db 0x6F, 0x6D ; 00F1D4: provisional 68k ble.b $f243
db 0x20, 0x49 ; 00F1D6: provisional 68k movea.l a1, a0
db 0x24, 0x53 ; 00F1D8: provisional 68k movea.l (a3), a2
db 0x65, 0x65 ; 00F1DA: provisional 68k bcs.b $f241
db 0x6B, 0x00 ; file 00F1DC
