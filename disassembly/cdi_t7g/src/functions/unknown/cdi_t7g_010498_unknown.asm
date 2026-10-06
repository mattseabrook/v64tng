; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010498–01054F, inclusive.
cdi_t7g_entry_010498:
db 0x52, 0x47 ; 010498: provisional 68k addq.w #$1, d7
db 0x4A, 0x80 ; 01049A: provisional 68k tst.l d0
db 0x67, 0x5A ; 01049C: provisional 68k beq.b $104f8
db 0x3F, 0x07 ; 01049E: provisional 68k move.w d7, -(a7)
db 0x53, 0x47 ; 0104A0: provisional 68k subq.w #$1, d7
db 0x48, 0x7A, 0x00, 0x08 ; 0104A2: provisional 68k pea.l $104ac(pc)
db 0x61, 0x00, 0xB8, 0xA8 ; 0104A6: provisional 68k bsr.w $bd50
db 0x60, 0x04 ; 0104AA: provisional 68k bra.b $104b0
db 0x7C, 0x20 ; 0104AC: provisional 68k moveq #$20, d6
db 0x20, 0x00 ; 0104AE: provisional 68k move.l d0, d0
db 0x51, 0xCF, 0xFF, 0xF0 ; 0104B0: provisional 68k dbra d7, $104a2
db 0x3E, 0x1F ; 0104B4: provisional 68k move.w (a7)+, d7
db 0x20, 0x40 ; 0104B6: provisional 68k movea.l d0, a0
db 0x42, 0xE7 ; 0104B8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 0104BA: provisional 68k pea.l $104c4(pc)
db 0x61, 0x00, 0xB8, 0x90 ; 0104BE: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 0104C2: provisional 68k bra.b $104c6
db 0x20, 0x00 ; 0104C4: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 0104C6: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xB7, 0x8A ; 0104C8: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 0104CC: provisional 68k move.w (a7)+, ccr
db 0x48, 0x7A, 0x00, 0x08 ; 0104CE: provisional 68k pea.l $104d8(pc)
db 0x61, 0x00, 0xB8, 0x7C ; 0104D2: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 0104D6: provisional 68k bra.b $104da
db 0x20, 0x00 ; 0104D8: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 0104DA: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFD, 0xBC ; 0104DC: provisional 68k bsr.w $1029a
db 0x61, 0x00, 0xB8, 0x54 ; 0104E0: provisional 68k bsr.w $bd36
db 0x20, 0x28, 0x00, 0x10 ; 0104E4: provisional 68k move.l $10(a0), d0
db 0x67, 0x08 ; 0104E8: provisional 68k beq.b $104f2
db 0x2F, 0x08 ; 0104EA: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFF, 0xAA ; 0104EC: provisional 68k bsr.w $10498
db 0x20, 0x5F ; 0104F0: provisional 68k movea.l (a7)+, a0
db 0x20, 0x28, 0x00, 0x14 ; 0104F2: provisional 68k move.l $14(a0), d0
db 0x66, 0xA6 ; 0104F6: provisional 68k bne.b $1049e
db 0x53, 0x47 ; 0104F8: provisional 68k subq.w #$1, d7
db 0x4E, 0x75 ; 0104FA: provisional 68k rts 
db 0x4E, 0x71 ; 0104FC: provisional 68k nop 
db 0x4B, 0xEE, 0xD0, 0x04 ; 0104FE: provisional 68k lea.l -$2ffc(a6), a5
db 0x30, 0x3C, 0x00, 0x0E ; 010502: provisional 68k move.w #$e, d0
db 0x32, 0x3C, 0x01, 0x18 ; 010506: provisional 68k move.w #$118, d1
db 0x24, 0x3C, 0x00, 0x00, 0x99, 0x6A ; 01050A: provisional 68k move.l #$996a, d2
db 0x61, 0x00, 0x00, 0x3E ; 010510: provisional 68k bsr.w $10550
db 0x4B, 0xEE, 0xD0, 0x14 ; 010514: provisional 68k lea.l -$2fec(a6), a5
db 0x30, 0x3C, 0x00, 0xC8 ; 010518: provisional 68k move.w #$c8, d0
db 0x32, 0x3C, 0x00, 0x4C ; 01051C: provisional 68k move.w #$4c, d1
db 0x24, 0x3C, 0x00, 0x00, 0xA8, 0xBA ; 010520: provisional 68k move.l #$a8ba, d2
db 0x61, 0x00, 0x00, 0x28 ; 010526: provisional 68k bsr.w $10550
db 0x61, 0x00, 0x00, 0x56 ; 01052A: provisional 68k bsr.w $10582
db 0x2D, 0x4D, 0xD0, 0x00 ; 01052E: provisional 68k move.l a5, -$3000(a6)
db 0x48, 0x7A, 0x00, 0x0A ; 010532: provisional 68k pea.l $1053e(pc)
db 0x2F, 0x0D ; 010536: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFD, 0xE8 ; 010538: provisional 68k bsr.w $10322
db 0x60, 0x0A ; 01053C: provisional 68k bra.b $10548
db 0x72, 0x6F ; 01053E: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 010540: provisional 68k ble.b $105b6
db 0x72, 0x6F ; 010542: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 010544: provisional 68k ble.b $105ba
db 0x00, 0x00, 0x3B, 0x7C ; 010546: provisional 68k ori.b #$7c, d0
db 0x00, 0x00, 0x00, 0x0A ; 01054A: provisional 68k ori.b #$a, d0
db 0x4E, 0x75 ; 01054E: provisional 68k rts 
