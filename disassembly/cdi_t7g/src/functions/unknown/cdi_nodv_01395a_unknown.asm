; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01395A–013991, inclusive.
cdi_nodv_entry_01395a:
db 0x0C, 0x6D ; file 01395A
db 0xFF, 0xFF ; 01395C: provisional 68k dc.w $ffff
db 0x00, 0x2A, 0x67, 0x04, 0x60, 0x00 ; 01395E: provisional 68k ori.b #$4, $6000(a2)
db 0x00, 0x02, 0x32, 0x3C ; 013964: provisional 68k ori.b #$3c, d2
db 0x80, 0x00 ; 013968: provisional 68k or.b d0, d0
db 0x61, 0x00, 0x92, 0x92 ; 01396A: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 01396E: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 013970
db 0x65, 0x5F ; 013972: provisional 68k bcs.b $139d3
db 0x63, 0x6C ; 013974: provisional 68k bls.b $139e2
db 0x38, 0x5F ; 013976: provisional 68k movea.w (a7)+, a4
db 0x6D, 0x73 ; 013978: provisional 68k blt.b $139ed
db 0x6B, 0x3A ; 01397A: provisional 68k bmi.b $139b6
db 0x20, 0x4E ; 01397C: provisional 68k movea.l a6, a0
db 0x6F, 0x74 ; 01397E: provisional 68k ble.b $139f4
db 0x20, 0x69, 0x6D, 0x70 ; 013980: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 013984: provisional 68k bge.b $139eb
db 0x6D, 0x65 ; 013986: provisional 68k blt.b $139ed
db 0x6E, 0x74 ; 013988: provisional 68k bgt.b $139fe
db 0x65, 0x64 ; 01398A: provisional 68k bcs.b $139f0
db 0x20, 0x79, 0x65, 0x74, 0x21, 0x00 ; 01398C: provisional 68k movea.l $65742100.l, a0
