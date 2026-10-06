; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0108AC–0108D3, inclusive.
cdi_nodv_entry_0108ac:
db 0x38, 0x06 ; 0108AC: provisional 68k move.w d6, d4
db 0x3A, 0x07 ; 0108AE: provisional 68k move.w d7, d5
db 0x98, 0x68, 0x00, 0x02 ; 0108B0: provisional 68k sub.w $2(a0), d4
db 0x6B, 0x18 ; 0108B4: provisional 68k bmi.b $108ce
db 0x9A, 0x68, 0x00, 0x04 ; 0108B6: provisional 68k sub.w $4(a0), d5
db 0x6B, 0x12 ; 0108BA: provisional 68k bmi.b $108ce
db 0xB8, 0x68, 0x00, 0x06 ; 0108BC: provisional 68k cmp.w $6(a0), d4
db 0x6A, 0x0C ; 0108C0: provisional 68k bpl.b $108ce
db 0xBA, 0x68, 0x00, 0x08 ; 0108C2: provisional 68k cmp.w $8(a0), d5
db 0x6A, 0x06 ; 0108C6: provisional 68k bpl.b $108ce
db 0x00, 0x3C, 0x00, 0x01 ; 0108C8: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 0108CC: provisional 68k rts 
db 0x02, 0x3C, 0x00, 0x0E ; 0108CE: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 0108D2: provisional 68k rts 
