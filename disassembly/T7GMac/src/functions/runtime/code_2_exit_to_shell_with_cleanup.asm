; verified-role: Call the runtime cleanup helper with zero and invoke the ExitToShell trap A9F4.
; Original native symbol: None; evidence file offset 0x150c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_exit_to_shell_with_cleanup:
db 0x42, 0x67 ; file 00150C | 68k clr.w -(a7)
db 0x4E, 0xBA, 0x00, 0x08 ; file 00150E | 68k jsr $4b0(pc)
db 0xA9, 0xF4 ; file 001512 | 68k dc.w $a9f4
db 0x54, 0x8F ; file 001514 | 68k addq.l #$2, a7
db 0x4E, 0x75 ; file 001516 | 68k rts 
