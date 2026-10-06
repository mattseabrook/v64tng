; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FFC0–01003D, inclusive.
cdi_t7g_entry_00ffc0:
db 0x48, 0x7A, 0x00, 0x08 ; 00FFC0: provisional 68k pea.l $ffca(pc)
db 0x61, 0x00, 0xBD, 0x8A ; 00FFC4: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00FFC8: provisional 68k bra.b $ffd4
db 0x6F, 0x62 ; 00FFCA: provisional 68k ble.b $1002e
db 0x6A, 0x6D ; 00FFCC: provisional 68k bpl.b $1003b
db 0x61, 0x6E ; 00FFCE: provisional 68k bsr.b $1003e
db 0x3A, 0x0D ; 00FFD0: provisional 68k move.w a5, d5
db 0x0A, 0x00, 0x41, 0xEE ; 00FFD2: provisional 68k eori.b #$ee, d0
db 0xD0, 0x04 ; 00FFD6: provisional 68k add.b d4, d0
db 0x42, 0xE7 ; 00FFD8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00FFDA: provisional 68k pea.l $ffe4(pc)
db 0x61, 0x00, 0xBD, 0x70 ; 00FFDE: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00FFE2: provisional 68k bra.b $fff0
db 0x62, 0x69 ; 00FFE4: provisional 68k bhi.b $1004f
db 0x67, 0x20 ; 00FFE6: provisional 68k beq.b $10008
db 0x74, 0x6F ; 00FFE8: provisional 68k moveq #$6f, d2
db 0x74, 0x61 ; 00FFEA: provisional 68k moveq #$61, d2
db 0x6C, 0x09 ; 00FFEC: provisional 68k bge.b $fff7
db 0x09, 0x00 ; 00FFEE: provisional 68k btst.l d4, d0
db 0x3F, 0x28, 0x00, 0x02 ; 00FFF0: provisional 68k move.w $2(a0), -(a7)
db 0x61, 0x00, 0xBC, 0xA8 ; 00FFF4: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00FFF8: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBD, 0x3A ; 00FFFA: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00FFFE: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010000: provisional 68k pea.l $1000a(pc)
db 0x61, 0x00, 0xBD, 0x4A ; 010004: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 010008: provisional 68k bra.b $10016
db 0x62, 0x69 ; 01000A: provisional 68k bhi.b $10075
db 0x67, 0x20 ; 01000C: provisional 68k beq.b $1002e
db 0x66, 0x72 ; 01000E: provisional 68k bne.b $10082
db 0x65, 0x65 ; 010010: provisional 68k bcs.b $10077
db 0x09, 0x09, 0x00, 0x00 ; 010012: provisional 68k movep.w $0(a1), d4
db 0x3F, 0x28, 0x00, 0x04 ; 010016: provisional 68k move.w $4(a0), -(a7)
db 0x61, 0x00, 0xBC, 0x82 ; 01001A: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 01001E: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBD, 0x14 ; 010020: provisional 68k bsr.w $bd36
db 0x41, 0xEE, 0xD0, 0x14 ; 010024: provisional 68k lea.l -$2fec(a6), a0
db 0x42, 0xE7 ; 010028: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 01002A: provisional 68k pea.l $10034(pc)
db 0x61, 0x00, 0xBD, 0x20 ; 01002E: provisional 68k bsr.w $bd50
db 0x60, 0x0E ; 010032: provisional 68k bra.b $10042
db 0x73, 0x6D ; file 010034
db 0x61, 0x6C ; 010036: provisional 68k bsr.b $100a4
db 0x6C, 0x20 ; 010038: provisional 68k bge.b $1005a
db 0x74, 0x6F ; 01003A: provisional 68k moveq #$6f, d2
db 0x74, 0x61 ; 01003C: provisional 68k moveq #$61, d2
