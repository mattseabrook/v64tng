; verified-role: Initialize the native runtime, dispatch application startup, and exit through trap A9F4.
; Original native symbol: None; evidence file offset 0x12c7a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_1_start_application:
db 0x42, 0x78, 0x0A, 0x4A ; file 012C7A | 68k clr.w $a4a.w
db 0x9D, 0xCE ; file 012C7E | 68k suba.l a6, a6
db 0x4E, 0xBA, 0x00, 0x34 ; file 012C80 | 68k jsr $48(pc)
db 0x4E, 0xBA, 0x00, 0x24 ; file 012C84 | 68k jsr $3c(pc)
db 0x42, 0x67 ; file 012C88 | 68k clr.w -(a7)
db 0x48, 0x79, 0x00, 0x00, 0xFF, 0xFF ; file 012C8A | 68k pea.l $ffff.l
db 0x48, 0x6F, 0x00, 0x04 ; file 012C90 | 68k pea.l $4(a7)
db 0x48, 0x57 ; file 012C94 | 68k pea.l (a7)
db 0x48, 0x78, 0x00, 0x01 ; file 012C96 | 68k pea.l $1.w
db 0x22, 0x3A, 0xFF, 0xD6 ; file 012C9A | 68k move.l $4(pc), d1
db 0x4E, 0xB5, 0x10, 0x00 ; file 012C9E | 68k jsr (a5, d1.w)
db 0x20, 0x6D, 0x00, 0x6C ; file 012CA2 | 68k movea.l $6c(a5), a0
db 0x4E, 0x90 ; file 012CA6 | 68k jsr (a0)
db 0xA9, 0xF4 ; file 012CA8 | 68k dc.w $a9f4
db 0x22, 0x3A, 0xFF, 0xCA ; file 012CAA | 68k move.l $8(pc), d1
db 0x67, 0x04 ; file 012CAE | 68k beq.b $46
db 0x4E, 0xB5, 0x10, 0x00 ; file 012CB0 | 68k jsr (a5, d1.w)
db 0x4E, 0x75 ; file 012CB4 | 68k rts 
