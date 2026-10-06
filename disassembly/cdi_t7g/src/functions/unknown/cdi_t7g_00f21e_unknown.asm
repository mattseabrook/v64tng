; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F21E–00F24D, inclusive.
cdi_t7g_entry_00f21e:
db 0x41, 0xEE ; file 00F21E
db 0xAD, 0xB8 ; 00F220: provisional 68k dc.w $adb8
db 0x41, 0xE8, 0x00, 0x44 ; 00F222: provisional 68k lea.l $44(a0), a0
db 0x70, 0x03 ; 00F226: provisional 68k moveq #$3, d0
db 0x26, 0x3C, 0x80, 0x00, 0x00, 0x00 ; 00F228: provisional 68k move.l #$80000000, d3
db 0x32, 0x3C, 0x00, 0x3F ; 00F22E: provisional 68k move.w #$3f, d1
db 0x24, 0x03 ; 00F232: provisional 68k move.l d3, d2
db 0x00, 0x82, 0x00, 0xFF, 0x00, 0x00 ; 00F234: provisional 68k ori.l #$ff0000, d2
db 0x20, 0xC2 ; 00F23A: provisional 68k move.l d2, (a0)+
db 0xD6, 0xBC, 0x01, 0x00, 0x00, 0x00 ; 00F23C: provisional 68k add.l #$1000000, d3
db 0x51, 0xC9, 0xFF, 0xEE ; 00F242: provisional 68k dbra d1, $f232
db 0x58, 0x88 ; 00F246: provisional 68k addq.l #$4, a0
db 0x51, 0xC8, 0xFF, 0xDE ; 00F248: provisional 68k dbra d0, $f228
db 0x4E, 0x75 ; 00F24C: provisional 68k rts 
