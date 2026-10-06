; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013058–013069, inclusive.
cdi_nodv_entry_013058:
db 0x20, 0x64 ; 013058: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 01305A: provisional 68k bcs.b $130cf
db 0x74, 0x69 ; 01305C: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 01305E: provisional 68k bgt.b $130c1
db 0x74, 0x69 ; 013060: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 013062: provisional 68k ble.b $130d2
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 013064
