; verified-role: Perform startup callbacks, run EventLoop when its startup predicate succeeds, and invoke ExitToShell.
; Original native symbol: None; evidence file offset 0x60a4.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_run_application_event_loop:
db 0xA0, 0x63 ; file 0060A4 | 68k dc.w $a063
db 0x4E, 0xBA, 0xFE, 0x24 ; file 0060A6 | 68k jsr $4e64(pc)
db 0x4E, 0xAD, 0x01, 0x7A ; file 0060AA | 68k jsr $17a(a5)
db 0x4A, 0x40 ; file 0060AE | 68k tst.w d0
db 0x67, 0x04 ; file 0060B0 | 68k beq.b $504e
db 0x4E, 0xBA, 0xF4, 0xF0 ; file 0060B2 | 68k jsr $453c(pc)
db 0x4E, 0xAD, 0x01, 0x82 ; file 0060B6 | 68k jsr $182(a5)
db 0xA9, 0xF4 ; file 0060BA | 68k dc.w $a9f4
db 0x4E, 0x75 ; file 0060BC | 68k rts 
