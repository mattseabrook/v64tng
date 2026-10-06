; verified-role: Select the OS or Toolbox trap-address lookup from the supplied flag and return the routine address.
; Original native symbol: None; evidence file offset 0xf05e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_get_trap_address:
db 0x22, 0x5F ; file 00F05E | 68k movea.l (a7)+, a1
db 0x12, 0x1F ; file 00F060 | 68k move.b (a7)+, d1
db 0x30, 0x1F ; file 00F062 | 68k move.w (a7)+, d0
db 0x4A, 0x01 ; file 00F064 | 68k tst.b d1
db 0x67, 0x04 ; file 00F066 | 68k beq.b $398
db 0xA7, 0x46 ; file 00F068 | 68k dc.w $a746
db 0x60, 0x02 ; file 00F06A | 68k bra.b $39a
db 0xA3, 0x46 ; file 00F06C | 68k dc.w $a346
db 0x2E, 0x88 ; file 00F06E | 68k move.l a0, (a7)
db 0x4E, 0xD1 ; file 00F070 | 68k jmp (a1)
