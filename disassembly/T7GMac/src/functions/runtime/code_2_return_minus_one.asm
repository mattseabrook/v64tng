; verified-role: Return the constant negative-one result.
; Original native symbol: None; evidence file offset 0x38e4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_return_minus_one:
db 0x4E, 0x56, 0x00, 0x00 ; file 0038E4 | 68k link.w a6, #$0
db 0x70, 0xFF ; file 0038E8 | 68k moveq #$ff, d0
db 0x4E, 0x5E ; file 0038EA | 68k unlk a6
db 0x4E, 0x75 ; file 0038EC | 68k rts 
