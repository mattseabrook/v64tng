; verified-role: Native DoSetCursor routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoSetCursor; evidence file offset 0x5596.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_do_set_cursor:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00556E | 68k link.w a6, #$fffc
db 0x4A, 0xAE, 0x00, 0x08 ; file 005572 | 68k tst.l $8(a6)
db 0x67, 0x06 ; file 005576 | 68k beq.b $4516
db 0x2F, 0x2E, 0x00, 0x08 ; file 005578 | 68k move.l $8(a6), -(a7)
db 0xA8, 0x51 ; file 00557C | 68k dc.w $a851
db 0x42, 0xAD, 0xDC, 0xA8 ; file 00557E | 68k clr.l -$2358(a5)
db 0x4A, 0xAE, 0x00, 0x08 ; file 005582 | 68k tst.l $8(a6)
db 0x66, 0x0A ; file 005586 | 68k bne.b $452a
db 0x42, 0xA7 ; file 005588 | 68k clr.l -(a7)
db 0x42, 0x27 ; file 00558A | 68k clr.b -(a7)
db 0x4E, 0xBA, 0xFE, 0xBC ; file 00558C | 68k jsr $43e2(pc)
db 0x5C, 0x8F ; file 005590 | 68k addq.l #$6, a7
db 0x4E, 0x5E ; file 005592 | 68k unlk a6
db 0x4E, 0x75 ; file 005594 | 68k rts 
