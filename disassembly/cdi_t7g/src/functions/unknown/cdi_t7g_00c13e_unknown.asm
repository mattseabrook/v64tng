; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C13E–00C177, inclusive.
cdi_t7g_entry_00c13e:
db 0x61, 0x00, 0xFB, 0xF6 ; 00C13E: provisional 68k bsr.w $bd36
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00C142: provisional 68k move.l #$0, -(a7)
db 0x61, 0x00, 0x42, 0xF8 ; 00C148: provisional 68k bsr.w $10442
db 0x61, 0x00, 0xFB, 0xE8 ; 00C14C: provisional 68k bsr.w $bd36
db 0x32, 0x3C, 0x80, 0x00 ; 00C150: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xFC, 0x28 ; 00C154: provisional 68k bsr.w $bd7e
db 0x64, 0x6E ; 00C158: provisional 68k bcc.b $c1c8
db 0x64, 0x65 ; 00C15A: provisional 68k bcc.b $c1c1
db 0x5F, 0x61 ; 00C15C: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00C15E: provisional 68k bge.b $c1cc
db 0x6F, 0x63 ; 00C160: provisional 68k ble.b $c1c5
db 0x61, 0x74 ; 00C162: provisional 68k bsr.b $c1d8
db 0x65, 0x00, 0x4C, 0xDF ; 00C164: provisional 68k bcs.w $10e45
db 0x30, 0x01 ; 00C168: provisional 68k move.w d1, d0
db 0x2F, 0x57, 0x00, 0x06 ; 00C16A: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00C16E: provisional 68k lea.l $6(a7), a7
db 0x00, 0x3C, 0x00, 0x01 ; 00C172: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00C176: provisional 68k rts 
