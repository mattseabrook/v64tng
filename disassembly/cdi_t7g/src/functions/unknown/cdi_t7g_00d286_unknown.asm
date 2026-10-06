; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D286–00D303, inclusive.
cdi_t7g_entry_00d286:
db 0x00, 0x00 ; file 00D286
db 0x3C, 0x3C, 0xFF, 0xFF ; 00D288: provisional 68k move.w #$ffff, d6
db 0x28, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00D28C: provisional 68k move.l #$0, d4
db 0x26, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00D292: provisional 68k move.l #$0, d3
db 0x34, 0x2E, 0xAB, 0x16 ; 00D298: provisional 68k move.w -$54ea(a6), d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00D29C: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x24 ; 00D2A0: provisional 68k move.w #$124, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D2A4: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x04 ; 00D2A8: provisional 68k bcs.b $d2ae
db 0x4E, 0x75 ; 00D2AA: provisional 68k rts 
db 0x4E, 0x75 ; 00D2AC: provisional 68k rts 
db 0x32, 0x01 ; 00D2AE: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xEA, 0xCC ; 00D2B0: provisional 68k bsr.w $bd7e
db 0x70, 0x72 ; 00D2B4: provisional 68k moveq #$72, d0
db 0x65, 0x6C ; 00D2B6: provisional 68k bcs.b $d324
db 0x6F, 0x61 ; 00D2B8: provisional 68k ble.b $d31b
db 0x64, 0x5F ; 00D2BA: provisional 68k bcc.b $d31b
db 0x64, 0x6F ; 00D2BC: provisional 68k bcc.b $d32d
db 0x6E, 0x65 ; 00D2BE: provisional 68k bgt.b $d325
db 0x3A, 0x20 ; 00D2C0: provisional 68k move.w -(a0), d5
db 0x45, 0x72 ; file 00D2C2
db 0x72, 0x6F ; 00D2C4: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 00D2C6: provisional 68k moveq #$20, d1
db 0x6F, 0x6E ; 00D2C8: provisional 68k ble.b $d338
db 0x20, 0x6D, 0x61, 0x5F ; 00D2CA: provisional 68k movea.l $615f(a5), a0
db 0x70, 0x6C ; 00D2CE: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00D2D0: provisional 68k bsr.b $d34b
db 0x00, 0x00, 0x4A, 0xAE ; 00D2D2: provisional 68k ori.b #$ae, d0
db 0xAB, 0xB6 ; 00D2D6: provisional 68k dc.w $abb6
db 0x67, 0x0C ; 00D2D8: provisional 68k beq.b $d2e6
db 0x2A, 0x6E, 0xAB, 0xB6 ; 00D2DA: provisional 68k movea.l -$544a(a6), a5
db 0x3B, 0x7C, 0x00, 0x04, 0x00, 0x1C ; 00D2DE: provisional 68k move.w #$4, $1c(a5)
db 0x4E, 0x75 ; 00D2E4: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00D2E6: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xEA, 0x92 ; 00D2EA: provisional 68k bsr.w $bd7e
db 0x73, 0x72 ; file 00D2EE
db 0x76, 0x5F ; 00D2F0: provisional 68k moveq #$5f, d3
db 0x65, 0x6F ; 00D2F2: provisional 68k bcs.b $d363
db 0x66, 0x3A ; 00D2F4: provisional 68k bne.b $d330
db 0x20, 0x63 ; 00D2F6: provisional 68k movea.l -(a3), a0
db 0x75, 0x72 ; file 00D2F8
db 0x5F, 0x62 ; 00D2FA: provisional 68k subq.w #$7, -(a2)
db 0x61, 0x64 ; 00D2FC: provisional 68k bsr.b $d362
db 0x20, 0x3D ; file 00D2FE
db 0x20, 0x30, 0x20, 0x00 ; 00D300: provisional 68k move.l (a0, d2.w), d0
