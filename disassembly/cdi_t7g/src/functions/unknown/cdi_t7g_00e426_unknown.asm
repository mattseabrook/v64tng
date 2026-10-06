; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E426–00E441, inclusive.
cdi_t7g_entry_00e426:
db 0x48, 0x7A, 0x00, 0x08 ; 00E426: provisional 68k pea.l $e430(pc)
db 0x61, 0x00, 0xD9, 0x24 ; 00E42A: provisional 68k bsr.w $bd50
db 0x60, 0x10 ; 00E42E: provisional 68k bra.b $e440
db 0x3E, 0x3E ; file 00E430
db 0x3E, 0x20 ; 00E432: provisional 68k move.w -(a0), d7
db 0x70, 0x6C ; 00E434: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00E436: provisional 68k bsr.b $e4b1
db 0x5F, 0x74, 0x72, 0x67 ; 00E438: provisional 68k subq.w #$7, $67(a4, d7.w)
db 0x0D, 0x0A, 0x00, 0x00 ; 00E43C: provisional 68k movep.w $0(a2), d6
db 0x4E, 0x75 ; 00E440: provisional 68k rts 
