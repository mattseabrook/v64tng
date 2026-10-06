; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0109AE–0109CD, inclusive.
cdi_nodv_entry_0109ae:
db 0x20, 0x08 ; 0109AE: provisional 68k move.l a0, d0
db 0x67, 0x1A ; 0109B0: provisional 68k beq.b $109cc
db 0x4A, 0xA8, 0x00, 0x16 ; 0109B2: provisional 68k tst.l $16(a0)
db 0x66, 0x0A ; 0109B6: provisional 68k bne.b $109c2
db 0x2F, 0x08 ; 0109B8: provisional 68k move.l a0, -(a7)
db 0x20, 0x68, 0x00, 0x16 ; 0109BA: provisional 68k movea.l $16(a0), a0
db 0x61, 0xEE ; 0109BE: provisional 68k bsr.b $109ae
db 0x20, 0x5F ; 0109C0: provisional 68k movea.l (a7)+, a0
db 0x22, 0x68, 0x00, 0x22 ; 0109C2: provisional 68k movea.l $22(a0), a1
db 0x61, 0x06 ; 0109C6: provisional 68k bsr.b $109ce
db 0x20, 0x49 ; 0109C8: provisional 68k movea.l a1, a0
db 0x60, 0xE2 ; 0109CA: provisional 68k bra.b $109ae
db 0x4E, 0x75 ; 0109CC: provisional 68k rts 
