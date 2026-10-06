; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F608–00F663, inclusive.
cdi_t7g_entry_00f608:
db 0x48, 0xE7, 0x7F, 0xFC ; 00F608: provisional 68k movem.l d1-d7/a0-a5, -(a7)
db 0x42, 0x2E, 0xC0, 0xF0 ; 00F60C: provisional 68k clr.b -$3f10(a6)
db 0x61, 0x00, 0x00, 0xD8 ; 00F610: provisional 68k bsr.w $f6ea
db 0x67, 0x2A ; 00F614: provisional 68k beq.b $f640
db 0x61, 0x00, 0x00, 0x52 ; 00F616: provisional 68k bsr.w $f66a
db 0x20, 0x2E, 0xC0, 0xE4 ; 00F61A: provisional 68k move.l -$3f1c(a6), d0
db 0x67, 0x08 ; 00F61E: provisional 68k beq.b $f628
db 0x20, 0x40 ; 00F620: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xC0, 0xE8 ; 00F622: provisional 68k move.l -$3f18(a6), d0
db 0x4E, 0x90 ; 00F626: provisional 68k jsr (a0)
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 00F628: provisional 68k movea.l $0.l, a3
db 0x2D, 0x6B, 0x00, 0x54, 0xC0, 0xF2 ; 00F62E: provisional 68k move.l $54(a3), -$3f0e(a6)
db 0x4C, 0xDF, 0x3F, 0xFE ; 00F634: provisional 68k movem.l (a7)+, d1-d7/a0-a5
db 0x70, 0x01 ; 00F638: provisional 68k moveq #$1, d0
db 0x00, 0x3C, 0x00, 0x01 ; 00F63A: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00F63E: provisional 68k rts 
db 0x70, 0x00 ; 00F640: provisional 68k moveq #$0, d0
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 00F642: provisional 68k movea.l $0.l, a3
db 0x22, 0x2B, 0x00, 0x54 ; 00F648: provisional 68k move.l $54(a3), d1
db 0x92, 0xAE, 0xC0, 0xF2 ; 00F64C: provisional 68k sub.l -$3f0e(a6), d1
db 0x0C, 0x81, 0x00, 0x02, 0xBF, 0x20 ; 00F650: provisional 68k cmpi.l #$2bf20, d1
db 0x6F, 0x02 ; 00F656: provisional 68k ble.b $f65a
db 0x70, 0x02 ; 00F658: provisional 68k moveq #$2, d0
db 0x4C, 0xDF, 0x3F, 0xFE ; 00F65A: provisional 68k movem.l (a7)+, d1-d7/a0-a5
db 0x02, 0x3C, 0x00, 0x0E ; 00F65E: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 00F662: provisional 68k rts 
