; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0108E6–010A03, inclusive.
cdi_t7g_entry_0108e6:
db 0x3F, 0x04 ; 0108E6: provisional 68k move.w d4, -(a7)
db 0x2F, 0x0D ; 0108E8: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFF, 0x20 ; 0108EA: provisional 68k bsr.w $1080c
db 0x36, 0x03 ; 0108EE: provisional 68k move.w d3, d3
db 0x38, 0x04 ; 0108F0: provisional 68k move.w d4, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 0108F2: provisional 68k move.w #$0, d5
db 0x3C, 0x06 ; 0108F6: provisional 68k move.w d6, d6
db 0x3E, 0x2D, 0x00, 0x22 ; 0108F8: provisional 68k move.w $22(a5), d7
db 0x20, 0x48 ; 0108FC: provisional 68k movea.l a0, a0
db 0x30, 0x2E, 0xAD, 0xA2 ; 0108FE: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 010902: provisional 68k moveq #$56, d1
db 0x74, 0x08 ; 010904: provisional 68k moveq #$8, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010906: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4E, 0x75 ; 01090A: provisional 68k rts 
db 0x4E, 0x75 ; 01090C: provisional 68k rts 
db 0x42, 0x6D, 0x00, 0x1C ; 01090E: provisional 68k clr.w $1c(a5)
db 0x42, 0x6D, 0x00, 0x1E ; 010912: provisional 68k clr.w $1e(a5)
db 0x42, 0x6D, 0x00, 0x20 ; 010916: provisional 68k clr.w $20(a5)
db 0x42, 0xAD, 0x00, 0x22 ; 01091A: provisional 68k clr.l $22(a5)
db 0x42, 0xAD, 0x00, 0x2C ; 01091E: provisional 68k clr.l $2c(a5)
db 0x42, 0xAD, 0x00, 0x30 ; 010922: provisional 68k clr.l $30(a5)
db 0x42, 0xAD, 0x00, 0x34 ; 010926: provisional 68k clr.l $34(a5)
db 0x22, 0x2E, 0xCF, 0xE8 ; 01092A: provisional 68k move.l -$3018(a6), d1
db 0x20, 0x2E, 0xCF, 0xEC ; 01092E: provisional 68k move.l -$3014(a6), d0
db 0xB0, 0xBC, 0x00, 0x00, 0x04, 0x00 ; 010932: provisional 68k cmp.l #$400, d0
db 0x6B, 0x00, 0x00, 0x36 ; 010938: provisional 68k bmi.w $10970
db 0x20, 0x40 ; 01093C: provisional 68k movea.l d0, a0
db 0x3B, 0x68, 0x00, 0x2A, 0x00, 0x2A ; 01093E: provisional 68k move.w $2a(a0), $2a(a5)
db 0x3F, 0x01 ; 010944: provisional 68k move.w d1, -(a7)
db 0x2F, 0x00 ; 010946: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0xB6, 0xE0 ; 010948: provisional 68k bsr.w $c02a
db 0x65, 0x00, 0x00, 0x2E ; 01094C: provisional 68k bcs.w $1097c
db 0x3B, 0x41, 0x00, 0x1C ; 010950: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x41, 0x00, 0x1E ; 010954: provisional 68k move.w d1, $1e(a5)
db 0x2B, 0x48, 0x00, 0x22 ; 010958: provisional 68k move.l a0, $22(a5)
db 0x2B, 0x40, 0x00, 0x2C ; 01095C: provisional 68k move.l d0, $2c(a5)
db 0x53, 0x41 ; 010960: provisional 68k subq.w #$1, d1
db 0x21, 0x4D, 0x09, 0x30 ; 010962: provisional 68k move.l a5, $930(a0)
db 0x20, 0x68, 0x09, 0x34 ; 010966: provisional 68k movea.l $934(a0), a0
db 0x51, 0xC9, 0xFF, 0xF6 ; 01096A: provisional 68k dbra d1, $10962
db 0x4E, 0x75 ; 01096E: provisional 68k rts 
db 0x3B, 0x40, 0x00, 0x2A ; 010970: provisional 68k move.w d0, $2a(a5)
db 0x61, 0x00, 0x00, 0xB0 ; 010974: provisional 68k bsr.w $10a26
db 0x65, 0x40 ; 010978: provisional 68k bcs.b $109ba
db 0x4E, 0x75 ; 01097A: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 01097C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB3, 0xFC ; 010980: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 010984: provisional 68k bcc.b $109f4
db 0x6C, 0x69 ; 010986: provisional 68k bge.b $109f1
db 0x73, 0x74 ; file 010988
db 0x5F, 0x63 ; 01098A: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 01098C: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 01098E: provisional 68k bsr.b $10a04
db 0x65, 0x20 ; 010990: provisional 68k bcs.b $109b2
db 0x3A, 0x20 ; 010992: provisional 68k move.w -(a0), d5
db 0x43, 0x6F, 0x75, 0x6C ; file 010994
db 0x64, 0x6E ; 010998: provisional 68k bcc.b $10a08
db 0x27, 0x74, 0x20, 0x61, 0x6C, 0x6C ; 01099A: provisional 68k move.l $61(a4, d2.w), $6c6c(a3)
db 0x6F, 0x63 ; 0109A0: provisional 68k ble.b $10a05
db 0x61, 0x74 ; 0109A2: provisional 68k bsr.b $10a18
db 0x65, 0x20 ; 0109A4: provisional 68k bcs.b $109c6
db 0x66, 0x72 ; 0109A6: provisional 68k bne.b $10a1a
db 0x6F, 0x6D ; 0109A8: provisional 68k ble.b $10a17
db 0x20, 0x73, 0x6F, 0x75, 0x72, 0x63, 0x65, 0x20 ; 0109AA: provisional 68k movea.l ([$72636520, a3]), a0
db 0x64, 0x6E ; 0109B2: provisional 68k bcc.b $10a22
db 0x6C, 0x69 ; 0109B4: provisional 68k bge.b $10a1f
db 0x73, 0x74 ; file 0109B6
db 0x00, 0x00, 0x42, 0xE7 ; 0109B8: provisional 68k ori.b #$e7, d0
db 0x48, 0x7A, 0x00, 0x08 ; 0109BC: provisional 68k pea.l $109c6(pc)
db 0x61, 0x00, 0xB3, 0x8E ; 0109C0: provisional 68k bsr.w $bd50
db 0x60, 0x22 ; 0109C4: provisional 68k bra.b $109e8
db 0x64, 0x6E ; 0109C6: provisional 68k bcc.b $10a36
db 0x6C, 0x73 ; 0109C8: provisional 68k bge.b $10a3d
db 0x69, 0x74 ; 0109CA: provisional 68k bvs.b $10a40
db 0x5F, 0x63 ; 0109CC: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 0109CE: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 0109D0: provisional 68k bsr.b $10a46
db 0x65, 0x20 ; 0109D2: provisional 68k bcs.b $109f4
db 0x3A, 0x20 ; 0109D4: provisional 68k move.w -(a0), d5
db 0x46, 0x61 ; 0109D6: provisional 68k not.w -(a1)
db 0x69, 0x6C ; 0109D8: provisional 68k bvs.b $10a46
db 0x65, 0x64 ; 0109DA: provisional 68k bcs.b $10a40
db 0x20, 0x6F, 0x6E, 0x20 ; 0109DC: provisional 68k movea.l $6e20(a7), a0
db 0x70, 0x6C ; 0109E0: provisional 68k moveq #$6c, d0
db 0x61, 0x6E ; 0109E2: provisional 68k bsr.b $10a52
db 0x65, 0x20 ; 0109E4: provisional 68k bcs.b $10a06
db 0x00, 0x00, 0x3F, 0x2D ; 0109E6: provisional 68k ori.b #$2d, d0
db 0x00, 0x2A, 0x61, 0x00, 0xB2, 0xB0 ; 0109EA: provisional 68k ori.b #$0, -$4d50(a2)
db 0x44, 0xDF ; 0109F0: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB3, 0x42 ; 0109F2: provisional 68k bsr.w $bd36
db 0x32, 0x3C, 0x80, 0x00 ; 0109F6: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB3, 0x82 ; 0109FA: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 0109FE: provisional 68k bcc.b $10a6e
db 0x6C, 0x69 ; 010A00: provisional 68k bge.b $10a6b
db 0x73, 0x74 ; file 010A02
