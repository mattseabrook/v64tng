; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00AEA6–00AEFB, inclusive.
cdi_nodv_entry_00aea6:
db 0x20, 0x28, 0x00, 0x0E ; 00AEA6: provisional 68k move.l $e(a0), d0
db 0x61, 0x00, 0x00, 0x50 ; 00AEAA: provisional 68k bsr.w $aefc
db 0x26, 0x68, 0x00, 0x3E ; 00AEAE: provisional 68k movea.l $3e(a0), a3
db 0x24, 0x68, 0x00, 0x42 ; 00AEB2: provisional 68k movea.l $42(a0), a2
db 0x20, 0x0B ; 00AEB6: provisional 68k move.l a3, d0
db 0x67, 0x04 ; 00AEB8: provisional 68k beq.b $aebe
db 0x27, 0x4A, 0x00, 0x42 ; 00AEBA: provisional 68k move.l a2, $42(a3)
db 0x20, 0x0A ; 00AEBE: provisional 68k move.l a2, d0
db 0x67, 0x06 ; 00AEC0: provisional 68k beq.b $aec8
db 0x25, 0x4B, 0x00, 0x3E ; 00AEC2: provisional 68k move.l a3, $3e(a2)
db 0x60, 0x12 ; 00AEC6: provisional 68k bra.b $aeda
db 0x20, 0x28, 0x00, 0x0A ; 00AEC8: provisional 68k move.l $a(a0), d0
db 0x67, 0x08 ; 00AECC: provisional 68k beq.b $aed6
db 0x24, 0x40 ; 00AECE: provisional 68k movea.l d0, a2
db 0x25, 0x4B, 0x00, 0x0E ; 00AED0: provisional 68k move.l a3, $e(a2)
db 0x60, 0x04 ; 00AED4: provisional 68k bra.b $aeda
db 0x2D, 0x4B, 0x80, 0x52 ; 00AED6: provisional 68k move.l a3, -$7fae(a6)
db 0x30, 0x28, 0x00, 0x00 ; 00AEDA: provisional 68k move.w $0(a0), d0
db 0xB0, 0x68, 0x00, 0x08 ; 00AEDE: provisional 68k cmp.w $8(a0), d0
db 0x66, 0x08 ; 00AEE2: provisional 68k bne.b $aeec
db 0x2F, 0x28, 0x00, 0x04 ; 00AEE4: provisional 68k move.l $4(a0), -(a7)
db 0x61, 0x00, 0x60, 0x7A ; 00AEE8: provisional 68k bsr.w $10f64
db 0x21, 0x6E, 0x80, 0x56, 0x00, 0x3E ; 00AEEC: provisional 68k move.l -$7faa(a6), $3e(a0)
db 0x2D, 0x48, 0x80, 0x56 ; 00AEF2: provisional 68k move.l a0, -$7faa(a6)
db 0x52, 0x6E, 0x80, 0x5A ; 00AEF6: provisional 68k addq.w #$1, -$7fa6(a6)
db 0x4E, 0x75 ; 00AEFA: provisional 68k rts 
