; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010176–0101A1, inclusive.
cdi_t7g_entry_010176:
db 0x48, 0xE7, 0x00, 0x84 ; 010176: provisional 68k movem.l a0/a5, -(a7)
db 0x20, 0x2F, 0x00, 0x0C ; 01017A: provisional 68k move.l $c(a7), d0
db 0x67, 0x1A ; 01017E: provisional 68k beq.b $1019a
db 0x2A, 0x40 ; 010180: provisional 68k movea.l d0, a5
db 0x61, 0x00, 0x00, 0x56 ; 010182: provisional 68k bsr.w $101da
db 0x90, 0xA8, 0x00, 0x0C ; 010186: provisional 68k sub.l $c(a0), d0
db 0x80, 0xE8, 0x00, 0x00 ; 01018A: provisional 68k divu.w $0(a0), d0
db 0x0C, 0x68, 0x00, 0x4C, 0x00, 0x00 ; 01018E: provisional 68k cmpi.w #$4c, $0(a0)
db 0x6F, 0x04 ; 010194: provisional 68k ble.b $1019a
db 0x08, 0xC0, 0x00, 0x0F ; 010196: provisional 68k bset.b #$f, d0
db 0x4C, 0xDF, 0x21, 0x00 ; 01019A: provisional 68k movem.l (a7)+, a0/a5
db 0x2E, 0x9F ; 01019E: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 0101A0: provisional 68k rts 
