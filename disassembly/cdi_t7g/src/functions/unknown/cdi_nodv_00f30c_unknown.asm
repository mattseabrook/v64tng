; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F30C–00F35B, inclusive.
cdi_nodv_entry_00f30c:
db 0x3D, 0x7C, 0x00, 0x00, 0xAB, 0xE4 ; 00F30C: provisional 68k move.w #$0, -$541c(a6)
db 0x42, 0xAE, 0xAC, 0x80 ; 00F312: provisional 68k clr.l -$5380(a6)
db 0x4E, 0x75 ; 00F316: provisional 68k rts 
db 0x0C, 0x68, 0x01, 0x00, 0x00, 0x02 ; 00F318: provisional 68k cmpi.w #$100, $2(a0)
db 0x6A, 0x2C ; 00F31E: provisional 68k bpl.b $f34c
db 0x0C, 0x68, 0x00, 0xF4, 0x00, 0x02 ; 00F320: provisional 68k cmpi.w #$f4, $2(a0)
db 0x66, 0x26 ; 00F326: provisional 68k bne.b $f34e
db 0x30, 0x2E, 0xAB, 0xE6 ; 00F328: provisional 68k move.w -$541a(a6), d0
db 0x32, 0x3C, 0x00, 0x05 ; 00F32C: provisional 68k move.w #$5, d1
db 0x4E, 0x40, 0x00, 0x8D ; 00F330: provisional 68k trap #0 ; OS-9 service word $008D
db 0x65, 0x18 ; 00F334: provisional 68k bcs.b $f34e
db 0xE0, 0x82 ; 00F336: provisional 68k asr.l #$8, d2
db 0xE6, 0x82 ; 00F338: provisional 68k asr.l #$3, d2
db 0xD4, 0xAE, 0xAC, 0x86 ; 00F33A: provisional 68k add.l -$537a(a6), d2
db 0x21, 0x42, 0x00, 0x2E ; 00F33E: provisional 68k move.l d2, $2e(a0)
db 0x20, 0x28, 0x00, 0x2A ; 00F342: provisional 68k move.l $2a(a0), d0
db 0x67, 0x04 ; 00F346: provisional 68k beq.b $f34c
db 0x20, 0x40 ; 00F348: provisional 68k movea.l d0, a0
db 0x4E, 0x90 ; 00F34A: provisional 68k jsr (a0)
db 0x4E, 0x75 ; 00F34C: provisional 68k rts 
db 0x32, 0x28, 0x00, 0x02 ; 00F34E: provisional 68k move.w $2(a0), d1
db 0x08, 0xC1, 0x00, 0x0F ; 00F352: provisional 68k bset.b #$f, d1
db 0x3D, 0x41, 0xAB, 0xEC ; 00F356: provisional 68k move.w d1, -$5414(a6)
db 0x4E, 0x75 ; 00F35A: provisional 68k rts 
