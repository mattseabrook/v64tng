; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012DB2–012DDF, inclusive.
cdi_nodv_entry_012db2:
db 0x2A, 0x48 ; 012DB2: provisional 68k movea.l a0, a5
db 0x28, 0x49 ; 012DB4: provisional 68k movea.l a1, a4
db 0x61, 0x00, 0x03, 0xFC ; 012DB6: provisional 68k bsr.w $131b4
db 0x26, 0x68, 0x00, 0x34 ; 012DBA: provisional 68k movea.l $34(a0), a3
db 0x28, 0x69, 0x00, 0x34 ; 012DBE: provisional 68k movea.l $34(a1), a4
db 0xD6, 0x43 ; 012DC2: provisional 68k add.w d3, d3
db 0x0C, 0x68, 0x00, 0x00, 0x00, 0x20 ; 012DC4: provisional 68k cmpi.w #$0, $20(a0)
db 0x66, 0x02 ; 012DCA: provisional 68k bne.b $12dce
db 0xD6, 0x43 ; 012DCC: provisional 68k add.w d3, d3
db 0xD6, 0xC3 ; 012DCE: provisional 68k adda.w d3, a3
db 0xDA, 0x45 ; 012DD0: provisional 68k add.w d5, d5
db 0x0C, 0x69, 0x00, 0x00, 0x00, 0x20 ; 012DD2: provisional 68k cmpi.w #$0, $20(a1)
db 0x66, 0x02 ; 012DD8: provisional 68k bne.b $12ddc
db 0xDA, 0x45 ; 012DDA: provisional 68k add.w d5, d5
db 0xD8, 0xC5 ; 012DDC: provisional 68k adda.w d5, a4
db 0x4E, 0x75 ; 012DDE: provisional 68k rts 
