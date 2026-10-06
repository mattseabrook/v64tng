; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BBFE–00BC53, inclusive.
cdi_t7g_entry_00bbfe:
db 0x4A, 0x6E, 0x80, 0x5A ; 00BBFE: provisional 68k tst.w -$7fa6(a6)
db 0x67, 0x2C ; 00BC02: provisional 68k beq.b $bc30
db 0x20, 0x6E, 0x80, 0x56 ; 00BC04: provisional 68k movea.l -$7faa(a6), a0
db 0x2D, 0x68, 0x00, 0x3E, 0x80, 0x56 ; 00BC08: provisional 68k move.l $3e(a0), -$7faa(a6)
db 0x42, 0xA8, 0x00, 0x0A ; 00BC0E: provisional 68k clr.l $a(a0)
db 0x42, 0xA8, 0x00, 0x3E ; 00BC12: provisional 68k clr.l $3e(a0)
db 0x42, 0xA8, 0x00, 0x42 ; 00BC16: provisional 68k clr.l $42(a0)
db 0x42, 0xA8, 0x00, 0x0E ; 00BC1A: provisional 68k clr.l $e(a0)
db 0x42, 0x68, 0x00, 0x2C ; 00BC1E: provisional 68k clr.w $2c(a0)
db 0x42, 0x68, 0x00, 0x2A ; 00BC22: provisional 68k clr.w $2a(a0)
db 0x53, 0x6E, 0x80, 0x5A ; 00BC26: provisional 68k subq.w #$1, -$7fa6(a6)
db 0x52, 0x6E, 0x80, 0x5C ; 00BC2A: provisional 68k addq.w #$1, -$7fa4(a6)
db 0x4E, 0x75 ; 00BC2E: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00BC30: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x01, 0x48 ; 00BC34: provisional 68k bsr.w $bd7e
db 0x67, 0x65 ; 00BC38: provisional 68k beq.b $bc9f
db 0x74, 0x5F ; 00BC3A: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 00BC3C: provisional 68k ble.b $bca0
db 0x6A, 0x65 ; 00BC3E: provisional 68k bpl.b $bca5
db 0x63, 0x74 ; 00BC40: provisional 68k bls.b $bcb6
db 0x3A, 0x20 ; 00BC42: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 00BC44: provisional 68k move usp, a7
db 0x20, 0x6D, 0x6F, 0x72 ; 00BC46: provisional 68k movea.l $6f72(a5), a0
db 0x65, 0x20 ; 00BC4A: provisional 68k bcs.b $bc6c
db 0x6F, 0x62 ; 00BC4C: provisional 68k ble.b $bcb0
db 0x6A, 0x65 ; 00BC4E: provisional 68k bpl.b $bcb5
db 0x63, 0x74 ; 00BC50: provisional 68k bls.b $bcc6
db 0x73, 0x00 ; file 00BC52
