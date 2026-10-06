; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010322–01036B, inclusive.
cdi_t7g_entry_010322:
db 0x48, 0xE7, 0x80, 0xE0 ; 010322: provisional 68k movem.l d0/a0-a2, -(a7)
db 0x20, 0x6F, 0x00, 0x14 ; 010326: provisional 68k movea.l $14(a7), a0
db 0x22, 0x6F, 0x00, 0x18 ; 01032A: provisional 68k movea.l $18(a7), a1
db 0x45, 0xE8, 0x00, 0x00 ; 01032E: provisional 68k lea.l $0(a0), a2
db 0x70, 0x08 ; 010332: provisional 68k moveq #$8, d0
db 0x14, 0xD9 ; 010334: provisional 68k move.b (a1)+, (a2)+
db 0x67, 0x26 ; 010336: provisional 68k beq.b $1035e
db 0x51, 0xC8, 0xFF, 0xFA ; 010338: provisional 68k dbra d0, $10334
db 0x22, 0x6F, 0x00, 0x18 ; 01033C: provisional 68k movea.l $18(a7), a1
db 0x48, 0x51 ; 010340: provisional 68k pea.l (a1)
db 0x61, 0x00, 0xBA, 0x0C ; 010342: provisional 68k bsr.w $bd50
db 0x32, 0x3C, 0x80, 0x00 ; 010346: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xBA, 0x32 ; 01034A: provisional 68k bsr.w $bd7e
db 0x3A, 0x20 ; 01034E: provisional 68k move.w -(a0), d5
db 0x4E, 0x61 ; 010350: provisional 68k move a1, usp
db 0x6D, 0x65 ; 010352: provisional 68k blt.b $103b9
db 0x20, 0x74, 0x6F, 0x6F, 0x20, 0x6C ; 010354: provisional 68k movea.l ([$206c, a4]), a0
db 0x6F, 0x6E ; 01035A: provisional 68k ble.b $103ca
db 0x67, 0x00, 0x4C, 0xDF ; 01035C: provisional 68k beq.w $1503d
db 0x07, 0x01 ; 010360: provisional 68k btst.l d3, d1
db 0x2F, 0x57, 0x00, 0x08 ; 010362: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 010366: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 01036A: provisional 68k rts 
