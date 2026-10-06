; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010F8E–010FB3, inclusive.
cdi_nodv_entry_010f8e:
db 0x48, 0xE7, 0x80, 0x04 ; 010F8E: provisional 68k movem.l d0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 010F92: provisional 68k movea.l $c(a7), a5
db 0x20, 0x2D, 0x00, 0x10 ; 010F96: provisional 68k move.l $10(a5), d0
db 0x67, 0x10 ; 010F9A: provisional 68k beq.b $10fac
db 0x2A, 0x40 ; 010F9C: provisional 68k movea.l d0, a5
db 0x2F, 0x2D, 0x00, 0x14 ; 010F9E: provisional 68k move.l $14(a5), -(a7)
db 0x2F, 0x0D ; 010FA2: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFF, 0xBE ; 010FA4: provisional 68k bsr.w $10f64
db 0x20, 0x1F ; 010FA8: provisional 68k move.l (a7)+, d0
db 0x66, 0xF0 ; 010FAA: provisional 68k bne.b $10f9c
db 0x4C, 0xDF, 0x20, 0x01 ; 010FAC: provisional 68k movem.l (a7)+, d0/a5
db 0x2E, 0x9F ; 010FB0: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 010FB2: provisional 68k rts 
