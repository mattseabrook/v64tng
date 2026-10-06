; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0111A2–0111EB, inclusive.
cdi_nodv_entry_0111a2:
db 0x48, 0xE7, 0x80, 0xE0 ; 0111A2: provisional 68k movem.l d0/a0-a2, -(a7)
db 0x20, 0x6F, 0x00, 0x14 ; 0111A6: provisional 68k movea.l $14(a7), a0
db 0x22, 0x6F, 0x00, 0x18 ; 0111AA: provisional 68k movea.l $18(a7), a1
db 0x45, 0xE8, 0x00, 0x00 ; 0111AE: provisional 68k lea.l $0(a0), a2
db 0x70, 0x08 ; 0111B2: provisional 68k moveq #$8, d0
db 0x14, 0xD9 ; 0111B4: provisional 68k move.b (a1)+, (a2)+
db 0x67, 0x26 ; 0111B6: provisional 68k beq.b $111de
db 0x51, 0xC8, 0xFF, 0xFA ; 0111B8: provisional 68k dbra d0, $111b4
db 0x22, 0x6F, 0x00, 0x18 ; 0111BC: provisional 68k movea.l $18(a7), a1
db 0x48, 0x51 ; 0111C0: provisional 68k pea.l (a1)
db 0x61, 0x00, 0xBA, 0x0C ; 0111C2: provisional 68k bsr.w $cbd0
db 0x32, 0x3C, 0x80, 0x00 ; 0111C6: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xBA, 0x32 ; 0111CA: provisional 68k bsr.w $cbfe
db 0x3A, 0x20 ; 0111CE: provisional 68k move.w -(a0), d5
db 0x4E, 0x61 ; 0111D0: provisional 68k move a1, usp
db 0x6D, 0x65 ; 0111D2: provisional 68k blt.b $11239
db 0x20, 0x74, 0x6F, 0x6F, 0x20, 0x6C ; 0111D4: provisional 68k movea.l ([$206c, a4]), a0
db 0x6F, 0x6E ; 0111DA: provisional 68k ble.b $1124a
db 0x67, 0x00, 0x4C, 0xDF ; 0111DC: provisional 68k beq.w $15ebd
db 0x07, 0x01 ; 0111E0: provisional 68k btst.l d3, d1
db 0x2F, 0x57, 0x00, 0x08 ; 0111E2: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 0111E6: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 0111EA: provisional 68k rts 
