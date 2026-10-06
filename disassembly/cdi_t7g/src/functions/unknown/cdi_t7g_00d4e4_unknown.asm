; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D4E4–00D511, inclusive.
cdi_t7g_entry_00d4e4:
db 0x0C, 0x69 ; file 00D4E4
db 0x00, 0x00, 0x00, 0x1C ; 00D4E6: provisional 68k ori.b #$1c, d0
db 0x66, 0x10 ; 00D4EA: provisional 68k bne.b $d4fc
db 0x2F, 0x09 ; 00D4EC: provisional 68k move.l a1, -(a7)
db 0x22, 0x69, 0x00, 0x3C ; 00D4EE: provisional 68k movea.l $3c(a1), a1
db 0x61, 0x00, 0xFF, 0xF0 ; 00D4F2: provisional 68k bsr.w $d4e4
db 0x22, 0x5F ; 00D4F6: provisional 68k movea.l (a7)+, a1
db 0x22, 0x69, 0x00, 0x40 ; 00D4F8: provisional 68k movea.l $40(a1), a1
db 0x3B, 0x7C, 0xFF, 0xFF, 0x00, 0x3A ; 00D4FC: provisional 68k move.w #$ffff, $3a(a5)
db 0x3F, 0x29, 0x00, 0x24 ; 00D502: provisional 68k move.w $24(a1), -(a7)
db 0x3F, 0x29, 0x00, 0x28 ; 00D506: provisional 68k move.w $28(a1), -(a7)
db 0x2F, 0x0D ; 00D50A: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0x09, 0xA4 ; 00D50C: provisional 68k bsr.w $deb2
db 0x4E, 0x75 ; 00D510: provisional 68k rts 
