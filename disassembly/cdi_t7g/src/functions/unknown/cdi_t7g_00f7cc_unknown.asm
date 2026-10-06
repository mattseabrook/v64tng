; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F7CC–00F88D, inclusive.
cdi_t7g_entry_00f7cc:
db 0x36, 0x3C, 0x01, 0x2C ; 00F7CC: provisional 68k move.w #$12c, d3
db 0x48, 0x43 ; 00F7D0: provisional 68k swap d3
db 0x36, 0x3C, 0x01, 0x2C ; 00F7D2: provisional 68k move.w #$12c, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F7D6: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F7DA: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00F7DE: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F7E2: provisional 68k trap #0 ; OS-9 service word $008E
db 0x26, 0x3C, 0xFF, 0xFF, 0xFF, 0xFF ; 00F7E6: provisional 68k move.l #$ffffffff, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F7EC: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F7F0: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x04 ; 00F7F4: provisional 68k move.w #$4, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F7F8: provisional 68k trap #0 ; OS-9 service word $008E
db 0x36, 0x3C, 0x00, 0x00 ; 00F7FC: provisional 68k move.w #$0, d3
db 0x48, 0x43 ; 00F800: provisional 68k swap d3
db 0x36, 0x3C, 0x00, 0x00 ; 00F802: provisional 68k move.w #$0, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F806: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F80A: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x06 ; 00F80E: provisional 68k move.w #$6, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F812: provisional 68k trap #0 ; OS-9 service word $008E
db 0x41, 0xFA, 0x00, 0x32 ; 00F816: provisional 68k lea.l $f84a(pc), a0
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F81A: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F81E: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x03 ; 00F822: provisional 68k move.w #$3, d2
db 0x36, 0x3C, 0x00, 0x0E ; 00F826: provisional 68k move.w #$e, d3
db 0x48, 0x43 ; 00F82A: provisional 68k swap d3
db 0x36, 0x3C, 0x00, 0x0E ; 00F82C: provisional 68k move.w #$e, d3
db 0x38, 0x3C, 0x00, 0x10 ; 00F830: provisional 68k move.w #$10, d4
db 0x48, 0x44 ; 00F834: provisional 68k swap d4
db 0x38, 0x3C, 0x00, 0x10 ; 00F836: provisional 68k move.w #$10, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00F83A: provisional 68k move.w #$0, d5
db 0x20, 0x48 ; 00F83E: provisional 68k movea.l a0, a0
db 0x4E, 0x40, 0x00, 0x8E ; 00F840: provisional 68k trap #0 ; OS-9 service word $008E
db 0x42, 0x6E, 0xC0, 0xEE ; 00F844: provisional 68k clr.w -$3f12(a6)
db 0x4E, 0x75 ; 00F848: provisional 68k rts 
db 0x01, 0x00 ; 00F84A: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F84C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F84E: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F850: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F852: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F854: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F856: provisional 68k btst.l d0, d0
db 0xFF, 0xFF ; 00F858: provisional 68k dc.w $ffff
db 0x01, 0x00 ; 00F85A: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F85C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F85E: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F860: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F862: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F864: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F866: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00F868: provisional 68k btst.l d0, d0
db 0x61, 0x00, 0x01, 0xE8 ; 00F86A: provisional 68k bsr.w $fa54
db 0x61, 0x00, 0x03, 0x66 ; 00F86E: provisional 68k bsr.w $fbd6
db 0x50, 0xE8, 0x00, 0x00 ; 00F872: provisional 68k st.b $0(a0)
db 0x50, 0xE8, 0x00, 0x01 ; 00F876: provisional 68k st.b $1(a0)
db 0x42, 0x6E, 0xCF, 0xD2 ; 00F87A: provisional 68k clr.w -$302e(a6)
db 0x42, 0x6E, 0xCF, 0xD4 ; 00F87E: provisional 68k clr.w -$302c(a6)
db 0x42, 0x6E, 0xCF, 0xD6 ; 00F882: provisional 68k clr.w -$302a(a6)
db 0x4E, 0x75 ; 00F886: provisional 68k rts 
db 0x50, 0xEE, 0xCF, 0xD6 ; 00F888: provisional 68k st.b -$302a(a6)
db 0x4E, 0x75 ; 00F88C: provisional 68k rts 
