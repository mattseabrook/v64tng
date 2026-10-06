; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F66A–00F6E9, inclusive.
cdi_t7g_entry_00f66a:
db 0x42, 0x47 ; 00F66A: provisional 68k clr.w d7
db 0x92, 0x6E, 0xC0, 0xD8 ; 00F66C: provisional 68k sub.w -$3f28(a6), d1
db 0x6A, 0x04 ; 00F670: provisional 68k bpl.b $f676
db 0x42, 0x41 ; 00F672: provisional 68k clr.w d1
db 0x7E, 0xFF ; 00F674: provisional 68k moveq #$ff, d7
db 0x94, 0x6E, 0xC0, 0xDA ; 00F676: provisional 68k sub.w -$3f26(a6), d2
db 0x6A, 0x04 ; 00F67A: provisional 68k bpl.b $f680
db 0x42, 0x42 ; 00F67C: provisional 68k clr.w d2
db 0x7E, 0xFF ; 00F67E: provisional 68k moveq #$ff, d7
db 0xB2, 0x6E, 0xC0, 0xDC ; 00F680: provisional 68k cmp.w -$3f24(a6), d1
db 0x6B, 0x08 ; 00F684: provisional 68k bmi.b $f68e
db 0x32, 0x2E, 0xC0, 0xDC ; 00F686: provisional 68k move.w -$3f24(a6), d1
db 0x53, 0x41 ; 00F68A: provisional 68k subq.w #$1, d1
db 0x7E, 0xFF ; 00F68C: provisional 68k moveq #$ff, d7
db 0xB4, 0x6E, 0xC0, 0xDE ; 00F68E: provisional 68k cmp.w -$3f22(a6), d2
db 0x6B, 0x08 ; 00F692: provisional 68k bmi.b $f69c
db 0x34, 0x2E, 0xC0, 0xDE ; 00F694: provisional 68k move.w -$3f22(a6), d2
db 0x53, 0x42 ; 00F698: provisional 68k subq.w #$1, d2
db 0x7E, 0xFF ; 00F69A: provisional 68k moveq #$ff, d7
db 0xD2, 0x6E, 0xC0, 0xD8 ; 00F69C: provisional 68k add.w -$3f28(a6), d1
db 0xD4, 0x6E, 0xC0, 0xDA ; 00F6A0: provisional 68k add.w -$3f26(a6), d2
db 0xC2, 0x7C, 0x0F, 0xFE ; 00F6A4: provisional 68k and.w #$ffe, d1
db 0xC4, 0x7C, 0x0F, 0xFE ; 00F6A8: provisional 68k and.w #$ffe, d2
db 0x3D, 0x41, 0xC0, 0xD0 ; 00F6AC: provisional 68k move.w d1, -$3f30(a6)
db 0x3D, 0x42, 0xC0, 0xD2 ; 00F6B0: provisional 68k move.w d2, -$3f2e(a6)
db 0x4A, 0x47 ; 00F6B4: provisional 68k tst.w d7
db 0x67, 0x16 ; 00F6B6: provisional 68k beq.b $f6ce
db 0x36, 0x01 ; 00F6B8: provisional 68k move.w d1, d3
db 0x48, 0x43 ; 00F6BA: provisional 68k swap d3
db 0x36, 0x02 ; 00F6BC: provisional 68k move.w d2, d3
db 0x2D, 0x43, 0xC0, 0xE0 ; 00F6BE: provisional 68k move.l d3, -$3f20(a6)
db 0x30, 0x2E, 0xC0, 0xCC ; 00F6C2: provisional 68k move.w -$3f34(a6), d0
db 0x72, 0x59 ; 00F6C6: provisional 68k moveq #$59, d1
db 0x74, 0x03 ; 00F6C8: provisional 68k moveq #$3, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F6CA: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4A, 0x6E, 0xC0, 0xEE ; 00F6CE: provisional 68k tst.w -$3f12(a6)
db 0x67, 0x14 ; 00F6D2: provisional 68k beq.b $f6e8
db 0x26, 0x2E, 0xC0, 0xE0 ; 00F6D4: provisional 68k move.l -$3f20(a6), d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F6D8: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F6DC: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00F6E0: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F6E4: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4E, 0x75 ; 00F6E8: provisional 68k rts 
