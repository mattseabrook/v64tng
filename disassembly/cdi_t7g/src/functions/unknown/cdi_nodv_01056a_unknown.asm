; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01056A–01059D, inclusive.
cdi_nodv_entry_01056a:
db 0x30, 0x2E, 0xC0, 0xCC ; 01056A: provisional 68k move.w -$3f34(a6), d0
db 0x72, 0x59 ; 01056E: provisional 68k moveq #$59, d1
db 0x74, 0x00 ; 010570: provisional 68k moveq #$0, d2
db 0x4E, 0x40, 0x00, 0x8D ; 010572: provisional 68k trap #0 ; OS-9 service word $008D
db 0xB0, 0x6E, 0xC0, 0xCE ; 010576: provisional 68k cmp.w -$3f32(a6), d0
db 0x66, 0x08 ; 01057A: provisional 68k bne.b $10584
db 0xB2, 0xAE, 0xC0, 0xE0 ; 01057C: provisional 68k cmp.l -$3f20(a6), d1
db 0x66, 0x02 ; 010580: provisional 68k bne.b $10584
db 0x4E, 0x75 ; 010582: provisional 68k rts 
db 0x3D, 0x40, 0xC0, 0xCE ; 010584: provisional 68k move.w d0, -$3f32(a6)
db 0x2D, 0x41, 0xC0, 0xE0 ; 010588: provisional 68k move.l d1, -$3f20(a6)
db 0x34, 0x01 ; 01058C: provisional 68k move.w d1, d2
db 0x48, 0x41 ; 01058E: provisional 68k swap d1
db 0x02, 0x3C, 0x00, 0x0B ; 010590: provisional 68k andi.b #$b, ccr
db 0x4E, 0x75 ; 010594: provisional 68k rts 
db 0x3D, 0x7C, 0xFF, 0xFF, 0xC0, 0xF0 ; 010596: provisional 68k move.w #$ffff, -$3f10(a6)
db 0x4E, 0x75 ; 01059C: provisional 68k rts 
