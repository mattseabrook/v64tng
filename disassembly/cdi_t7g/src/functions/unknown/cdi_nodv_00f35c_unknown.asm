; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F35C–00F3C9, inclusive.
cdi_nodv_entry_00f35c:
db 0x48, 0xE7, 0xC1, 0xF8 ; 00F35C: provisional 68k movem.l d0-d1/d7/a0-a4, -(a7)
db 0x42, 0x87 ; 00F360: provisional 68k clr.l d7
db 0x20, 0x6F, 0x00, 0x24 ; 00F362: provisional 68k movea.l $24(a7), a0
db 0x43, 0xE8, 0x09, 0x14 ; 00F366: provisional 68k lea.l $914(a0), a1
db 0x24, 0x49 ; 00F36A: provisional 68k movea.l a1, a2
db 0x15, 0x47, 0x00, 0x00 ; 00F36C: provisional 68k move.b d7, $0(a2)
db 0x35, 0x47, 0x00, 0x04 ; 00F370: provisional 68k move.w d7, $4(a2)
db 0x25, 0x47, 0x00, 0x18 ; 00F374: provisional 68k move.l d7, $18(a2)
db 0x20, 0x28, 0x09, 0x34 ; 00F378: provisional 68k move.l $934(a0), d0
db 0x67, 0x10 ; 00F37C: provisional 68k beq.b $f38e
db 0x26, 0x40 ; 00F37E: provisional 68k movea.l d0, a3
db 0x47, 0xEB, 0x09, 0x14 ; 00F380: provisional 68k lea.l $914(a3), a3
db 0x25, 0x4B, 0x00, 0x06 ; 00F384: provisional 68k move.l a3, $6(a2)
db 0x20, 0x40 ; 00F388: provisional 68k movea.l d0, a0
db 0x24, 0x4B ; 00F38A: provisional 68k movea.l a3, a2
db 0x60, 0xDE ; 00F38C: provisional 68k bra.b $f36c
db 0x25, 0x47, 0x00, 0x06 ; 00F38E: provisional 68k move.l d7, $6(a2)
db 0x35, 0x6F, 0x00, 0x28, 0x00, 0x04 ; 00F392: provisional 68k move.w $28(a7), $4(a2)
db 0x20, 0x6F, 0x00, 0x2A ; 00F398: provisional 68k movea.l $2a(a7), a0
db 0x30, 0x2F, 0x00, 0x2E ; 00F39C: provisional 68k move.w $2e(a7), d0
db 0xE5, 0x40 ; 00F3A0: provisional 68k asl.w #$2, d0
db 0xD0, 0xC0 ; 00F3A2: provisional 68k adda.w d0, a0
db 0x22, 0x28, 0x00, 0x10 ; 00F3A4: provisional 68k move.l $10(a0), d1
db 0x67, 0x0C ; 00F3A8: provisional 68k beq.b $f3b6
db 0x21, 0x4A, 0x00, 0x10 ; 00F3AA: provisional 68k move.l a2, $10(a0)
db 0x24, 0x41 ; 00F3AE: provisional 68k movea.l d1, a2
db 0x25, 0x49, 0x00, 0x06 ; 00F3B0: provisional 68k move.l a1, $6(a2)
db 0x60, 0x06 ; 00F3B4: provisional 68k bra.b $f3bc
db 0x20, 0x89 ; 00F3B6: provisional 68k move.l a1, (a0)
db 0x21, 0x4A, 0x00, 0x10 ; 00F3B8: provisional 68k move.l a2, $10(a0)
db 0x4C, 0xDF, 0x1F, 0x83 ; 00F3BC: provisional 68k movem.l (a7)+, d0-d1/d7/a0-a4
db 0x2F, 0x57, 0x00, 0x0C ; 00F3C0: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00F3C4: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00F3C8: provisional 68k rts 
