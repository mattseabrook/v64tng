; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01003E–01007D, inclusive.
cdi_t7g_entry_01003e:
db 0x6C, 0x09 ; 01003E: provisional 68k bge.b $10049
db 0x00, 0x00, 0x3F, 0x28 ; 010040: provisional 68k ori.b #$28, d0
db 0x00, 0x02, 0x61, 0x00 ; 010044: provisional 68k ori.b #$0, d2
db 0xBC, 0x56 ; 010048: provisional 68k cmp.w (a6), d6
db 0x44, 0xDF ; 01004A: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBC, 0xE8 ; 01004C: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 010050: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010052: provisional 68k pea.l $1005c(pc)
db 0x61, 0x00, 0xBC, 0xF8 ; 010056: provisional 68k bsr.w $bd50
db 0x60, 0x0E ; 01005A: provisional 68k bra.b $1006a
db 0x73, 0x6D ; file 01005C
db 0x61, 0x6C ; 01005E: provisional 68k bsr.b $100cc
db 0x6C, 0x20 ; 010060: provisional 68k bge.b $10082
db 0x66, 0x72 ; 010062: provisional 68k bne.b $100d6
db 0x65, 0x65 ; 010064: provisional 68k bcs.b $100cb
db 0x09, 0x09, 0x00, 0x00 ; 010066: provisional 68k movep.w $0(a1), d4
db 0x3F, 0x28, 0x00, 0x04 ; 01006A: provisional 68k move.w $4(a0), -(a7)
db 0x61, 0x00, 0xBC, 0x2E ; 01006E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 010072: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBC, 0xC0 ; 010074: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xBC, 0xBC ; 010078: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 01007C: provisional 68k rts 
