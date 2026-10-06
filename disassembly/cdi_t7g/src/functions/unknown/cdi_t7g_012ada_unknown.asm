; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012ADA–012B11, inclusive.
cdi_t7g_entry_012ada:
db 0x0C, 0x6D ; file 012ADA
db 0xFF, 0xFF ; 012ADC: provisional 68k dc.w $ffff
db 0x00, 0x2A, 0x67, 0x04, 0x60, 0x00 ; 012ADE: provisional 68k ori.b #$4, $6000(a2)
db 0x00, 0x02, 0x32, 0x3C ; 012AE4: provisional 68k ori.b #$3c, d2
db 0x80, 0x00 ; 012AE8: provisional 68k or.b d0, d0
db 0x61, 0x00, 0x92, 0x92 ; 012AEA: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 012AEE: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 012AF0
db 0x65, 0x5F ; 012AF2: provisional 68k bcs.b $12b53
db 0x63, 0x6C ; 012AF4: provisional 68k bls.b $12b62
db 0x38, 0x5F ; 012AF6: provisional 68k movea.w (a7)+, a4
db 0x6D, 0x73 ; 012AF8: provisional 68k blt.b $12b6d
db 0x6B, 0x3A ; 012AFA: provisional 68k bmi.b $12b36
db 0x20, 0x4E ; 012AFC: provisional 68k movea.l a6, a0
db 0x6F, 0x74 ; 012AFE: provisional 68k ble.b $12b74
db 0x20, 0x69, 0x6D, 0x70 ; 012B00: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 012B04: provisional 68k bge.b $12b6b
db 0x6D, 0x65 ; 012B06: provisional 68k blt.b $12b6d
db 0x6E, 0x74 ; 012B08: provisional 68k bgt.b $12b7e
db 0x65, 0x64 ; 012B0A: provisional 68k bcs.b $12b70
db 0x20, 0x79, 0x65, 0x74, 0x21, 0x00 ; 012B0C: provisional 68k movea.l $65742100.l, a0
