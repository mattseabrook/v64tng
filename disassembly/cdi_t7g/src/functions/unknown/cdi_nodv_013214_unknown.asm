; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013214–01335F, inclusive.
cdi_nodv_entry_013214:
db 0xD2, 0x40 ; 013214: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 013216: provisional 68k subq.w #$1, d1
db 0xD6, 0x42 ; 013218: provisional 68k add.w d2, d3
db 0x53, 0x43 ; 01321A: provisional 68k subq.w #$1, d3
db 0xB4, 0x41 ; 01321C: provisional 68k cmp.w d1, d2
db 0x6E, 0x1E ; 01321E: provisional 68k bgt.b $1323e
db 0xB0, 0x43 ; 013220: provisional 68k cmp.w d3, d0
db 0x6E, 0x1A ; 013222: provisional 68k bgt.b $1323e
db 0xB4, 0x40 ; 013224: provisional 68k cmp.w d0, d2
db 0x6D, 0x04 ; 013226: provisional 68k blt.b $1322c
db 0x30, 0x02 ; 013228: provisional 68k move.w d2, d0
db 0x60, 0x02 ; 01322A: provisional 68k bra.b $1322e
db 0x34, 0x00 ; 01322C: provisional 68k move.w d0, d2
db 0xB6, 0x41 ; 01322E: provisional 68k cmp.w d1, d3
db 0x6E, 0x02 ; 013230: provisional 68k bgt.b $13234
db 0x32, 0x03 ; 013232: provisional 68k move.w d3, d1
db 0x92, 0x40 ; 013234: provisional 68k sub.w d0, d1
db 0x52, 0x41 ; 013236: provisional 68k addq.w #$1, d1
db 0x02, 0x3C, 0x00, 0x0E ; 013238: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 01323C: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 01323E: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 013242: provisional 68k rts 
db 0x20, 0x2E, 0xCF, 0xE8 ; 013244: provisional 68k move.l -$3018(a6), d0
db 0x22, 0x2E, 0xCF, 0xEC ; 013248: provisional 68k move.l -$3014(a6), d1
db 0x2B, 0x40, 0x00, 0x2E ; 01324C: provisional 68k move.l d0, $2e(a5)
db 0x2B, 0x41, 0x00, 0x32 ; 013250: provisional 68k move.l d1, $32(a5)
db 0x3B, 0x7C, 0x00, 0x00, 0x00, 0x1C ; 013254: provisional 68k move.w #$0, $1c(a5)
db 0x1B, 0x7C, 0x00, 0x3F, 0x00, 0x36 ; 01325A: provisional 68k move.b #$3f, $36(a5)
db 0x1B, 0x7C, 0x00, 0x3F, 0x00, 0x37 ; 013260: provisional 68k move.b #$3f, $37(a5)
db 0x2B, 0x7C, 0x00, 0x12, 0x80, 0x80, 0x00, 0x50 ; 013266: provisional 68k move.l #$128080, $50(a5)
db 0x2B, 0x7C, 0x00, 0x12, 0x80, 0x80, 0x00, 0x54 ; 01326E: provisional 68k move.l #$128080, $54(a5)
db 0x4E, 0x75 ; 013276: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 013278: provisional 68k pea.l $13282(pc)
db 0x61, 0x00, 0x99, 0x52 ; 01327C: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 013280: provisional 68k bra.b $1328a
db 0x64, 0x73 ; 013282: provisional 68k bcc.b $132f7
db 0x70, 0x20 ; 013284: provisional 68k moveq #$20, d0
db 0x2D, 0x20 ; 013286: provisional 68k move.l -(a0), -(a6)
db 0x00, 0x00, 0x2F, 0x0D ; 013288: provisional 68k ori.b #$d, d0
db 0x61, 0x00, 0xDF, 0x5E ; 01328C: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 013290: provisional 68k rts 
db 0x4E, 0x75 ; 013292: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 013294: provisional 68k pea.l $1329e(pc)
db 0x61, 0x00, 0x99, 0x36 ; 013298: provisional 68k bsr.w $cbd0
db 0x60, 0x1E ; 01329C: provisional 68k bra.b $132bc
db 0x64, 0x73 ; 01329E: provisional 68k bcc.b $13313
db 0x70, 0x5F ; 0132A0: provisional 68k moveq #$5f, d0
db 0x64, 0x65 ; 0132A2: provisional 68k bcc.b $13309
db 0x73, 0x74 ; file 0132A4
db 0x72, 0x6F ; 0132A6: provisional 68k moveq #$6f, d1
db 0x79, 0x20 ; file 0132A8
db 0x3A, 0x20 ; 0132AA: provisional 68k move.w -(a0), d5
db 0x4B, 0x69 ; file 0132AC
db 0x6C, 0x6C ; 0132AE: provisional 68k bge.b $1331c
db 0x69, 0x6E ; 0132B0: provisional 68k bvs.b $13320
db 0x67, 0x20 ; 0132B2: provisional 68k beq.b $132d4
db 0x6F, 0x62 ; 0132B4: provisional 68k ble.b $13318
db 0x6A, 0x65 ; 0132B6: provisional 68k bpl.b $1331d
db 0x63, 0x74 ; 0132B8: provisional 68k bls.b $1332e
db 0x00, 0x00, 0x4E, 0x75 ; 0132BA: provisional 68k ori.b #$75, d0
db 0x4E, 0x75 ; 0132BE: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 0132C0: provisional 68k movem.l -$3018(a6), d1-d3
db 0x3F, 0x03 ; 0132C6: provisional 68k move.w d3, -(a7)
db 0x61, 0x00, 0xE7, 0x78 ; 0132C8: provisional 68k bsr.w $11a42
db 0x3B, 0x41, 0x00, 0x1C ; 0132CC: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x42, 0x00, 0x1E ; 0132D0: provisional 68k move.w d2, $1e(a5)
db 0x3F, 0x02 ; 0132D4: provisional 68k move.w d2, -(a7)
db 0x2F, 0x08 ; 0132D6: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x9B, 0xD0 ; 0132D8: provisional 68k bsr.w $ceaa
db 0x65, 0x06 ; 0132DC: provisional 68k bcs.b $132e4
db 0x2B, 0x48, 0x00, 0x20 ; 0132DE: provisional 68k move.l a0, $20(a5)
db 0x4E, 0x75 ; 0132E2: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0132E4: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x99, 0x14 ; 0132E8: provisional 68k bsr.w $cbfe
db 0x73, 0x6D ; file 0132EC
db 0x61, 0x70 ; 0132EE: provisional 68k bsr.b $13360
db 0x5F, 0x63 ; 0132F0: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 0132F2: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 0132F4: provisional 68k bsr.b $1336a
db 0x65, 0x20 ; 0132F6: provisional 68k bcs.b $13318
db 0x3A, 0x20 ; 0132F8: provisional 68k move.w -(a0), d5
db 0x43, 0x6F, 0x75, 0x6C ; file 0132FA
db 0x64, 0x6E ; 0132FE: provisional 68k bcc.b $1336e
db 0x27, 0x74, 0x20, 0x61, 0x6C, 0x6C ; 013300: provisional 68k move.l $61(a4, d2.w), $6c6c(a3)
db 0x6F, 0x63 ; 013306: provisional 68k ble.b $1336b
db 0x61, 0x74 ; 013308: provisional 68k bsr.b $1337e
db 0x65, 0x20 ; 01330A: provisional 68k bcs.b $1332c
db 0x64, 0x2D ; 01330C: provisional 68k bcc.b $1333b
db 0x6E, 0x6F ; 01330E: provisional 68k bgt.b $1337f
db 0x64, 0x65 ; 013310: provisional 68k bcc.b $13377
db 0x73, 0x00 ; file 013312
db 0x4C, 0xEE, 0x00, 0x0E, 0xCF, 0xE8 ; 013314: provisional 68k movem.l -$3018(a6), d1-d3
db 0x3F, 0x03 ; 01331A: provisional 68k move.w d3, -(a7)
db 0x2F, 0x02 ; 01331C: provisional 68k move.l d2, -(a7)
db 0x3F, 0x01 ; 01331E: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x20 ; 013320: provisional 68k move.l $20(a5), -(a7)
db 0x61, 0x00, 0xC0, 0x36 ; 013324: provisional 68k bsr.w $f35c
db 0x4E, 0x75 ; 013328: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 01332A: provisional 68k pea.l $13334(pc)
db 0x61, 0x00, 0x98, 0xA0 ; 01332E: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 013332: provisional 68k bra.b $1333c
db 0x73, 0x6D ; file 013334
db 0x61, 0x70 ; 013336: provisional 68k bsr.b $133a8
db 0x20, 0x2D, 0x20, 0x00 ; 013338: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 01333C: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xDE, 0xAC ; 01333E: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 013342: provisional 68k rts 
db 0x4E, 0x75 ; 013344: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x20 ; 013346: provisional 68k move.l $20(a5), -(a7)
db 0x61, 0x00, 0x9C, 0xAC ; 01334A: provisional 68k bsr.w $cff8
db 0x4E, 0x75 ; 01334E: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x06, 0xCF, 0xE8 ; 013350: provisional 68k movem.l -$3018(a6), d1-d2
db 0x2B, 0x41, 0x00, 0x1C ; 013356: provisional 68k move.l d1, $1c(a5)
db 0x2B, 0x42, 0x00, 0x20 ; 01335A: provisional 68k move.l d2, $20(a5)
db 0x42, 0x6D ; file 01335E
