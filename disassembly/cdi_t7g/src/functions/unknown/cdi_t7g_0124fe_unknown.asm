; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0124FE–012527, inclusive.
cdi_t7g_entry_0124fe:
db 0x3F, 0x01 ; 0124FE: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x26 ; 012500: provisional 68k move.l $26(a5), -(a7)
db 0x61, 0x00, 0xBF, 0xD6 ; 012504: provisional 68k bsr.w $e4dc
db 0x4E, 0x75 ; 012508: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 01250A: provisional 68k pea.l $12514(pc)
db 0x61, 0x00, 0x98, 0x40 ; 01250E: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 012512: provisional 68k bra.b $1251c
db 0x67, 0x64 ; 012514: provisional 68k beq.b $1257a
db 0x69, 0x72 ; 012516: provisional 68k bvs.b $1258a
db 0x20, 0x2D, 0x20, 0x00 ; 012518: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 01251C: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xDE, 0x4C ; 01251E: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 012522: provisional 68k rts 
db 0x4E, 0x75 ; 012524: provisional 68k rts 
db 0x48, 0x7A ; file 012526
