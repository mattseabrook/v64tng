; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E908–00E947, inclusive.
cdi_nodv_entry_00e908:
db 0x28, 0x6D, 0x00, 0x32 ; 00E908: provisional 68k movea.l $32(a5), a4
db 0x3F, 0x2D, 0x00, 0x3C ; 00E90C: provisional 68k move.w $3c(a5), -(a7)
db 0x2F, 0x0C ; 00E910: provisional 68k move.l a4, -(a7)
db 0x61, 0x00, 0x2D, 0x78 ; 00E912: provisional 68k bsr.w $1168c
db 0x3E, 0x2D, 0x00, 0x3E ; 00E916: provisional 68k move.w $3e(a5), d7
db 0x20, 0x3C, 0xD0, 0x00, 0xFC, 0x00 ; 00E91A: provisional 68k move.l #$d000fc00, d0
db 0x22, 0x3C, 0x10, 0x00, 0x00, 0x00 ; 00E920: provisional 68k move.l #$10000000, d1
db 0x24, 0x2E, 0xC0, 0x64 ; 00E926: provisional 68k move.l -$3f9c(a6), d2
db 0x84, 0xBC, 0x40, 0x00, 0x00, 0x00 ; 00E92A: provisional 68k or.l #$40000000, d2
db 0x53, 0x47 ; 00E930: provisional 68k subq.w #$1, d7
db 0x20, 0xC0 ; 00E932: provisional 68k move.l d0, (a0)+
db 0x20, 0xC1 ; 00E934: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00E936: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00E938: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00E93A: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00E93C: provisional 68k move.l d1, (a0)+
db 0x20, 0xC1 ; 00E93E: provisional 68k move.l d1, (a0)+
db 0x20, 0xC2 ; 00E940: provisional 68k move.l d2, (a0)+
db 0x51, 0xCF, 0xFF, 0xEE ; 00E942: provisional 68k dbra d7, $e932
db 0x4E, 0x75 ; 00E946: provisional 68k rts 
