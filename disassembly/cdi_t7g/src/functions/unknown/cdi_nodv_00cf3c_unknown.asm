; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CF3C–00CFBD, inclusive.
cdi_nodv_entry_00cf3c:
db 0x60, 0x1E ; 00CF3C: provisional 68k bra.b $cf5c
db 0x64, 0x6E ; 00CF3E: provisional 68k bcc.b $cfae
db 0x64, 0x65 ; 00CF40: provisional 68k bcc.b $cfa7
db 0x5F, 0x61 ; 00CF42: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00CF44: provisional 68k bge.b $cfb2
db 0x6F, 0x63 ; 00CF46: provisional 68k ble.b $cfab
db 0x61, 0x74 ; 00CF48: provisional 68k bsr.b $cfbe
db 0x65, 0x3A ; 00CF4A: provisional 68k bcs.b $cf86
db 0x20, 0x46 ; 00CF4C: provisional 68k movea.l d6, a0
db 0x72, 0x65 ; 00CF4E: provisional 68k moveq #$65, d1
db 0x65, 0x20 ; 00CF50: provisional 68k bcs.b $cf72
db 0x6E, 0x6F ; 00CF52: provisional 68k bgt.b $cfc3
db 0x64, 0x65 ; 00CF54: provisional 68k bcc.b $cfbb
db 0x73, 0x20 ; file 00CF56
db 0x3D, 0x20 ; 00CF58: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x42, 0xE7 ; 00CF5A: provisional 68k ori.b #$e7, d0
db 0x3F, 0x2D, 0x00, 0x1E ; 00CF5E: provisional 68k move.w $1e(a5), -(a7)
db 0x61, 0x00, 0xFB, 0xBA ; 00CF62: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00CF66: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00CF68: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00CF6A: provisional 68k pea.l $cf74(pc)
db 0x61, 0x00, 0xFC, 0x60 ; 00CF6E: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00CF72: provisional 68k bra.b $cf7e
db 0x20, 0x77, 0x61, 0x6E, 0x74, 0x65 ; 00CF74: provisional 68k movea.l ([$7465, a7]), a0
db 0x64, 0x20 ; 00CF7A: provisional 68k bcc.b $cf9c
db 0x00, 0x00, 0x3F, 0x00 ; 00CF7C: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xFB, 0x9C ; 00CF80: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00CF84: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xFC, 0x2E ; 00CF86: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 00CF8A: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA8, 0xFC ; 00CF8C: provisional 68k move.l -$5704(a6), -(a7)
db 0x61, 0x00, 0x41, 0xC2 ; 00CF90: provisional 68k bsr.w $11154
db 0x44, 0xDF ; 00CF94: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00CF96: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA9, 0x00 ; 00CF98: provisional 68k move.l -$5700(a6), -(a7)
db 0x61, 0x00, 0x41, 0xB6 ; 00CF9C: provisional 68k bsr.w $11154
db 0x44, 0xDF ; 00CFA0: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00CFA2: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA9, 0x04 ; 00CFA4: provisional 68k move.l -$56fc(a6), -(a7)
db 0x61, 0x00, 0x41, 0xAA ; 00CFA8: provisional 68k bsr.w $11154
db 0x44, 0xDF ; 00CFAC: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00CFAE: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA9, 0x08 ; 00CFB0: provisional 68k move.l -$56f8(a6), -(a7)
db 0x61, 0x00, 0x41, 0x9E ; 00CFB4: provisional 68k bsr.w $11154
db 0x44, 0xDF ; 00CFB8: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xFB, 0xFA ; 00CFBA: provisional 68k bsr.w $cbb6
