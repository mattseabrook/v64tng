; Return A0=module+0x111A, A1=module+0x005C; exact 10-byte pointer accessor.
; File offsets 0140CA–0140D3, inclusive.
cdi_data_entry_000052:
db 0x41, 0xFA, 0x10, 0xC6 ; 0140CA: provisional 68k lea.l $15192(pc), a0
db 0x43, 0xFA, 0x00, 0x04 ; 0140CE: provisional 68k lea.l $140d4(pc), a1
db 0x4E, 0x75 ; 0140D2: provisional 68k rts 
