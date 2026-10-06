; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DCA2–00DCBD, inclusive.
cdi_nodv_entry_00dca2:
db 0x20, 0x2E, 0xAB, 0xB6 ; 00DCA2: provisional 68k move.l -$544a(a6), d0
db 0x67, 0x30 ; 00DCA6: provisional 68k beq.b $dcd8
db 0x2A, 0x40 ; 00DCA8: provisional 68k movea.l d0, a5
db 0x30, 0x2E, 0xAB, 0xC2 ; 00DCAA: provisional 68k move.w -$543e(a6), d0
db 0x67, 0x16 ; 00DCAE: provisional 68k beq.b $dcc6
db 0x61, 0x00, 0x04, 0xD2 ; 00DCB0: provisional 68k bsr.w $e184
db 0x2F, 0x2E, 0xAB, 0xB6 ; 00DCB4: provisional 68k move.l -$544a(a6), -(a7)
db 0x61, 0x00, 0x32, 0xAA ; 00DCB8: provisional 68k bsr.w $10f64
db 0x42, 0xAE ; file 00DCBC
