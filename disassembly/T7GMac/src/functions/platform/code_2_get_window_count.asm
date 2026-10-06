; verified-role: Native GetWindowCount routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetWindowCount; evidence file offset 0x6b66.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_window_count:
db 0x4E, 0x56, 0x00, 0x00 ; file 006B2A | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x08 ; file 006B2E | 68k movem.l d7/a4, -(a7)
db 0x7E, 0x00 ; file 006B32 | 68k moveq #$0, d7
db 0x28, 0x78, 0x09, 0xD6 ; file 006B34 | 68k movea.l $9d6.w, a4
db 0x60, 0x1E ; file 006B38 | 68k bra.b $5af0
db 0x4A, 0x6C, 0x00, 0x6C ; file 006B3A | 68k tst.w $6c(a4)
db 0x6C, 0x06 ; file 006B3E | 68k bge.b $5ade
db 0x4A, 0x2E, 0x00, 0x08 ; file 006B40 | 68k tst.b $8(a6)
db 0x67, 0x0E ; file 006B44 | 68k beq.b $5aec
db 0x4A, 0x2C, 0x00, 0x6E ; file 006B46 | 68k tst.b $6e(a4)
db 0x66, 0x06 ; file 006B4A | 68k bne.b $5aea
db 0x4A, 0x2E, 0x00, 0x0A ; file 006B4C | 68k tst.b $a(a6)
db 0x67, 0x02 ; file 006B50 | 68k beq.b $5aec
db 0x52, 0x47 ; file 006B52 | 68k addq.w #$1, d7
db 0x28, 0x6C, 0x00, 0x90 ; file 006B54 | 68k movea.l $90(a4), a4
db 0x20, 0x0C ; file 006B58 | 68k move.l a4, d0
db 0x66, 0xDE ; file 006B5A | 68k bne.b $5ad2
db 0x30, 0x07 ; file 006B5C | 68k move.w d7, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 006B5E | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 006B62 | 68k unlk a6
db 0x4E, 0x75 ; file 006B64 | 68k rts 
