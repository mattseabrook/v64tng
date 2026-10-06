; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CBD0–00CBFD, inclusive.
cdi_nodv_entry_00cbd0:
db 0x42, 0xE7 ; file 00CBD0
db 0x48, 0xE7, 0xC0, 0x80 ; 00CBD2: provisional 68k movem.l d0-d1/a0, -(a7)
db 0x20, 0x6F, 0x00, 0x12 ; 00CBD6: provisional 68k movea.l $12(a7), a0
db 0x72, 0x00 ; 00CBDA: provisional 68k moveq #$0, d1
db 0x4A, 0x30, 0x18, 0x00 ; 00CBDC: provisional 68k tst.b (a0, d1.l)
db 0x67, 0x04 ; 00CBE0: provisional 68k beq.b $cbe6
db 0x52, 0x81 ; 00CBE2: provisional 68k addq.l #$1, d1
db 0x60, 0xF6 ; 00CBE4: provisional 68k bra.b $cbdc
db 0x70, 0x00 ; 00CBE6: provisional 68k moveq #$0, d0
db 0x4E, 0x40, 0x00, 0x8A ; 00CBE8: provisional 68k trap #0 ; OS-9 service word $008A
db 0x4C, 0xDF, 0x01, 0x03 ; 00CBEC: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2F, 0x6F, 0x00, 0x02, 0x00, 0x06 ; 00CBF0: provisional 68k move.l $2(a7), $6(a7)
db 0x44, 0xDF ; 00CBF6: provisional 68k move.w (a7)+, ccr
db 0x4F, 0xEF, 0x00, 0x04 ; 00CBF8: provisional 68k lea.l $4(a7), a7
db 0x4E, 0x75 ; 00CBFC: provisional 68k rts 
