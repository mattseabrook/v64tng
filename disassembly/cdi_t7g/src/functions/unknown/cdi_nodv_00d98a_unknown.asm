; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D98A–00DA19, inclusive.
cdi_nodv_entry_00d98a:
db 0x36, 0x3C, 0x00, 0x05 ; 00D98A: provisional 68k move.w #$5, d3
db 0x38, 0x3C, 0x00, 0x12 ; 00D98E: provisional 68k move.w #$12, d4
db 0x30, 0x2E, 0xAB, 0x78 ; 00D992: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00D996: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00D99A: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00D99E: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x60 ; 00D9A2: provisional 68k bcs.b $da04
db 0x2D, 0x48, 0xAB, 0x7A ; 00D9A4: provisional 68k move.l a0, -$5486(a6)
db 0x3D, 0x40, 0xAB, 0x8E ; 00D9A8: provisional 68k move.w d0, -$5472(a6)
db 0x36, 0x00 ; 00D9AC: provisional 68k move.w d0, d3
db 0x30, 0x2E, 0xAB, 0x78 ; 00D9AE: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00D9B2: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00D9B6: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8D ; 00D9BA: provisional 68k trap #0 ; OS-9 service word $008D
db 0x41, 0xE8, 0x00, 0x0A ; 00D9BE: provisional 68k lea.l $a(a0), a0
db 0x2D, 0x48, 0xAB, 0x94 ; 00D9C2: provisional 68k move.l a0, -$546c(a6)
db 0x36, 0x3C, 0x00, 0x05 ; 00D9C6: provisional 68k move.w #$5, d3
db 0x38, 0x3C, 0x00, 0x12 ; 00D9CA: provisional 68k move.w #$12, d4
db 0x30, 0x2E, 0xAB, 0x78 ; 00D9CE: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00D9D2: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00D9D6: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00D9DA: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x24 ; 00D9DE: provisional 68k bcs.b $da04
db 0x2D, 0x48, 0xAB, 0x7E ; 00D9E0: provisional 68k move.l a0, -$5482(a6)
db 0x3D, 0x40, 0xAB, 0x90 ; 00D9E4: provisional 68k move.w d0, -$5470(a6)
db 0x36, 0x00 ; 00D9E8: provisional 68k move.w d0, d3
db 0x30, 0x2E, 0xAB, 0x78 ; 00D9EA: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00D9EE: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00D9F2: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8D ; 00D9F6: provisional 68k trap #0 ; OS-9 service word $008D
db 0x41, 0xE8, 0x00, 0x0A ; 00D9FA: provisional 68k lea.l $a(a0), a0
db 0x2D, 0x48, 0xAB, 0x98 ; 00D9FE: provisional 68k move.l a0, -$5468(a6)
db 0x4E, 0x75 ; 00DA02: provisional 68k rts 
db 0x32, 0x01 ; 00DA04: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF1, 0xF6 ; 00DA06: provisional 68k bsr.w $cbfe
db 0x63, 0x72 ; 00DA0A: provisional 68k bls.b $da7e
db 0x65, 0x61 ; 00DA0C: provisional 68k bcs.b $da6f
db 0x74, 0x65 ; 00DA0E: provisional 68k moveq #$65, d2
db 0x5F, 0x73, 0x6D, 0x61, 0x70, 0x73 ; 00DA10: provisional 68k subq.w #$7, ([$7073, a3])
db 0x3A, 0x20 ; 00DA16: provisional 68k move.w -(a0), d5
db 0x00, 0x00 ; file 00DA18
