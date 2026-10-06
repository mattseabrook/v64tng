; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F6EA–00F71D, inclusive.
cdi_t7g_entry_00f6ea:
db 0x30, 0x2E, 0xC0, 0xCC ; 00F6EA: provisional 68k move.w -$3f34(a6), d0
db 0x72, 0x59 ; 00F6EE: provisional 68k moveq #$59, d1
db 0x74, 0x00 ; 00F6F0: provisional 68k moveq #$0, d2
db 0x4E, 0x40, 0x00, 0x8D ; 00F6F2: provisional 68k trap #0 ; OS-9 service word $008D
db 0xB0, 0x6E, 0xC0, 0xCE ; 00F6F6: provisional 68k cmp.w -$3f32(a6), d0
db 0x66, 0x08 ; 00F6FA: provisional 68k bne.b $f704
db 0xB2, 0xAE, 0xC0, 0xE0 ; 00F6FC: provisional 68k cmp.l -$3f20(a6), d1
db 0x66, 0x02 ; 00F700: provisional 68k bne.b $f704
db 0x4E, 0x75 ; 00F702: provisional 68k rts 
db 0x3D, 0x40, 0xC0, 0xCE ; 00F704: provisional 68k move.w d0, -$3f32(a6)
db 0x2D, 0x41, 0xC0, 0xE0 ; 00F708: provisional 68k move.l d1, -$3f20(a6)
db 0x34, 0x01 ; 00F70C: provisional 68k move.w d1, d2
db 0x48, 0x41 ; 00F70E: provisional 68k swap d1
db 0x02, 0x3C, 0x00, 0x0B ; 00F710: provisional 68k andi.b #$b, ccr
db 0x4E, 0x75 ; 00F714: provisional 68k rts 
db 0x3D, 0x7C, 0xFF, 0xFF, 0xC0, 0xF0 ; 00F716: provisional 68k move.w #$ffff, -$3f10(a6)
db 0x4E, 0x75 ; 00F71C: provisional 68k rts 
