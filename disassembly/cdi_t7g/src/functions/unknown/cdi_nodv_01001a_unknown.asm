; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01001A–01009D, inclusive.
cdi_nodv_entry_01001a:
db 0x30, 0x2E, 0xAD, 0xA2 ; 01001A: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 01001E: provisional 68k moveq #$56, d1
db 0x74, 0x0D ; 010020: provisional 68k moveq #$d, d2
db 0x36, 0x0B ; 010022: provisional 68k move.w a3, d3
db 0x38, 0x07 ; 010024: provisional 68k move.w d7, d4
db 0x3A, 0x0B ; 010026: provisional 68k move.w a3, d5
db 0x3C, 0x07 ; 010028: provisional 68k move.w d7, d6
db 0x4E, 0x40, 0x00, 0x8E ; 01002A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x32 ; 01002E: provisional 68k bcs.b $10062
db 0x30, 0x2E, 0xAD, 0xA2 ; 010030: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 010034: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 010036: provisional 68k moveq #$a, d2
db 0x36, 0x0B ; 010038: provisional 68k move.w a3, d3
db 0x38, 0x07 ; 01003A: provisional 68k move.w d7, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 01003C: provisional 68k move.w #$0, d5
db 0x2C, 0x0A ; 010040: provisional 68k move.l a2, d6
db 0x4E, 0x40, 0x00, 0x8E ; 010042: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x1A ; 010046: provisional 68k bcs.b $10062
db 0x30, 0x2E, 0xAD, 0xA2 ; 010048: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 01004C: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 01004E: provisional 68k moveq #$a, d2
db 0x36, 0x0B ; 010050: provisional 68k move.w a3, d3
db 0x38, 0x07 ; 010052: provisional 68k move.w d7, d4
db 0x3A, 0x3C, 0x00, 0x01 ; 010054: provisional 68k move.w #$1, d5
db 0x2C, 0x0C ; 010058: provisional 68k move.l a4, d6
db 0x4E, 0x40, 0x00, 0x8E ; 01005A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x02 ; 01005E: provisional 68k bcs.b $10062
db 0x4E, 0x75 ; 010060: provisional 68k rts 
db 0x42, 0xE7 ; 010062: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010064: provisional 68k pea.l $1006e(pc)
db 0x61, 0x00, 0xCB, 0x66 ; 010068: provisional 68k bsr.w $cbd0
db 0x60, 0x0E ; 01006C: provisional 68k bra.b $1007c
db 0x45, 0x72 ; file 01006E
db 0x72, 0x6F ; 010070: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 010072: provisional 68k moveq #$20, d1
db 0x63, 0x6F ; 010074: provisional 68k bls.b $100e5
db 0x64, 0x65 ; 010076: provisional 68k bcc.b $100dd
db 0x20, 0x3D ; file 010078
db 0x20, 0x00 ; 01007A: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 01007C: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0xCA, 0x9E ; 01007E: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 010082: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xCB, 0x30 ; 010084: provisional 68k bsr.w $cbb6
db 0x32, 0x01 ; 010088: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCB, 0x72 ; 01008A: provisional 68k bsr.w $cbfe
db 0x66, 0x69 ; 01008E: provisional 68k bne.b $100f9
db 0x78, 0x5F ; 010090: provisional 68k moveq #$5f, d4
db 0x6C, 0x63 ; 010092: provisional 68k bge.b $100f7
db 0x74, 0x5F ; 010094: provisional 68k moveq #$5f, d2
db 0x6C, 0x69 ; 010096: provisional 68k bge.b $10101
db 0x6E, 0x65 ; 010098: provisional 68k bgt.b $100ff
db 0x3A, 0x20 ; 01009A: provisional 68k move.w -(a0), d5
db 0x00, 0x00 ; file 01009C
