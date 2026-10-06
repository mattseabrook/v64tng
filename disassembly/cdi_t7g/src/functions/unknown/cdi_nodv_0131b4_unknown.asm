; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0131B4–013213, inclusive.
cdi_nodv_entry_0131b4:
db 0x30, 0x2D ; file 0131B4
db 0x00, 0x28, 0x32, 0x2D, 0x00, 0x24 ; 0131B6: provisional 68k ori.b #$2d, $24(a0)
db 0x34, 0x2C, 0x00, 0x28 ; 0131BC: provisional 68k move.w $28(a4), d2
db 0x36, 0x2C, 0x00, 0x24 ; 0131C0: provisional 68k move.w $24(a4), d3
db 0x61, 0x00, 0x00, 0x4E ; 0131C4: provisional 68k bsr.w $13214
db 0x65, 0x40 ; 0131C8: provisional 68k bcs.b $1320a
db 0x90, 0x6D, 0x00, 0x28 ; 0131CA: provisional 68k sub.w $28(a5), d0
db 0x94, 0x6C, 0x00, 0x28 ; 0131CE: provisional 68k sub.w $28(a4), d2
db 0x36, 0x00 ; 0131D2: provisional 68k move.w d0, d3
db 0x3E, 0x01 ; 0131D4: provisional 68k move.w d1, d7
db 0x3A, 0x02 ; 0131D6: provisional 68k move.w d2, d5
db 0x48, 0xA7, 0x10, 0x00 ; 0131D8: provisional 68k movem.w d3, -(a7)
db 0x30, 0x2D, 0x00, 0x26 ; 0131DC: provisional 68k move.w $26(a5), d0
db 0x32, 0x2D, 0x00, 0x22 ; 0131E0: provisional 68k move.w $22(a5), d1
db 0x34, 0x2C, 0x00, 0x26 ; 0131E4: provisional 68k move.w $26(a4), d2
db 0x36, 0x2C, 0x00, 0x22 ; 0131E8: provisional 68k move.w $22(a4), d3
db 0x61, 0x00, 0x00, 0x26 ; 0131EC: provisional 68k bsr.w $13214
db 0x4C, 0x9F, 0x00, 0x08 ; 0131F0: provisional 68k movem.w (a7)+, d3
db 0x65, 0x14 ; 0131F4: provisional 68k bcs.b $1320a
db 0x90, 0x6D, 0x00, 0x26 ; 0131F6: provisional 68k sub.w $26(a5), d0
db 0x94, 0x6C, 0x00, 0x26 ; 0131FA: provisional 68k sub.w $26(a4), d2
db 0x3C, 0x01 ; 0131FE: provisional 68k move.w d1, d6
db 0x38, 0x02 ; 013200: provisional 68k move.w d2, d4
db 0x34, 0x00 ; 013202: provisional 68k move.w d0, d2
db 0x02, 0x3C, 0x00, 0x0E ; 013204: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 013208: provisional 68k rts 
db 0x42, 0x46 ; 01320A: provisional 68k clr.w d6
db 0x42, 0x47 ; 01320C: provisional 68k clr.w d7
db 0x00, 0x3C, 0x00, 0x01 ; 01320E: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 013212: provisional 68k rts 
