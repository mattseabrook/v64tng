; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CFBE–00CFF7, inclusive.
cdi_nodv_entry_00cfbe:
db 0x61, 0x00, 0xFB, 0xF6 ; 00CFBE: provisional 68k bsr.w $cbb6
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00CFC2: provisional 68k move.l #$0, -(a7)
db 0x61, 0x00, 0x42, 0xF8 ; 00CFC8: provisional 68k bsr.w $112c2
db 0x61, 0x00, 0xFB, 0xE8 ; 00CFCC: provisional 68k bsr.w $cbb6
db 0x32, 0x3C, 0x80, 0x00 ; 00CFD0: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xFC, 0x28 ; 00CFD4: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 00CFD8: provisional 68k bcc.b $d048
db 0x64, 0x65 ; 00CFDA: provisional 68k bcc.b $d041
db 0x5F, 0x61 ; 00CFDC: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00CFDE: provisional 68k bge.b $d04c
db 0x6F, 0x63 ; 00CFE0: provisional 68k ble.b $d045
db 0x61, 0x74 ; 00CFE2: provisional 68k bsr.b $d058
db 0x65, 0x00, 0x4C, 0xDF ; 00CFE4: provisional 68k bcs.w $11cc5
db 0x30, 0x01 ; 00CFE8: provisional 68k move.w d1, d0
db 0x2F, 0x57, 0x00, 0x06 ; 00CFEA: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00CFEE: provisional 68k lea.l $6(a7), a7
db 0x00, 0x3C, 0x00, 0x01 ; 00CFF2: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00CFF6: provisional 68k rts 
