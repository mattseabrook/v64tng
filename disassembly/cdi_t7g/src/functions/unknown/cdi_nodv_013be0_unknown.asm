; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013BE0–013C15, inclusive.
cdi_nodv_entry_013be0:
db 0x49, 0xFA, 0x01, 0x00 ; 013BE0: provisional 68k lea.l $13ce2(pc), a4
db 0x2A, 0x4C ; 013BE4: provisional 68k movea.l a4, a5
db 0x7E, 0x08 ; 013BE6: provisional 68k moveq #$8, d7
db 0x9E, 0x41 ; 013BE8: provisional 68k sub.w d1, d7
db 0xE1, 0x41 ; 013BEA: provisional 68k asl.w #$8, d1
db 0xE1, 0x47 ; 013BEC: provisional 68k asl.w #$8, d7
db 0xD8, 0xC1 ; 013BEE: provisional 68k adda.w d1, a4
db 0xDA, 0xC7 ; 013BF0: provisional 68k adda.w d7, a5
db 0x14, 0x34, 0x20, 0x00 ; 013BF2: provisional 68k move.b (a4, d2.w), d2
db 0x16, 0x2B, 0x00, 0x04 ; 013BF6: provisional 68k move.b $4(a3), d3
db 0xD4, 0x35, 0x30, 0x00 ; 013BFA: provisional 68k add.b (a5, d3.w), d2
db 0x17, 0x42, 0x00, 0x04 ; 013BFE: provisional 68k move.b d2, $4(a3)
db 0x14, 0x1A ; 013C02: provisional 68k move.b (a2)+, d2
db 0x14, 0x34, 0x20, 0x00 ; 013C04: provisional 68k move.b (a4, d2.w), d2
db 0x16, 0x2B, 0x00, 0x09 ; 013C08: provisional 68k move.b $9(a3), d3
db 0xD4, 0x35, 0x30, 0x00 ; 013C0C: provisional 68k add.b (a5, d3.w), d2
db 0x17, 0x42, 0x00, 0x09 ; 013C10: provisional 68k move.b d2, $9(a3)
db 0x4E, 0x75 ; 013C14: provisional 68k rts 
