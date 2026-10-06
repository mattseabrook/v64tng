; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0112A8–0112C1, inclusive.
cdi_nodv_entry_0112a8:
db 0x22, 0x48 ; 0112A8: provisional 68k movea.l a0, a1
db 0x47, 0xE9, 0x00, 0x00 ; 0112AA: provisional 68k lea.l $0(a1), a3
db 0x2F, 0x0C ; 0112AE: provisional 68k move.l a4, -(a7)
db 0x2F, 0x0B ; 0112B0: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xF9, 0x7A ; 0112B2: provisional 68k bsr.w $10c2e
db 0x65, 0x08 ; 0112B6: provisional 68k bcs.b $112c0
db 0x22, 0x69, 0x00, 0x14 ; 0112B8: provisional 68k movea.l $14(a1), a1
db 0x20, 0x09 ; 0112BC: provisional 68k move.l a1, d0
db 0x66, 0xEA ; 0112BE: provisional 68k bne.b $112aa
db 0x4E, 0x75 ; 0112C0: provisional 68k rts 
