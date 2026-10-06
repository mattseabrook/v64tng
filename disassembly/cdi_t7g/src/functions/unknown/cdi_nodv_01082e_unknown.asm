; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01082E–01086D, inclusive.
cdi_nodv_entry_01082e:
db 0x4A, 0x28, 0x00, 0x01 ; 01082E: provisional 68k tst.b $1(a0)
db 0x67, 0x16 ; 010832: provisional 68k beq.b $1084a
db 0x4A, 0x28, 0x00, 0x00 ; 010834: provisional 68k tst.b $0(a0)
db 0x66, 0x20 ; 010838: provisional 68k bne.b $1085a
db 0x61, 0x00, 0x00, 0x70 ; 01083A: provisional 68k bsr.w $108ac
db 0x64, 0x0A ; 01083E: provisional 68k bcc.b $1084a
db 0x61, 0x00, 0x00, 0x2C ; 010840: provisional 68k bsr.w $1086e
db 0x00, 0x3C, 0x00, 0x01 ; 010844: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 010848: provisional 68k rts 
db 0x20, 0x28, 0x00, 0x22 ; 01084A: provisional 68k move.l $22(a0), d0
db 0x67, 0x04 ; 01084E: provisional 68k beq.b $10854
db 0x20, 0x40 ; 010850: provisional 68k movea.l d0, a0
db 0x60, 0xDA ; 010852: provisional 68k bra.b $1082e
db 0x02, 0x3C, 0x00, 0x0E ; 010854: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 010858: provisional 68k rts 
db 0x20, 0x28, 0x00, 0x16 ; 01085A: provisional 68k move.l $16(a0), d0
db 0x67, 0xEA ; 01085E: provisional 68k beq.b $1084a
db 0x2F, 0x08 ; 010860: provisional 68k move.l a0, -(a7)
db 0x20, 0x40 ; 010862: provisional 68k movea.l d0, a0
db 0x61, 0x00, 0xFF, 0xC8 ; 010864: provisional 68k bsr.w $1082e
db 0x20, 0x5F ; 010868: provisional 68k movea.l (a7)+, a0
db 0x64, 0xDE ; 01086A: provisional 68k bcc.b $1084a
db 0x4E, 0x75 ; 01086C: provisional 68k rts 
