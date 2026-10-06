; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C0BC–00C13D, inclusive.
cdi_t7g_entry_00c0bc:
db 0x60, 0x1E ; 00C0BC: provisional 68k bra.b $c0dc
db 0x64, 0x6E ; 00C0BE: provisional 68k bcc.b $c12e
db 0x64, 0x65 ; 00C0C0: provisional 68k bcc.b $c127
db 0x5F, 0x61 ; 00C0C2: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00C0C4: provisional 68k bge.b $c132
db 0x6F, 0x63 ; 00C0C6: provisional 68k ble.b $c12b
db 0x61, 0x74 ; 00C0C8: provisional 68k bsr.b $c13e
db 0x65, 0x3A ; 00C0CA: provisional 68k bcs.b $c106
db 0x20, 0x46 ; 00C0CC: provisional 68k movea.l d6, a0
db 0x72, 0x65 ; 00C0CE: provisional 68k moveq #$65, d1
db 0x65, 0x20 ; 00C0D0: provisional 68k bcs.b $c0f2
db 0x6E, 0x6F ; 00C0D2: provisional 68k bgt.b $c143
db 0x64, 0x65 ; 00C0D4: provisional 68k bcc.b $c13b
db 0x73, 0x20 ; file 00C0D6
db 0x3D, 0x20 ; 00C0D8: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x42, 0xE7 ; 00C0DA: provisional 68k ori.b #$e7, d0
db 0x3F, 0x2D, 0x00, 0x1E ; 00C0DE: provisional 68k move.w $1e(a5), -(a7)
db 0x61, 0x00, 0xFB, 0xBA ; 00C0E2: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00C0E6: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C0E8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C0EA: provisional 68k pea.l $c0f4(pc)
db 0x61, 0x00, 0xFC, 0x60 ; 00C0EE: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 00C0F2: provisional 68k bra.b $c0fe
db 0x20, 0x77, 0x61, 0x6E, 0x74, 0x65 ; 00C0F4: provisional 68k movea.l ([$7465, a7]), a0
db 0x64, 0x20 ; 00C0FA: provisional 68k bcc.b $c11c
db 0x00, 0x00, 0x3F, 0x00 ; 00C0FC: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xFB, 0x9C ; 00C100: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00C104: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xFC, 0x2E ; 00C106: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00C10A: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA8, 0xFC ; 00C10C: provisional 68k move.l -$5704(a6), -(a7)
db 0x61, 0x00, 0x41, 0xC2 ; 00C110: provisional 68k bsr.w $102d4
db 0x44, 0xDF ; 00C114: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C116: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA9, 0x00 ; 00C118: provisional 68k move.l -$5700(a6), -(a7)
db 0x61, 0x00, 0x41, 0xB6 ; 00C11C: provisional 68k bsr.w $102d4
db 0x44, 0xDF ; 00C120: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C122: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA9, 0x04 ; 00C124: provisional 68k move.l -$56fc(a6), -(a7)
db 0x61, 0x00, 0x41, 0xAA ; 00C128: provisional 68k bsr.w $102d4
db 0x44, 0xDF ; 00C12C: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C12E: provisional 68k dc.w $42e7
db 0x2F, 0x2E, 0xA9, 0x08 ; 00C130: provisional 68k move.l -$56f8(a6), -(a7)
db 0x61, 0x00, 0x41, 0x9E ; 00C134: provisional 68k bsr.w $102d4
db 0x44, 0xDF ; 00C138: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xFB, 0xFA ; 00C13A: provisional 68k bsr.w $bd36
