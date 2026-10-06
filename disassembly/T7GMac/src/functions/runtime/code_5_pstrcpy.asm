; verified-role: Native pstrcpy routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: pstrcpy; evidence file offset 0xbcf0.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_pstrcpy:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BCCA | 68k link.w a6, #$0
db 0x2F, 0x07 ; file 00BCCE | 68k move.l d7, -(a7)
db 0x20, 0x6E, 0x00, 0x0C ; file 00BCD0 | 68k movea.l $c(a6), a0
db 0x1E, 0x10 ; file 00BCD4 | 68k move.b (a0), d7
db 0x49, 0xC7 ; file 00BCD6 | 68k extb.l d7
db 0x1D, 0xB6, 0x71, 0x25, 0x00, 0x0C, 0x71, 0x25, 0x00, 0x08 ; file 00BCD8 | 68k move.b ([$c, a6], d7.w), ([$8, a6], d7.w)
db 0x30, 0x07 ; file 00BCE2 | 68k move.w d7, d0
db 0x53, 0x47 ; file 00BCE4 | 68k subq.w #$1, d7
db 0x4A, 0x40 ; file 00BCE6 | 68k tst.w d0
db 0x66, 0xEE ; file 00BCE8 | 68k bne.b $4572
db 0x2E, 0x1F ; file 00BCEA | 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 00BCEC | 68k unlk a6
db 0x4E, 0x75 ; file 00BCEE | 68k rts 
