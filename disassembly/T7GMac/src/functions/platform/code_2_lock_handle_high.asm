; verified-role: Native LockHandleHigh routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: LockHandleHigh; evidence file offset 0x6f16.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_lock_handle_high:
db 0x4E, 0x56, 0xFF, 0xFC ; file 006EF4 | 68k link.w a6, #$fffc
db 0x2F, 0x07 ; file 006EF8 | 68k move.l d7, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 006EFA | 68k movea.l $8(a6), a0
db 0xA0, 0x69 ; file 006EFE | 68k dc.w $a069
db 0x1E, 0x00 ; file 006F00 | 68k move.b d0, d7
db 0x20, 0x6E, 0x00, 0x08 ; file 006F02 | 68k movea.l $8(a6), a0
db 0xA0, 0x64 ; file 006F06 | 68k dc.w $a064
db 0x20, 0x6E, 0x00, 0x08 ; file 006F08 | 68k movea.l $8(a6), a0
db 0xA0, 0x29 ; file 006F0C | 68k dc.w $a029
db 0x10, 0x07 ; file 006F0E | 68k move.b d7, d0
db 0x2E, 0x1F ; file 006F10 | 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 006F12 | 68k unlk a6
db 0x4E, 0x75 ; file 006F14 | 68k rts 
