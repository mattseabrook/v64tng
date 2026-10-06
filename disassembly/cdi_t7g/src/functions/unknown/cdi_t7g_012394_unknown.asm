; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012394–0124DF, inclusive.
cdi_t7g_entry_012394:
db 0xD2, 0x40 ; 012394: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 012396: provisional 68k subq.w #$1, d1
db 0xD6, 0x42 ; 012398: provisional 68k add.w d2, d3
db 0x53, 0x43 ; 01239A: provisional 68k subq.w #$1, d3
db 0xB4, 0x41 ; 01239C: provisional 68k cmp.w d1, d2
db 0x6E, 0x1E ; 01239E: provisional 68k bgt.b $123be
db 0xB0, 0x43 ; 0123A0: provisional 68k cmp.w d3, d0
db 0x6E, 0x1A ; 0123A2: provisional 68k bgt.b $123be
db 0xB4, 0x40 ; 0123A4: provisional 68k cmp.w d0, d2
db 0x6D, 0x04 ; 0123A6: provisional 68k blt.b $123ac
db 0x30, 0x02 ; 0123A8: provisional 68k move.w d2, d0
db 0x60, 0x02 ; 0123AA: provisional 68k bra.b $123ae
db 0x34, 0x00 ; 0123AC: provisional 68k move.w d0, d2
db 0xB6, 0x41 ; 0123AE: provisional 68k cmp.w d1, d3
db 0x6E, 0x02 ; 0123B0: provisional 68k bgt.b $123b4
db 0x32, 0x03 ; 0123B2: provisional 68k move.w d3, d1
db 0x92, 0x40 ; 0123B4: provisional 68k sub.w d0, d1
db 0x52, 0x41 ; 0123B6: provisional 68k addq.w #$1, d1
db 0x02, 0x3C, 0x00, 0x0E ; 0123B8: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 0123BC: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 0123BE: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 0123C2: provisional 68k rts 
db 0x20, 0x2E, 0xCF, 0xE8 ; 0123C4: provisional 68k move.l -$3018(a6), d0
db 0x22, 0x2E, 0xCF, 0xEC ; 0123C8: provisional 68k move.l -$3014(a6), d1
db 0x2B, 0x40, 0x00, 0x2E ; 0123CC: provisional 68k move.l d0, $2e(a5)
db 0x2B, 0x41, 0x00, 0x32 ; 0123D0: provisional 68k move.l d1, $32(a5)
db 0x3B, 0x7C, 0x00, 0x00, 0x00, 0x1C ; 0123D4: provisional 68k move.w #$0, $1c(a5)
db 0x1B, 0x7C, 0x00, 0x3F, 0x00, 0x36 ; 0123DA: provisional 68k move.b #$3f, $36(a5)
db 0x1B, 0x7C, 0x00, 0x3F, 0x00, 0x37 ; 0123E0: provisional 68k move.b #$3f, $37(a5)
db 0x2B, 0x7C, 0x00, 0x12, 0x80, 0x80, 0x00, 0x50 ; 0123E6: provisional 68k move.l #$128080, $50(a5)
db 0x2B, 0x7C, 0x00, 0x12, 0x80, 0x80, 0x00, 0x54 ; 0123EE: provisional 68k move.l #$128080, $54(a5)
db 0x4E, 0x75 ; 0123F6: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 0123F8: provisional 68k pea.l $12402(pc)
db 0x61, 0x00, 0x99, 0x52 ; 0123FC: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 012400: provisional 68k bra.b $1240a
db 0x64, 0x73 ; 012402: provisional 68k bcc.b $12477
db 0x70, 0x20 ; 012404: provisional 68k moveq #$20, d0
db 0x2D, 0x20 ; 012406: provisional 68k move.l -(a0), -(a6)
db 0x00, 0x00, 0x2F, 0x0D ; 012408: provisional 68k ori.b #$d, d0
db 0x61, 0x00, 0xDF, 0x5E ; 01240C: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 012410: provisional 68k rts 
db 0x4E, 0x75 ; 012412: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 012414: provisional 68k pea.l $1241e(pc)
db 0x61, 0x00, 0x99, 0x36 ; 012418: provisional 68k bsr.w $bd50
db 0x60, 0x1E ; 01241C: provisional 68k bra.b $1243c
db 0x64, 0x73 ; 01241E: provisional 68k bcc.b $12493
db 0x70, 0x5F ; 012420: provisional 68k moveq #$5f, d0
db 0x64, 0x65 ; 012422: provisional 68k bcc.b $12489
db 0x73, 0x74 ; file 012424
db 0x72, 0x6F ; 012426: provisional 68k moveq #$6f, d1
db 0x79, 0x20 ; file 012428
db 0x3A, 0x20 ; 01242A: provisional 68k move.w -(a0), d5
db 0x4B, 0x69 ; file 01242C
db 0x6C, 0x6C ; 01242E: provisional 68k bge.b $1249c
db 0x69, 0x6E ; 012430: provisional 68k bvs.b $124a0
db 0x67, 0x20 ; 012432: provisional 68k beq.b $12454
db 0x6F, 0x62 ; 012434: provisional 68k ble.b $12498
db 0x6A, 0x65 ; 012436: provisional 68k bpl.b $1249d
db 0x63, 0x74 ; 012438: provisional 68k bls.b $124ae
db 0x00, 0x00, 0x4E, 0x75 ; 01243A: provisional 68k ori.b #$75, d0
db 0x4E, 0x75 ; 01243E: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 012440: provisional 68k movem.l -$3018(a6), d1-d3
db 0x3F, 0x03 ; 012446: provisional 68k move.w d3, -(a7)
db 0x61, 0x00, 0xE7, 0x78 ; 012448: provisional 68k bsr.w $10bc2
db 0x3B, 0x41, 0x00, 0x1C ; 01244C: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x42, 0x00, 0x1E ; 012450: provisional 68k move.w d2, $1e(a5)
db 0x3F, 0x02 ; 012454: provisional 68k move.w d2, -(a7)
db 0x2F, 0x08 ; 012456: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x9B, 0xD0 ; 012458: provisional 68k bsr.w $c02a
db 0x65, 0x06 ; 01245C: provisional 68k bcs.b $12464
db 0x2B, 0x48, 0x00, 0x20 ; 01245E: provisional 68k move.l a0, $20(a5)
db 0x4E, 0x75 ; 012462: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012464: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x99, 0x14 ; 012468: provisional 68k bsr.w $bd7e
db 0x73, 0x6D ; file 01246C
db 0x61, 0x70 ; 01246E: provisional 68k bsr.b $124e0
db 0x5F, 0x63 ; 012470: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 012472: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 012474: provisional 68k bsr.b $124ea
db 0x65, 0x20 ; 012476: provisional 68k bcs.b $12498
db 0x3A, 0x20 ; 012478: provisional 68k move.w -(a0), d5
db 0x43, 0x6F, 0x75, 0x6C ; file 01247A
db 0x64, 0x6E ; 01247E: provisional 68k bcc.b $124ee
db 0x27, 0x74, 0x20, 0x61, 0x6C, 0x6C ; 012480: provisional 68k move.l $61(a4, d2.w), $6c6c(a3)
db 0x6F, 0x63 ; 012486: provisional 68k ble.b $124eb
db 0x61, 0x74 ; 012488: provisional 68k bsr.b $124fe
db 0x65, 0x20 ; 01248A: provisional 68k bcs.b $124ac
db 0x64, 0x2D ; 01248C: provisional 68k bcc.b $124bb
db 0x6E, 0x6F ; 01248E: provisional 68k bgt.b $124ff
db 0x64, 0x65 ; 012490: provisional 68k bcc.b $124f7
db 0x73, 0x00 ; file 012492
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 012494: provisional 68k movem.l -$3018(a6), d1-d3
db 0x3F, 0x03 ; 01249A: provisional 68k move.w d3, -(a7)
db 0x2F, 0x02 ; 01249C: provisional 68k move.l d2, -(a7)
db 0x3F, 0x01 ; 01249E: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x20 ; 0124A0: provisional 68k move.l $20(a5), -(a7)
db 0x61, 0x00, 0xC0, 0x36 ; 0124A4: provisional 68k bsr.w $e4dc
db 0x4E, 0x75 ; 0124A8: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 0124AA: provisional 68k pea.l $124b4(pc)
db 0x61, 0x00, 0x98, 0xA0 ; 0124AE: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 0124B2: provisional 68k bra.b $124bc
db 0x73, 0x6D ; file 0124B4
db 0x61, 0x70 ; 0124B6: provisional 68k bsr.b $12528
db 0x20, 0x2D, 0x20, 0x00 ; 0124B8: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 0124BC: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xDE, 0xAC ; 0124BE: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 0124C2: provisional 68k rts 
db 0x4E, 0x75 ; 0124C4: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x20 ; 0124C6: provisional 68k move.l $20(a5), -(a7)
db 0x61, 0x00, 0x9C, 0xAC ; 0124CA: provisional 68k bsr.w $c178
db 0x4E, 0x75 ; 0124CE: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x06, 0xCF, 0xE8 ; 0124D0: provisional 68k movem.l -$3018(a6), d1-d2
db 0x2B, 0x41, 0x00, 0x1C ; 0124D6: provisional 68k move.l d1, $1c(a5)
db 0x2B, 0x42, 0x00, 0x20 ; 0124DA: provisional 68k move.l d2, $20(a5)
db 0x42, 0x6D ; file 0124DE
