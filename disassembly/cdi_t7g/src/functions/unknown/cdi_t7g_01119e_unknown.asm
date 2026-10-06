; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01119E–0111EF, inclusive.
cdi_t7g_entry_01119e:
db 0xFF, 0xC4 ; 01119E: provisional 68k dc.w $ffc4
db 0x2A, 0x6F, 0x00, 0x30 ; 0111A0: provisional 68k movea.l $30(a7), a5
db 0xBB, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 0111A4: provisional 68k cmpa.l #$0, a5
db 0x67, 0x00, 0x00, 0x72 ; 0111AA: provisional 68k beq.w $1121e
db 0x20, 0x6F, 0x00, 0x34 ; 0111AE: provisional 68k movea.l $34(a7), a0
db 0x72, 0x00 ; 0111B2: provisional 68k moveq #$0, d1
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x38 ; 0111B4: provisional 68k cmpi.w #$80, $38(a7)
db 0x67, 0x00, 0x00, 0x08 ; 0111BA: provisional 68k beq.w $111c4
db 0x22, 0x3C, 0x00, 0x00, 0x00, 0x80 ; 0111BE: provisional 68k move.l #$80, d1
db 0x30, 0x2D, 0x00, 0x1E ; 0111C4: provisional 68k move.w $1e(a5), d0
db 0xD2, 0x6D, 0x00, 0x1C ; 0111C8: provisional 68k add.w $1c(a5), d1
db 0x22, 0x6D, 0x00, 0x20 ; 0111CC: provisional 68k movea.l $20(a5), a1
db 0x74, 0x00 ; 0111D0: provisional 68k moveq #$0, d2
db 0x34, 0x01 ; 0111D2: provisional 68k move.w d1, d2
db 0xC4, 0x7C, 0x00, 0x3F ; 0111D4: provisional 68k and.w #$3f, d2
db 0xD4, 0x7C, 0x00, 0x80 ; 0111D8: provisional 68k add.w #$80, d2
db 0xE1, 0x42 ; 0111DC: provisional 68k asl.w #$8, d2
db 0x48, 0x42 ; 0111DE: provisional 68k swap d2
db 0x36, 0x01 ; 0111E0: provisional 68k move.w d1, d3
db 0xEC, 0x4B ; 0111E2: provisional 68k lsr.w #$6, d3
db 0xD2, 0x43 ; 0111E4: provisional 68k add.w d3, d1
db 0xE5, 0x41 ; 0111E6: provisional 68k asl.w #$2, d1
db 0x41, 0xF0, 0x10, 0x44 ; 0111E8: provisional 68k lea.l $44(a0, d1.w), a0
db 0x28, 0x3C, 0x01, 0x00 ; file 0111EC
