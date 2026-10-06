; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E48C–00E4DB, inclusive.
cdi_t7g_entry_00e48c:
db 0x3D, 0x7C, 0x00, 0x00, 0xAB, 0xE4 ; 00E48C: provisional 68k move.w #$0, -$541c(a6)
db 0x42, 0xAE, 0xAC, 0x80 ; 00E492: provisional 68k clr.l -$5380(a6)
db 0x4E, 0x75 ; 00E496: provisional 68k rts 
db 0x0C, 0x68, 0x01, 0x00, 0x00, 0x02 ; 00E498: provisional 68k cmpi.w #$100, $2(a0)
db 0x6A, 0x2C ; 00E49E: provisional 68k bpl.b $e4cc
db 0x0C, 0x68, 0x00, 0xF4, 0x00, 0x02 ; 00E4A0: provisional 68k cmpi.w #$f4, $2(a0)
db 0x66, 0x26 ; 00E4A6: provisional 68k bne.b $e4ce
db 0x30, 0x2E, 0xAB, 0xE6 ; 00E4A8: provisional 68k move.w -$541a(a6), d0
db 0x32, 0x3C, 0x00, 0x05 ; 00E4AC: provisional 68k move.w #$5, d1
db 0x4E, 0x40, 0x00, 0x8D ; 00E4B0: provisional 68k trap #0 ; OS-9 service word $008D
db 0x65, 0x18 ; 00E4B4: provisional 68k bcs.b $e4ce
db 0xE0, 0x82 ; 00E4B6: provisional 68k asr.l #$8, d2
db 0xE6, 0x82 ; 00E4B8: provisional 68k asr.l #$3, d2
db 0xD4, 0xAE, 0xAC, 0x86 ; 00E4BA: provisional 68k add.l -$537a(a6), d2
db 0x21, 0x42, 0x00, 0x2E ; 00E4BE: provisional 68k move.l d2, $2e(a0)
db 0x20, 0x28, 0x00, 0x2A ; 00E4C2: provisional 68k move.l $2a(a0), d0
db 0x67, 0x04 ; 00E4C6: provisional 68k beq.b $e4cc
db 0x20, 0x40 ; 00E4C8: provisional 68k movea.l d0, a0
db 0x4E, 0x90 ; 00E4CA: provisional 68k jsr (a0)
db 0x4E, 0x75 ; 00E4CC: provisional 68k rts 
db 0x32, 0x28, 0x00, 0x02 ; 00E4CE: provisional 68k move.w $2(a0), d1
db 0x08, 0xC1, 0x00, 0x0F ; 00E4D2: provisional 68k bset.b #$f, d1
db 0x3D, 0x41, 0xAB, 0xEC ; 00E4D6: provisional 68k move.w d1, -$5414(a6)
db 0x4E, 0x75 ; 00E4DA: provisional 68k rts 
