; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CCAA–00CCFF, inclusive.
cdi_t7g_entry_00ccaa:
db 0x60, 0x18 ; 00CCAA: provisional 68k bra.b $ccc4
db 0x3E, 0x3E ; file 00CCAC
db 0x3E, 0x20 ; 00CCAE: provisional 68k move.w -(a0), d7
db 0x57, 0x41 ; 00CCB0: provisional 68k subq.w #$3, d1
db 0x52, 0x4E ; 00CCB2: provisional 68k addq.w #$1, a6
db 0x49, 0x4E ; file 00CCB4
db 0x47, 0x20 ; 00CCB6: provisional 68k dc.w $4720
db 0x2D, 0x20 ; 00CCB8: provisional 68k move.l -(a0), -(a6)
db 0x73, 0x6D ; file 00CCBA
db 0x65, 0x5F ; 00CCBC: provisional 68k bcs.b $cd1d
db 0x6F, 0x75 ; 00CCBE: provisional 68k ble.b $cd35
db 0x74, 0x3A ; 00CCC0: provisional 68k moveq #$3a, d2
db 0x20, 0x00 ; 00CCC2: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 00CCC4: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0xEF, 0xD6 ; 00CCC6: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00CCCA: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xF0, 0x68 ; 00CCCC: provisional 68k bsr.w $bd36
db 0x60, 0x00, 0xFF, 0xCE ; 00CCD0: provisional 68k bra.w $cca0
db 0x20, 0x2E, 0xAB, 0x9C ; 00CCD4: provisional 68k move.l -$5464(a6), d0
db 0x67, 0x1C ; 00CCD8: provisional 68k beq.b $ccf6
db 0x20, 0x40 ; 00CCDA: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xAB, 0xA0 ; 00CCDC: provisional 68k move.l -$5460(a6), d0
db 0x32, 0x2E, 0xAB, 0x88 ; 00CCE0: provisional 68k move.w -$5478(a6), d1
db 0x34, 0x3C, 0x00, 0x0A ; 00CCE4: provisional 68k move.w #$a, d2
db 0x4E, 0x90 ; 00CCE8: provisional 68k jsr (a0)
db 0x3F, 0x3C, 0x00, 0x32 ; 00CCEA: provisional 68k move.w #$32, -(a7)
db 0x3F, 0x3C, 0x00, 0x00 ; 00CCEE: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0x03, 0x12 ; 00CCF2: provisional 68k bsr.w $d006
db 0x42, 0xAE, 0xAB, 0x84 ; 00CCF6: provisional 68k clr.l -$547c(a6)
db 0x42, 0x6E, 0xAB, 0x88 ; 00CCFA: provisional 68k clr.w -$5478(a6)
db 0x4E, 0x75 ; 00CCFE: provisional 68k rts 
