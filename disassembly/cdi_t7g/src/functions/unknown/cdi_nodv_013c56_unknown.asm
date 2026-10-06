; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013C56–013CB1, inclusive.
cdi_nodv_entry_013c56:
db 0x30, 0x2D, 0x00, 0x28 ; 013C56: provisional 68k move.w $28(a5), d0
db 0x32, 0x2D, 0x00, 0x24 ; 013C5A: provisional 68k move.w $24(a5), d1
db 0x34, 0x2C, 0x00, 0x28 ; 013C5E: provisional 68k move.w $28(a4), d2
db 0x36, 0x2C, 0x00, 0x24 ; 013C62: provisional 68k move.w $24(a4), d3
db 0x61, 0x00, 0x00, 0x4A ; 013C66: provisional 68k bsr.w $13cb2
db 0x65, 0x40 ; 013C6A: provisional 68k bcs.b $13cac
db 0x90, 0x6D, 0x00, 0x28 ; 013C6C: provisional 68k sub.w $28(a5), d0
db 0x94, 0x6C, 0x00, 0x28 ; 013C70: provisional 68k sub.w $28(a4), d2
db 0x36, 0x00 ; 013C74: provisional 68k move.w d0, d3
db 0x3E, 0x01 ; 013C76: provisional 68k move.w d1, d7
db 0x3A, 0x02 ; 013C78: provisional 68k move.w d2, d5
db 0x48, 0xA7, 0x10, 0x00 ; 013C7A: provisional 68k movem.w d3, -(a7)
db 0x30, 0x2D, 0x00, 0x26 ; 013C7E: provisional 68k move.w $26(a5), d0
db 0x32, 0x2D, 0x00, 0x22 ; 013C82: provisional 68k move.w $22(a5), d1
db 0x34, 0x2C, 0x00, 0x26 ; 013C86: provisional 68k move.w $26(a4), d2
db 0x36, 0x2C, 0x00, 0x22 ; 013C8A: provisional 68k move.w $22(a4), d3
db 0x61, 0x00, 0x00, 0x22 ; 013C8E: provisional 68k bsr.w $13cb2
db 0x4C, 0x9F, 0x00, 0x08 ; 013C92: provisional 68k movem.w (a7)+, d3
db 0x65, 0x14 ; 013C96: provisional 68k bcs.b $13cac
db 0x90, 0x6D, 0x00, 0x26 ; 013C98: provisional 68k sub.w $26(a5), d0
db 0x94, 0x6C, 0x00, 0x26 ; 013C9C: provisional 68k sub.w $26(a4), d2
db 0x3C, 0x01 ; 013CA0: provisional 68k move.w d1, d6
db 0x38, 0x02 ; 013CA2: provisional 68k move.w d2, d4
db 0x34, 0x00 ; 013CA4: provisional 68k move.w d0, d2
db 0x02, 0x3C, 0x00, 0x0E ; 013CA6: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 013CAA: provisional 68k rts 
db 0x00, 0x3C, 0x00, 0x01 ; 013CAC: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 013CB0: provisional 68k rts 
