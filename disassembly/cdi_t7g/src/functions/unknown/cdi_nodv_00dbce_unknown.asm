; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DBCE–00DC4B, inclusive.
cdi_nodv_entry_00dbce:
db 0x48, 0x7A, 0x00, 0x08 ; 00DBCE: provisional 68k pea.l $dbd8(pc)
db 0x61, 0x00, 0xEF, 0xFC ; 00DBD2: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00DBD6: provisional 68k bra.b $dbe2
db 0x62, 0x61 ; 00DBD8: provisional 68k bhi.b $dc3b
db 0x64, 0x6D ; 00DBDA: provisional 68k bcc.b $dc49
db 0x61, 0x6E ; 00DBDC: provisional 68k bsr.b $dc4c
db 0x3A, 0x0D ; 00DBDE: provisional 68k move.w a5, d5
db 0x0A, 0x00, 0x42, 0xE7 ; 00DBE0: provisional 68k eori.b #$e7, d0
db 0x48, 0x7A, 0x00, 0x08 ; 00DBE4: provisional 68k pea.l $dbee(pc)
db 0x61, 0x00, 0xEF, 0xE6 ; 00DBE8: provisional 68k bsr.w $cbd0
db 0x60, 0x0E ; 00DBEC: provisional 68k bra.b $dbfc
db 0x62, 0x75 ; 00DBEE: provisional 68k bhi.b $dc65
db 0x66, 0x66 ; 00DBF0: provisional 68k bne.b $dc58
db 0x65, 0x72 ; 00DBF2: provisional 68k bcs.b $dc66
db 0x5F, 0x73, 0x69, 0x7A, 0x65, 0x09, 0x00, 0x00, 0x2F, 0x2E ; 00DBF4: provisional 68k subq.w #$7, ([$65090000, a3], $2f2e)
db 0xAB, 0xAE ; 00DBFE: provisional 68k dc.w $abae
db 0x61, 0x00, 0xEE, 0xD2 ; 00DC00: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00DC04: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xEF, 0xAE ; 00DC06: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 00DC0A: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00DC0C: provisional 68k pea.l $dc16(pc)
db 0x61, 0x00, 0xEF, 0xBE ; 00DC10: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00DC14: provisional 68k bra.b $dc20
db 0x63, 0x75 ; 00DC16: provisional 68k bls.b $dc8d
db 0x72, 0x5F ; 00DC18: provisional 68k moveq #$5f, d1
db 0x62, 0x61 ; 00DC1A: provisional 68k bhi.b $dc7d
db 0x64, 0x09 ; 00DC1C: provisional 68k bcc.b $dc27
db 0x09, 0x00 ; 00DC1E: provisional 68k btst.l d4, d0
db 0x2F, 0x2E, 0xAB, 0xB6 ; 00DC20: provisional 68k move.l -$544a(a6), -(a7)
db 0x61, 0x00, 0xEE, 0xAE ; 00DC24: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00DC28: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xEF, 0x8A ; 00DC2A: provisional 68k bsr.w $cbb6
db 0x20, 0x6E, 0xAB, 0xB6 ; 00DC2E: provisional 68k movea.l -$544a(a6), a0
db 0x42, 0xE7 ; 00DC32: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00DC34: provisional 68k pea.l $dc3e(pc)
db 0x61, 0x00, 0xEF, 0x96 ; 00DC38: provisional 68k bsr.w $cbd0
db 0x60, 0x10 ; 00DC3C: provisional 68k bra.b $dc4e
db 0x63, 0x75 ; 00DC3E: provisional 68k bls.b $dcb5
db 0x72, 0x5F ; 00DC40: provisional 68k moveq #$5f, d1
db 0x62, 0x61 ; 00DC42: provisional 68k bhi.b $dca5
db 0x64, 0x20 ; 00DC44: provisional 68k bcc.b $dc66
db 0x73, 0x74 ; file 00DC46
db 0x61, 0x74 ; 00DC48: provisional 68k bsr.b $dcbe
db 0x75, 0x65 ; file 00DC4A
