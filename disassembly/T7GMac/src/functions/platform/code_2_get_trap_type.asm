; verified-role: Native GetTrapType routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetTrapType; evidence file offset 0x6ac4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_trap_type:
db 0x4E, 0x56, 0x00, 0x00 ; file 006AAE | 68k link.w a6, #$0
db 0x08, 0x2E, 0x00, 0x03, 0x00, 0x08 ; file 006AB2 | 68k btst.b #$3, $8(a6)
db 0x66, 0x04 ; file 006AB8 | 68k bne.b $5a56
db 0x70, 0x00 ; file 006ABA | 68k moveq #$0, d0
db 0x60, 0x02 ; file 006ABC | 68k bra.b $5a58
db 0x70, 0x01 ; file 006ABE | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 006AC0 | 68k unlk a6
db 0x4E, 0x75 ; file 006AC2 | 68k rts 
