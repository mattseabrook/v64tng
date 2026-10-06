; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F2A6–00F2C1, inclusive.
cdi_nodv_entry_00f2a6:
db 0x48, 0x7A, 0x00, 0x08 ; 00F2A6: provisional 68k pea.l $f2b0(pc)
db 0x61, 0x00, 0xD9, 0x24 ; 00F2AA: provisional 68k bsr.w $cbd0
db 0x60, 0x10 ; 00F2AE: provisional 68k bra.b $f2c0
db 0x3E, 0x3E ; file 00F2B0
db 0x3E, 0x20 ; 00F2B2: provisional 68k move.w -(a0), d7
db 0x70, 0x6C ; 00F2B4: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00F2B6: provisional 68k bsr.b $f331
db 0x5F, 0x74, 0x72, 0x67 ; 00F2B8: provisional 68k subq.w #$7, $67(a4, d7.w)
db 0x0D, 0x0A, 0x00, 0x00 ; 00F2BC: provisional 68k movep.w $0(a2), d6
db 0x4E, 0x75 ; 00F2C0: provisional 68k rts 
