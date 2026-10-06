; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0118AE–0118C5, inclusive.
cdi_nodv_entry_0118ae:
db 0x3D, 0x41, 0xD0, 0x26 ; 0118AE: provisional 68k move.w d1, -$2fda(a6)
db 0x3D, 0x41, 0xD0, 0x28 ; 0118B2: provisional 68k move.w d1, -$2fd8(a6)
db 0x3E, 0x02 ; 0118B6: provisional 68k move.w d2, d7
db 0x67, 0x00, 0x01, 0x36 ; 0118B8: provisional 68k beq.w $119f0
db 0x7C, 0x00 ; 0118BC: provisional 68k moveq #$0, d6
db 0x20, 0x46 ; 0118BE: provisional 68k movea.l d6, a0
db 0x22, 0x7C, 0x00, 0x00, 0x00, 0x00 ; 0118C0: provisional 68k movea.l #$0, a1
