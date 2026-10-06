; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F19A–00F21D, inclusive.
cdi_t7g_entry_00f19a:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F19A: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00F19E: provisional 68k moveq #$56, d1
db 0x74, 0x0D ; 00F1A0: provisional 68k moveq #$d, d2
db 0x36, 0x0B ; 00F1A2: provisional 68k move.w a3, d3
db 0x38, 0x07 ; 00F1A4: provisional 68k move.w d7, d4
db 0x3A, 0x0B ; 00F1A6: provisional 68k move.w a3, d5
db 0x3C, 0x07 ; 00F1A8: provisional 68k move.w d7, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00F1AA: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x32 ; 00F1AE: provisional 68k bcs.b $f1e2
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F1B0: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00F1B4: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00F1B6: provisional 68k moveq #$a, d2
db 0x36, 0x0B ; 00F1B8: provisional 68k move.w a3, d3
db 0x38, 0x07 ; 00F1BA: provisional 68k move.w d7, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00F1BC: provisional 68k move.w #$0, d5
db 0x2C, 0x0A ; 00F1C0: provisional 68k move.l a2, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00F1C2: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x1A ; 00F1C6: provisional 68k bcs.b $f1e2
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F1C8: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00F1CC: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00F1CE: provisional 68k moveq #$a, d2
db 0x36, 0x0B ; 00F1D0: provisional 68k move.w a3, d3
db 0x38, 0x07 ; 00F1D2: provisional 68k move.w d7, d4
db 0x3A, 0x3C, 0x00, 0x01 ; 00F1D4: provisional 68k move.w #$1, d5
db 0x2C, 0x0C ; 00F1D8: provisional 68k move.l a4, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00F1DA: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x02 ; 00F1DE: provisional 68k bcs.b $f1e2
db 0x4E, 0x75 ; 00F1E0: provisional 68k rts 
db 0x42, 0xE7 ; 00F1E2: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00F1E4: provisional 68k pea.l $f1ee(pc)
db 0x61, 0x00, 0xCB, 0x66 ; 00F1E8: provisional 68k bsr.w $bd50
db 0x60, 0x0E ; 00F1EC: provisional 68k bra.b $f1fc
db 0x45, 0x72 ; file 00F1EE
db 0x72, 0x6F ; 00F1F0: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 00F1F2: provisional 68k moveq #$20, d1
db 0x63, 0x6F ; 00F1F4: provisional 68k bls.b $f265
db 0x64, 0x65 ; 00F1F6: provisional 68k bcc.b $f25d
db 0x20, 0x3D ; file 00F1F8
db 0x20, 0x00 ; 00F1FA: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 00F1FC: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0xCA, 0x9E ; 00F1FE: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00F202: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xCB, 0x30 ; 00F204: provisional 68k bsr.w $bd36
db 0x32, 0x01 ; 00F208: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCB, 0x72 ; 00F20A: provisional 68k bsr.w $bd7e
db 0x66, 0x69 ; 00F20E: provisional 68k bne.b $f279
db 0x78, 0x5F ; 00F210: provisional 68k moveq #$5f, d4
db 0x6C, 0x63 ; 00F212: provisional 68k bge.b $f277
db 0x74, 0x5F ; 00F214: provisional 68k moveq #$5f, d2
db 0x6C, 0x69 ; 00F216: provisional 68k bge.b $f281
db 0x6E, 0x65 ; 00F218: provisional 68k bgt.b $f27f
db 0x3A, 0x20 ; 00F21A: provisional 68k move.w -(a0), d5
db 0x00, 0x00 ; file 00F21C
