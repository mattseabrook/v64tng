; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01337E–0133A7, inclusive.
cdi_nodv_entry_01337e:
db 0x3F, 0x01 ; 01337E: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x26 ; 013380: provisional 68k move.l $26(a5), -(a7)
db 0x61, 0x00, 0xBF, 0xD6 ; 013384: provisional 68k bsr.w $f35c
db 0x4E, 0x75 ; 013388: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 01338A: provisional 68k pea.l $13394(pc)
db 0x61, 0x00, 0x98, 0x40 ; 01338E: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 013392: provisional 68k bra.b $1339c
db 0x67, 0x64 ; 013394: provisional 68k beq.b $133fa
db 0x69, 0x72 ; 013396: provisional 68k bvs.b $1340a
db 0x20, 0x2D, 0x20, 0x00 ; 013398: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 01339C: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xDE, 0x4C ; 01339E: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 0133A2: provisional 68k rts 
db 0x4E, 0x75 ; 0133A4: provisional 68k rts 
db 0x48, 0x7A ; file 0133A6
