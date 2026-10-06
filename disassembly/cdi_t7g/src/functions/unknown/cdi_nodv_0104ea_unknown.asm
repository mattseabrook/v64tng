; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0104EA–010569, inclusive.
cdi_nodv_entry_0104ea:
db 0x42, 0x47 ; 0104EA: provisional 68k clr.w d7
db 0x92, 0x6E, 0xC0, 0xD8 ; 0104EC: provisional 68k sub.w -$3f28(a6), d1
db 0x6A, 0x04 ; 0104F0: provisional 68k bpl.b $104f6
db 0x42, 0x41 ; 0104F2: provisional 68k clr.w d1
db 0x7E, 0xFF ; 0104F4: provisional 68k moveq #$ff, d7
db 0x94, 0x6E, 0xC0, 0xDA ; 0104F6: provisional 68k sub.w -$3f26(a6), d2
db 0x6A, 0x04 ; 0104FA: provisional 68k bpl.b $10500
db 0x42, 0x42 ; 0104FC: provisional 68k clr.w d2
db 0x7E, 0xFF ; 0104FE: provisional 68k moveq #$ff, d7
db 0xB2, 0x6E, 0xC0, 0xDC ; 010500: provisional 68k cmp.w -$3f24(a6), d1
db 0x6B, 0x08 ; 010504: provisional 68k bmi.b $1050e
db 0x32, 0x2E, 0xC0, 0xDC ; 010506: provisional 68k move.w -$3f24(a6), d1
db 0x53, 0x41 ; 01050A: provisional 68k subq.w #$1, d1
db 0x7E, 0xFF ; 01050C: provisional 68k moveq #$ff, d7
db 0xB4, 0x6E, 0xC0, 0xDE ; 01050E: provisional 68k cmp.w -$3f22(a6), d2
db 0x6B, 0x08 ; 010512: provisional 68k bmi.b $1051c
db 0x34, 0x2E, 0xC0, 0xDE ; 010514: provisional 68k move.w -$3f22(a6), d2
db 0x53, 0x42 ; 010518: provisional 68k subq.w #$1, d2
db 0x7E, 0xFF ; 01051A: provisional 68k moveq #$ff, d7
db 0xD2, 0x6E, 0xC0, 0xD8 ; 01051C: provisional 68k add.w -$3f28(a6), d1
db 0xD4, 0x6E, 0xC0, 0xDA ; 010520: provisional 68k add.w -$3f26(a6), d2
db 0xC2, 0x7C, 0x0F, 0xFE ; 010524: provisional 68k and.w #$ffe, d1
db 0xC4, 0x7C, 0x0F, 0xFE ; 010528: provisional 68k and.w #$ffe, d2
db 0x3D, 0x41, 0xC0, 0xD0 ; 01052C: provisional 68k move.w d1, -$3f30(a6)
db 0x3D, 0x42, 0xC0, 0xD2 ; 010530: provisional 68k move.w d2, -$3f2e(a6)
db 0x4A, 0x47 ; 010534: provisional 68k tst.w d7
db 0x67, 0x16 ; 010536: provisional 68k beq.b $1054e
db 0x36, 0x01 ; 010538: provisional 68k move.w d1, d3
db 0x48, 0x43 ; 01053A: provisional 68k swap d3
db 0x36, 0x02 ; 01053C: provisional 68k move.w d2, d3
db 0x2D, 0x43, 0xC0, 0xE0 ; 01053E: provisional 68k move.l d3, -$3f20(a6)
db 0x30, 0x2E, 0xC0, 0xCC ; 010542: provisional 68k move.w -$3f34(a6), d0
db 0x72, 0x59 ; 010546: provisional 68k moveq #$59, d1
db 0x74, 0x03 ; 010548: provisional 68k moveq #$3, d2
db 0x4E, 0x40, 0x00, 0x8E ; 01054A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4A, 0x6E, 0xC0, 0xEE ; 01054E: provisional 68k tst.w -$3f12(a6)
db 0x67, 0x14 ; 010552: provisional 68k beq.b $10568
db 0x26, 0x2E, 0xC0, 0xE0 ; 010554: provisional 68k move.l -$3f20(a6), d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 010558: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 01055C: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x00 ; 010560: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010564: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4E, 0x75 ; 010568: provisional 68k rts 
