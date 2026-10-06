; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0118D2–0118FD, inclusive.
cdi_nodv_entry_0118d2:
db 0x22, 0x03 ; 0118D2: provisional 68k move.l d3, d1
db 0x0C, 0x81, 0x00, 0x00, 0x00, 0x39 ; 0118D4: provisional 68k cmpi.l #$39, d1
db 0x66, 0x00, 0x00, 0x50 ; 0118DA: provisional 68k bne.w $1192c
db 0xB0, 0xBC, 0x00, 0x00, 0x00, 0x00 ; 0118DE: provisional 68k cmp.l #$0, d0
db 0x6B, 0x00, 0x00, 0x10 ; 0118E4: provisional 68k bmi.w $118f6
db 0x53, 0x44 ; 0118E8: provisional 68k subq.w #$1, d4
db 0x66, 0xDE ; 0118EA: provisional 68k bne.b $118ca
db 0x36, 0x3C, 0x00, 0x80 ; 0118EC: provisional 68k move.w #$80, d3
db 0x3D, 0x43, 0xD0, 0x28 ; 0118F0: provisional 68k move.w d3, -$2fd8(a6)
db 0x60, 0xD2 ; 0118F4: provisional 68k bra.b $118c8
db 0x48, 0x7A, 0x00, 0x08 ; 0118F6: provisional 68k pea.l $11900(pc)
db 0x61, 0x00, 0xB2, 0xD4 ; 0118FA: provisional 68k bsr.w $cbd0
