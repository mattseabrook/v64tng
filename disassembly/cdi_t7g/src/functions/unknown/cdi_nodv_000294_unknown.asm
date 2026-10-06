; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 000294–0002B9, inclusive.
cdi_nodv_entry_000294:
db 0x4A, 0x42 ; 000294: provisional 68k tst.w d2
db 0x66, 0x12 ; 000296: provisional 68k bne.b $2aa
db 0x42, 0x41 ; 000298: provisional 68k clr.w d1
db 0x14, 0x19 ; 00029A: provisional 68k move.b (a1)+, d2
db 0x6A, 0x06 ; 00029C: provisional 68k bpl.b $2a4
db 0xC4, 0x7C, 0x00, 0x7F ; 00029E: provisional 68k and.w #$7f, d2
db 0x72, 0xFF ; 0002A2: provisional 68k moveq #$ff, d1
db 0x53, 0x42 ; 0002A4: provisional 68k subq.w #$1, d2
db 0x10, 0x19 ; 0002A6: provisional 68k move.b (a1)+, d0
db 0x4E, 0x75 ; 0002A8: provisional 68k rts 
db 0x53, 0x42 ; 0002AA: provisional 68k subq.w #$1, d2
db 0x4A, 0x41 ; 0002AC: provisional 68k tst.w d1
db 0x67, 0x06 ; 0002AE: provisional 68k beq.b $2b6
db 0x10, 0x29, 0xFF, 0xFF ; 0002B0: provisional 68k move.b -$1(a1), d0
db 0x4E, 0x75 ; 0002B4: provisional 68k rts 
db 0x10, 0x19 ; 0002B6: provisional 68k move.b (a1)+, d0
db 0x4E, 0x75 ; 0002B8: provisional 68k rts 
