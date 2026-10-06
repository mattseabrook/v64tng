; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CBB6–00CBCF, inclusive.
cdi_nodv_entry_00cbb6:
db 0x42, 0xE7 ; 00CBB6: provisional 68k dc.w $42e7
db 0x48, 0xE7, 0xC0, 0x80 ; 00CBB8: provisional 68k movem.l d0-d1/a0, -(a7)
db 0x41, 0xFA, 0x00, 0x10 ; 00CBBC: provisional 68k lea.l $cbce(pc), a0
db 0x70, 0x00 ; 00CBC0: provisional 68k moveq #$0, d0
db 0x72, 0x02 ; 00CBC2: provisional 68k moveq #$2, d1
db 0x4E, 0x40, 0x00, 0x8A ; 00CBC4: provisional 68k trap #0 ; OS-9 service word $008A
db 0x4C, 0xDF, 0x01, 0x03 ; 00CBC8: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x4E, 0x77 ; 00CBCC: provisional 68k rtr 
db 0x0D, 0x0A ; file 00CBCE
