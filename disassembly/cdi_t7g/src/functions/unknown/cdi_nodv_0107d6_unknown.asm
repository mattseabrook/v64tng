; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0107D6–0107F7, inclusive.
cdi_nodv_entry_0107d6:
db 0x08, 0x00, 0x00, 0x00 ; 0107D6: provisional 68k btst.b #$0, d0
db 0x66, 0x0E ; 0107DA: provisional 68k bne.b $107ea
db 0x30, 0x2E, 0xCF, 0xD2 ; 0107DC: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x02 ; 0107E0: provisional 68k move.w #$2, d2
db 0x61, 0x00, 0xFF, 0xA4 ; 0107E4: provisional 68k bsr.w $1078a
db 0x4E, 0x75 ; 0107E8: provisional 68k rts 
db 0x30, 0x2E, 0xCF, 0xD2 ; 0107EA: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x03 ; 0107EE: provisional 68k move.w #$3, d2
db 0x61, 0x00, 0xFF, 0x96 ; 0107F2: provisional 68k bsr.w $1078a
db 0x4E, 0x75 ; 0107F6: provisional 68k rts 
