; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011318–0113CF, inclusive.
cdi_nodv_entry_011318:
db 0x52, 0x47 ; 011318: provisional 68k addq.w #$1, d7
db 0x4A, 0x80 ; 01131A: provisional 68k tst.l d0
db 0x67, 0x5A ; 01131C: provisional 68k beq.b $11378
db 0x3F, 0x07 ; 01131E: provisional 68k move.w d7, -(a7)
db 0x53, 0x47 ; 011320: provisional 68k subq.w #$1, d7
db 0x48, 0x7A, 0x00, 0x08 ; 011322: provisional 68k pea.l $1132c(pc)
db 0x61, 0x00, 0xB8, 0xA8 ; 011326: provisional 68k bsr.w $cbd0
db 0x60, 0x04 ; 01132A: provisional 68k bra.b $11330
db 0x7C, 0x20 ; 01132C: provisional 68k moveq #$20, d6
db 0x20, 0x00 ; 01132E: provisional 68k move.l d0, d0
db 0x51, 0xCF, 0xFF, 0xF0 ; 011330: provisional 68k dbra d7, $11322
db 0x3E, 0x1F ; 011334: provisional 68k move.w (a7)+, d7
db 0x20, 0x40 ; 011336: provisional 68k movea.l d0, a0
db 0x42, 0xE7 ; 011338: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 01133A: provisional 68k pea.l $11344(pc)
db 0x61, 0x00, 0xB8, 0x90 ; 01133E: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 011342: provisional 68k bra.b $11346
db 0x20, 0x00 ; 011344: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 011346: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xB7, 0x8A ; 011348: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 01134C: provisional 68k move.w (a7)+, ccr
db 0x48, 0x7A, 0x00, 0x08 ; 01134E: provisional 68k pea.l $11358(pc)
db 0x61, 0x00, 0xB8, 0x7C ; 011352: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 011356: provisional 68k bra.b $1135a
db 0x20, 0x00 ; 011358: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 01135A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFD, 0xBC ; 01135C: provisional 68k bsr.w $1111a
db 0x61, 0x00, 0xB8, 0x54 ; 011360: provisional 68k bsr.w $cbb6
db 0x20, 0x28, 0x00, 0x10 ; 011364: provisional 68k move.l $10(a0), d0
db 0x67, 0x08 ; 011368: provisional 68k beq.b $11372
db 0x2F, 0x08 ; 01136A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFF, 0xAA ; 01136C: provisional 68k bsr.w $11318
db 0x20, 0x5F ; 011370: provisional 68k movea.l (a7)+, a0
db 0x20, 0x28, 0x00, 0x14 ; 011372: provisional 68k move.l $14(a0), d0
db 0x66, 0xA6 ; 011376: provisional 68k bne.b $1131e
db 0x53, 0x47 ; 011378: provisional 68k subq.w #$1, d7
db 0x4E, 0x75 ; 01137A: provisional 68k rts 
db 0x4E, 0x71 ; 01137C: provisional 68k nop 
db 0x4B, 0xEE, 0xD0, 0x04 ; 01137E: provisional 68k lea.l -$2ffc(a6), a5
db 0x30, 0x3C, 0x00, 0x0E ; 011382: provisional 68k move.w #$e, d0
db 0x32, 0x3C, 0x01, 0x18 ; 011386: provisional 68k move.w #$118, d1
db 0x24, 0x3C, 0x00, 0x00, 0x99, 0x58 ; 01138A: provisional 68k move.l #$9958, d2
db 0x61, 0x00, 0x00, 0x3E ; 011390: provisional 68k bsr.w $113d0
db 0x4B, 0xEE, 0xD0, 0x14 ; 011394: provisional 68k lea.l -$2fec(a6), a5
db 0x30, 0x3C, 0x00, 0xC8 ; 011398: provisional 68k move.w #$c8, d0
db 0x32, 0x3C, 0x00, 0x4C ; 01139C: provisional 68k move.w #$4c, d1
db 0x24, 0x3C, 0x00, 0x00, 0xA8, 0xA8 ; 0113A0: provisional 68k move.l #$a8a8, d2
db 0x61, 0x00, 0x00, 0x28 ; 0113A6: provisional 68k bsr.w $113d0
db 0x61, 0x00, 0x00, 0x56 ; 0113AA: provisional 68k bsr.w $11402
db 0x2D, 0x4D, 0xD0, 0x00 ; 0113AE: provisional 68k move.l a5, -$3000(a6)
db 0x48, 0x7A, 0x00, 0x0A ; 0113B2: provisional 68k pea.l $113be(pc)
db 0x2F, 0x0D ; 0113B6: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFD, 0xE8 ; 0113B8: provisional 68k bsr.w $111a2
db 0x60, 0x0A ; 0113BC: provisional 68k bra.b $113c8
db 0x72, 0x6F ; 0113BE: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 0113C0: provisional 68k ble.b $11436
db 0x72, 0x6F ; 0113C2: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 0113C4: provisional 68k ble.b $1143a
db 0x00, 0x00, 0x3B, 0x7C ; 0113C6: provisional 68k ori.b #$7c, d0
db 0x00, 0x00, 0x00, 0x0A ; 0113CA: provisional 68k ori.b #$a, d0
db 0x4E, 0x75 ; 0113CE: provisional 68k rts 
