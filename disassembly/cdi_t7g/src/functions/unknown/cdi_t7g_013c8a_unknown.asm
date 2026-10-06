; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013C8A–013CAF, inclusive.
cdi_t7g_entry_013c8a:
db 0x63, 0x65 ; 013C8A: provisional 68k bls.b $13cf1
db 0x6C, 0x6C ; 013C8C: provisional 68k bge.b $13cfa
db 0x20, 0x2D, 0x20, 0x00 ; 013C8E: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 013C92: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xC6, 0xD6 ; 013C94: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 013C98: provisional 68k rts 
db 0x4E, 0x75 ; 013C9A: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 013C9C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x80, 0xDC ; 013CA0: provisional 68k bsr.w $bd7e
db 0x63, 0x65 ; 013CA4: provisional 68k bls.b $13d0b
db 0x6C, 0x6C ; 013CA6: provisional 68k bge.b $13d14
db 0x5F, 0x64 ; 013CA8: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 013CAA: provisional 68k bcs.b $13d1f
db 0x74, 0x72 ; 013CAC: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 013CAE: provisional 68k ble.b $13d29
