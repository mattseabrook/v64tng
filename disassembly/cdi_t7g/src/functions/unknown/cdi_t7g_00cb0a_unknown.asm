; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CB0A–00CB99, inclusive.
cdi_t7g_entry_00cb0a:
db 0x36, 0x3C, 0x00, 0x05 ; 00CB0A: provisional 68k move.w #$5, d3
db 0x38, 0x3C, 0x00, 0x12 ; 00CB0E: provisional 68k move.w #$12, d4
db 0x30, 0x2E, 0xAB, 0x78 ; 00CB12: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00CB16: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00CB1A: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00CB1E: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x60 ; 00CB22: provisional 68k bcs.b $cb84
db 0x2D, 0x48, 0xAB, 0x7A ; 00CB24: provisional 68k move.l a0, -$5486(a6)
db 0x3D, 0x40, 0xAB, 0x8E ; 00CB28: provisional 68k move.w d0, -$5472(a6)
db 0x36, 0x00 ; 00CB2C: provisional 68k move.w d0, d3
db 0x30, 0x2E, 0xAB, 0x78 ; 00CB2E: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00CB32: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00CB36: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8D ; 00CB3A: provisional 68k trap #0 ; OS-9 service word $008D
db 0x41, 0xE8, 0x00, 0x0A ; 00CB3E: provisional 68k lea.l $a(a0), a0
db 0x2D, 0x48, 0xAB, 0x94 ; 00CB42: provisional 68k move.l a0, -$546c(a6)
db 0x36, 0x3C, 0x00, 0x05 ; 00CB46: provisional 68k move.w #$5, d3
db 0x38, 0x3C, 0x00, 0x12 ; 00CB4A: provisional 68k move.w #$12, d4
db 0x30, 0x2E, 0xAB, 0x78 ; 00CB4E: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00CB52: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00CB56: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00CB5A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x24 ; 00CB5E: provisional 68k bcs.b $cb84
db 0x2D, 0x48, 0xAB, 0x7E ; 00CB60: provisional 68k move.l a0, -$5482(a6)
db 0x3D, 0x40, 0xAB, 0x90 ; 00CB64: provisional 68k move.w d0, -$5470(a6)
db 0x36, 0x00 ; 00CB68: provisional 68k move.w d0, d3
db 0x30, 0x2E, 0xAB, 0x78 ; 00CB6A: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00CB6E: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x00 ; 00CB72: provisional 68k move.w #$0, d2
db 0x4E, 0x40, 0x00, 0x8D ; 00CB76: provisional 68k trap #0 ; OS-9 service word $008D
db 0x41, 0xE8, 0x00, 0x0A ; 00CB7A: provisional 68k lea.l $a(a0), a0
db 0x2D, 0x48, 0xAB, 0x98 ; 00CB7E: provisional 68k move.l a0, -$5468(a6)
db 0x4E, 0x75 ; 00CB82: provisional 68k rts 
db 0x32, 0x01 ; 00CB84: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF1, 0xF6 ; 00CB86: provisional 68k bsr.w $bd7e
db 0x63, 0x72 ; 00CB8A: provisional 68k bls.b $cbfe
db 0x65, 0x61 ; 00CB8C: provisional 68k bcs.b $cbef
db 0x74, 0x65 ; 00CB8E: provisional 68k moveq #$65, d2
db 0x5F, 0x73, 0x6D, 0x61, 0x70, 0x73 ; 00CB90: provisional 68k subq.w #$7, ([$7073, a3])
db 0x3A, 0x20 ; 00CB96: provisional 68k move.w -(a0), d5
db 0x00, 0x00 ; file 00CB98
