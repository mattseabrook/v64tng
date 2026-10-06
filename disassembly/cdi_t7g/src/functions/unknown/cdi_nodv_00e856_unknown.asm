; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E856–00E8AF, inclusive.
cdi_nodv_entry_00e856:
db 0x48, 0xE7, 0xC0, 0xC0 ; 00E856: provisional 68k movem.l d0-d1/a0-a1, -(a7)
db 0x20, 0x6E, 0xAB, 0xDC ; 00E85A: provisional 68k movea.l -$5424(a6), a0
db 0x22, 0x6E, 0xAB, 0xE0 ; 00E85E: provisional 68k movea.l -$5420(a6), a1
db 0x2D, 0x49, 0xAB, 0xDC ; 00E862: provisional 68k move.l a1, -$5424(a6)
db 0x2D, 0x48, 0xAB, 0xE0 ; 00E866: provisional 68k move.l a0, -$5420(a6)
db 0x48, 0x7A, 0x00, 0x0A ; 00E86A: provisional 68k pea.l $e876(pc)
db 0x2F, 0x09 ; 00E86E: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x29, 0x30 ; 00E870: provisional 68k bsr.w $111a2
db 0x60, 0x08 ; 00E874: provisional 68k bra.b $e87e
db 0x64, 0x73 ; 00E876: provisional 68k bcc.b $e8eb
db 0x70, 0x5F ; 00E878: provisional 68k moveq #$5f, d0
db 0x63, 0x75 ; 00E87A: provisional 68k bls.b $e8f1
db 0x72, 0x00 ; 00E87C: provisional 68k moveq #$0, d1
db 0x48, 0x7A, 0x00, 0x0A ; 00E87E: provisional 68k pea.l $e88a(pc)
db 0x2F, 0x08 ; 00E882: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x29, 0x1C ; 00E884: provisional 68k bsr.w $111a2
db 0x60, 0x08 ; 00E888: provisional 68k bra.b $e892
db 0x64, 0x73 ; 00E88A: provisional 68k bcc.b $e8ff
db 0x70, 0x5F ; 00E88C: provisional 68k moveq #$5f, d0
db 0x73, 0x68 ; file 00E88E
db 0x64, 0x00, 0x3F, 0x28 ; 00E890: provisional 68k bcc.w $127ba
db 0x00, 0x20, 0x3F, 0x28 ; 00E894: provisional 68k ori.b #$28, -(a0)
db 0x00, 0x1E, 0x3F, 0x29 ; 00E898: provisional 68k ori.b #$29, (a6)+
db 0x00, 0x20, 0x3F, 0x29 ; 00E89C: provisional 68k ori.b #$29, -(a0)
db 0x00, 0x1E, 0x61, 0x00 ; 00E8A0: provisional 68k ori.b #$0, (a6)+
db 0x12, 0xC4 ; 00E8A4: provisional 68k move.b d4, (a1)+
db 0x61, 0x00, 0x12, 0xE0 ; 00E8A6: provisional 68k bsr.w $fb88
db 0x4C, 0xDF, 0x03, 0x03 ; 00E8AA: provisional 68k movem.l (a7)+, d0-d1/a0-a1
db 0x4E, 0x75 ; 00E8AE: provisional 68k rts 
