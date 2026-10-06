; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00021A–0002B1, inclusive.
cdi_loader_entry_00021a:
db 0x30, 0x2E, 0x80, 0x20 ; 00021A: provisional 68k move.w -$7fe0(a6), d0
db 0x4E, 0x40, 0x00, 0x0F ; 00021E: provisional 68k trap #0 ; OS-9 service word $000F
db 0x72, 0x00 ; 000222: provisional 68k moveq #$0, d1
db 0x4E, 0x40, 0x00, 0x06 ; 000224: provisional 68k trap #0 ; OS-9 service word $0006
db 0x42, 0x6E, 0x80, 0x20 ; 000228: provisional 68k clr.w -$7fe0(a6)
db 0x4A, 0x40 ; 00022C: provisional 68k tst.w d0
db 0x66, 0x02 ; 00022E: provisional 68k bne.b $232
db 0x4E, 0x75 ; 000230: provisional 68k rts 
db 0x41, 0xFA, 0x00, 0x40 ; 000232: provisional 68k lea.l $274(pc), a0
db 0x70, 0x41 ; 000236: provisional 68k moveq #$41, d0
db 0x4E, 0x40, 0x00, 0x84 ; 000238: provisional 68k trap #0 ; OS-9 service word $0084
db 0x64, 0x30 ; 00023C: provisional 68k bcc.b $26e
db 0x61, 0x00, 0xFF, 0x92 ; 00023E: provisional 68k bsr.w $1d2
db 0x61, 0x00, 0xFF, 0x8E ; 000242: provisional 68k bsr.w $1d2
db 0x48, 0x7A, 0x00, 0x08 ; 000246: provisional 68k pea.l $250(pc)
db 0x61, 0x00, 0xFF, 0xA0 ; 00024A: provisional 68k bsr.w $1ec
db 0x60, 0x14 ; 00024E: provisional 68k bra.b $264
db 0x65, 0x72 ; 000250: provisional 68k bcs.b $2c4
db 0x72, 0x5F ; 000252: provisional 68k moveq #$5f, d1
db 0x69, 0x6E ; 000254: provisional 68k bvs.b $2c4
db 0x69, 0x74 ; 000256: provisional 68k bvs.b $2cc
db 0x69, 0x61 ; 000258: provisional 68k bvs.b $2bb
db 0x6C, 0x69 ; 00025A: provisional 68k bge.b $2c5
db 0x73, 0x65 ; file 00025C
db 0x3A, 0x20 ; 00025E: provisional 68k move.w -(a0), d5
db 0x0D, 0x0A, 0x00, 0x00 ; 000260: provisional 68k movep.w $0(a2), d6
db 0x61, 0x00, 0xFF, 0x6C ; 000264: provisional 68k bsr.w $1d2
db 0x32, 0x01 ; 000268: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xFF, 0xAE ; 00026A: provisional 68k bsr.w $21a
db 0x3D, 0x40, 0x80, 0x20 ; 00026E: provisional 68k move.w d0, -$7fe0(a6)
db 0x4E, 0x75 ; 000272: provisional 68k rts 
db 0x2F, 0x63, 0x64, 0x2F ; 000274: provisional 68k move.l -(a3), $642f(a7)
db 0x65, 0x72 ; 000278: provisional 68k bcs.b $2ec
db 0x72, 0x6F ; 00027A: provisional 68k moveq #$6f, d1
db 0x72, 0x73 ; 00027C: provisional 68k moveq #$73, d1
db 0x2E, 0x74, 0x78, 0x74 ; 00027E: provisional 68k movea.l $74(a4, d7.l), a7
db 0x00, 0x00, 0x0C, 0x18 ; 000282: provisional 68k ori.b #$18, d0
db 0x00, 0x3A ; file 000286
db 0x66, 0xFA ; 000288: provisional 68k bne.b $284
db 0x0C, 0x18, 0x00, 0x3A ; 00028A: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 00028E: provisional 68k bne.b $28a
db 0x0C, 0x10, 0x00, 0x0D ; 000290: provisional 68k cmpi.b #$d, (a0)
db 0x67, 0x04 ; 000294: provisional 68k beq.b $29a
db 0x12, 0xD8 ; 000296: provisional 68k move.b (a0)+, (a1)+
db 0x60, 0xF6 ; 000298: provisional 68k bra.b $290
db 0x42, 0x11 ; 00029A: provisional 68k clr.b (a1)
db 0x4E, 0x75 ; 00029C: provisional 68k rts 
db 0x0C, 0x18, 0x00, 0x3A ; 00029E: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 0002A2: provisional 68k bne.b $29e
db 0x0C, 0x10, 0x00, 0x3A ; 0002A4: provisional 68k cmpi.b #$3a, (a0)
db 0x67, 0x04 ; 0002A8: provisional 68k beq.b $2ae
db 0x12, 0xD8 ; 0002AA: provisional 68k move.b (a0)+, (a1)+
db 0x60, 0xF6 ; 0002AC: provisional 68k bra.b $2a4
db 0x42, 0x11 ; 0002AE: provisional 68k clr.b (a1)
db 0x4E, 0x75 ; 0002B0: provisional 68k rts 
