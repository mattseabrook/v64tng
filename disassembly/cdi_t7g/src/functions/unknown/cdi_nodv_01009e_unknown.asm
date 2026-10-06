; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01009E–0100CD, inclusive.
cdi_nodv_entry_01009e:
db 0x41, 0xEE ; file 01009E
db 0xAD, 0xB8 ; 0100A0: provisional 68k dc.w $adb8
db 0x41, 0xE8, 0x00, 0x44 ; 0100A2: provisional 68k lea.l $44(a0), a0
db 0x70, 0x03 ; 0100A6: provisional 68k moveq #$3, d0
db 0x26, 0x3C, 0x80, 0x00, 0x00, 0x00 ; 0100A8: provisional 68k move.l #$80000000, d3
db 0x32, 0x3C, 0x00, 0x3F ; 0100AE: provisional 68k move.w #$3f, d1
db 0x24, 0x03 ; 0100B2: provisional 68k move.l d3, d2
db 0x00, 0x82, 0x00, 0xFF, 0x00, 0x00 ; 0100B4: provisional 68k ori.l #$ff0000, d2
db 0x20, 0xC2 ; 0100BA: provisional 68k move.l d2, (a0)+
db 0xD6, 0xBC, 0x01, 0x00, 0x00, 0x00 ; 0100BC: provisional 68k add.l #$1000000, d3
db 0x51, 0xC9, 0xFF, 0xEE ; 0100C2: provisional 68k dbra d1, $100b2
db 0x58, 0x88 ; 0100C6: provisional 68k addq.l #$4, a0
db 0x51, 0xC8, 0xFF, 0xDE ; 0100C8: provisional 68k dbra d0, $100a8
db 0x4E, 0x75 ; 0100CC: provisional 68k rts 
