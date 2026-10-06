; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DAF0–00DB29, inclusive.
cdi_nodv_entry_00daf0:
db 0x30, 0x2E, 0xAB, 0x90 ; 00DAF0: provisional 68k move.w -$5470(a6), d0
db 0x43, 0xEE, 0xAB, 0xA8 ; 00DAF4: provisional 68k lea.l -$5458(a6), a1
db 0x24, 0x6E, 0xAB, 0x98 ; 00DAF8: provisional 68k movea.l -$5468(a6), a2
db 0x42, 0x69, 0x00, 0x00 ; 00DAFC: provisional 68k clr.w $0(a1)
db 0x33, 0x6E, 0xAB, 0x92, 0x00, 0x02 ; 00DB00: provisional 68k move.w -$546e(a6), $2(a1)
db 0x24, 0x88 ; 00DB06: provisional 68k move.l a0, (a2)
db 0x36, 0x00 ; 00DB08: provisional 68k move.w d0, d3
db 0x20, 0x49 ; 00DB0A: provisional 68k movea.l a1, a0
db 0x30, 0x2E, 0xAB, 0x78 ; 00DB0C: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00DB10: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x01 ; 00DB14: provisional 68k move.w #$1, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00DB18: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x02 ; 00DB1C: provisional 68k bcs.b $db20
db 0x4E, 0x75 ; 00DB1E: provisional 68k rts 
db 0x42, 0xE7 ; 00DB20: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00DB22: provisional 68k pea.l $db2c(pc)
db 0x61, 0x00, 0xF0, 0xA8 ; 00DB26: provisional 68k bsr.w $cbd0
