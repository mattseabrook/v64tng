; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DFC4–00E0A7, inclusive.
cdi_nodv_entry_00dfc4:
db 0x4A, 0xAE ; file 00DFC4
db 0xAB, 0xB6 ; 00DFC6: provisional 68k dc.w $abb6
db 0x67, 0x24 ; 00DFC8: provisional 68k beq.b $dfee
db 0x2A, 0x6E, 0xAB, 0xB6 ; 00DFCA: provisional 68k movea.l -$544a(a6), a5
db 0x0C, 0x6D, 0x00, 0x04, 0x00, 0x1C ; 00DFCE: provisional 68k cmpi.w #$4, $1c(a5)
db 0x67, 0x16 ; 00DFD4: provisional 68k beq.b $dfec
db 0x3B, 0x7C, 0x00, 0x03, 0x00, 0x1C ; 00DFD6: provisional 68k move.w #$3, $1c(a5)
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 00DFDC: provisional 68k movea.l $0.l, a3
db 0x24, 0x2B, 0x00, 0x54 ; 00DFE2: provisional 68k move.l $54(a3), d2
db 0x2D, 0x42, 0xAB, 0xC6 ; 00DFE6: provisional 68k move.l d2, -$543a(a6)
db 0x4E, 0x75 ; 00DFEA: provisional 68k rts 
db 0x4E, 0x75 ; 00DFEC: provisional 68k rts 
db 0x4E, 0x75 ; 00DFEE: provisional 68k rts 
db 0x4A, 0xAE, 0xAB, 0xB6 ; 00DFF0: provisional 68k tst.l -$544a(a6)
db 0x67, 0x00, 0x00, 0x92 ; 00DFF4: provisional 68k beq.w $e088
db 0x08, 0x01, 0x00, 0x04 ; 00DFF8: provisional 68k btst.b #$4, d1
db 0x66, 0x32 ; 00DFFC: provisional 68k bne.b $e030
db 0x08, 0x01, 0x00, 0x00 ; 00DFFE: provisional 68k btst.b #$0, d1
db 0x66, 0x36 ; 00E002: provisional 68k bne.b $e03a
db 0x08, 0x01, 0x00, 0x03 ; 00E004: provisional 68k btst.b #$3, d1
db 0x66, 0x00, 0x00, 0x56 ; 00E008: provisional 68k bne.w $e060
db 0x32, 0x3C, 0x80, 0x00 ; 00E00C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xEB, 0xEC ; 00E010: provisional 68k bsr.w $cbfe
db 0x61, 0x75 ; 00E014: provisional 68k bsr.b $e08b
db 0x64, 0x69 ; 00E016: provisional 68k bcc.b $e081
db 0x6F, 0x5F ; 00E018: provisional 68k ble.b $e079
db 0x73, 0x72 ; file 00E01A
db 0x76, 0x3A ; 00E01C: provisional 68k moveq #$3a, d3
db 0x20, 0x55 ; 00E01E: provisional 68k movea.l (a5), a0
db 0x6E, 0x65 ; 00E020: provisional 68k bgt.b $e087
db 0x78, 0x70 ; 00E022: provisional 68k moveq #$70, d4
db 0x65, 0x63 ; 00E024: provisional 68k bcs.b $e089
db 0x74, 0x65 ; 00E026: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 00E028: provisional 68k bcc.b $e04a
db 0x65, 0x76 ; 00E02A: provisional 68k bcs.b $e0a2
db 0x65, 0x6E ; 00E02C: provisional 68k bcs.b $e09c
db 0x74, 0x00 ; 00E02E: provisional 68k moveq #$0, d2
db 0x30, 0x3C, 0x00, 0x5A ; 00E030: provisional 68k move.w #$5a, d0
db 0x61, 0x00, 0x01, 0x4E ; 00E034: provisional 68k bsr.w $e184
db 0x4E, 0x75 ; 00E038: provisional 68k rts 
db 0x30, 0x2E, 0xAB, 0x14 ; 00E03A: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00E03E: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00E042: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4A, 0x6E, 0xAB, 0xCC ; 00E046: provisional 68k tst.w -$5434(a6)
db 0x66, 0x0A ; 00E04A: provisional 68k bne.b $e056
db 0x30, 0x3C, 0x00, 0x5B ; 00E04C: provisional 68k move.w #$5b, d0
db 0x61, 0x00, 0x00, 0x56 ; 00E050: provisional 68k bsr.w $e0a8
db 0x4E, 0x75 ; 00E054: provisional 68k rts 
db 0x30, 0x3C, 0x00, 0x5D ; 00E056: provisional 68k move.w #$5d, d0
db 0x61, 0x00, 0x00, 0x4C ; 00E05A: provisional 68k bsr.w $e0a8
db 0x4E, 0x75 ; 00E05E: provisional 68k rts 
db 0x4A, 0x6E, 0xAB, 0xCA ; 00E060: provisional 68k tst.w -$5436(a6)
db 0x67, 0x0C ; 00E064: provisional 68k beq.b $e072
db 0xC0, 0x6E, 0xAB, 0xCC ; 00E066: provisional 68k and.w -$5434(a6), d0
db 0x67, 0x06 ; 00E06A: provisional 68k beq.b $e072
db 0x61, 0x00, 0x01, 0x52 ; 00E06C: provisional 68k bsr.w $e1c0
db 0x4E, 0x75 ; 00E070: provisional 68k rts 
db 0x30, 0x2E, 0xAB, 0x14 ; 00E072: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00E076: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00E07A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x30, 0x3C, 0x00, 0x5C ; 00E07E: provisional 68k move.w #$5c, d0
db 0x61, 0x00, 0x00, 0x24 ; 00E082: provisional 68k bsr.w $e0a8
db 0x4E, 0x75 ; 00E086: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00E088: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xEB, 0x70 ; 00E08C: provisional 68k bsr.w $cbfe
db 0x61, 0x75 ; 00E090: provisional 68k bsr.b $e107
db 0x64, 0x69 ; 00E092: provisional 68k bcc.b $e0fd
db 0x6F, 0x5F ; 00E094: provisional 68k ble.b $e0f5
db 0x73, 0x72 ; file 00E096
db 0x76, 0x3A ; 00E098: provisional 68k moveq #$3a, d3
db 0x20, 0x63 ; 00E09A: provisional 68k movea.l -(a3), a0
db 0x75, 0x72 ; file 00E09C
db 0x5F, 0x62 ; 00E09E: provisional 68k subq.w #$7, -(a2)
db 0x61, 0x64 ; 00E0A0: provisional 68k bsr.b $e106
db 0x20, 0x3D ; file 00E0A2
db 0x20, 0x30, 0x20, 0x00 ; 00E0A4: provisional 68k move.l (a0, d2.w), d0
