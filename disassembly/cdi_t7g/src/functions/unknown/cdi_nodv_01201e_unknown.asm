; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01201E–01206F, inclusive.
cdi_nodv_entry_01201e:
db 0xFF, 0xC4 ; 01201E: provisional 68k dc.w $ffc4
db 0x2A, 0x6F, 0x00, 0x30 ; 012020: provisional 68k movea.l $30(a7), a5
db 0xBB, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 012024: provisional 68k cmpa.l #$0, a5
db 0x67, 0x00, 0x00, 0x72 ; 01202A: provisional 68k beq.w $1209e
db 0x20, 0x6F, 0x00, 0x34 ; 01202E: provisional 68k movea.l $34(a7), a0
db 0x72, 0x00 ; 012032: provisional 68k moveq #$0, d1
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x38 ; 012034: provisional 68k cmpi.w #$80, $38(a7)
db 0x67, 0x00, 0x00, 0x08 ; 01203A: provisional 68k beq.w $12044
db 0x22, 0x3C, 0x00, 0x00, 0x00, 0x80 ; 01203E: provisional 68k move.l #$80, d1
db 0x30, 0x2D, 0x00, 0x1E ; 012044: provisional 68k move.w $1e(a5), d0
db 0xD2, 0x6D, 0x00, 0x1C ; 012048: provisional 68k add.w $1c(a5), d1
db 0x22, 0x6D, 0x00, 0x20 ; 01204C: provisional 68k movea.l $20(a5), a1
db 0x74, 0x00 ; 012050: provisional 68k moveq #$0, d2
db 0x34, 0x01 ; 012052: provisional 68k move.w d1, d2
db 0xC4, 0x7C, 0x00, 0x3F ; 012054: provisional 68k and.w #$3f, d2
db 0xD4, 0x7C, 0x00, 0x80 ; 012058: provisional 68k add.w #$80, d2
db 0xE1, 0x42 ; 01205C: provisional 68k asl.w #$8, d2
db 0x48, 0x42 ; 01205E: provisional 68k swap d2
db 0x36, 0x01 ; 012060: provisional 68k move.w d1, d3
db 0xEC, 0x4B ; 012062: provisional 68k lsr.w #$6, d3
db 0xD2, 0x43 ; 012064: provisional 68k add.w d3, d1
db 0xE5, 0x41 ; 012066: provisional 68k asl.w #$2, d1
db 0x41, 0xF0, 0x10, 0x44 ; 012068: provisional 68k lea.l $44(a0, d1.w), a0
db 0x28, 0x3C, 0x01, 0x00 ; file 01206C
