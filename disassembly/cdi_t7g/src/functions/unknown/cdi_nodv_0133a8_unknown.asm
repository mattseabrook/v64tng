; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0133A8–0133CF, inclusive.
cdi_nodv_entry_0133a8:
db 0x00, 0x08 ; file 0133A8
db 0x61, 0x00, 0x98, 0x24 ; 0133AA: provisional 68k bsr.w $cbd0
db 0x60, 0x1E ; 0133AE: provisional 68k bra.b $133ce
db 0x67, 0x64 ; 0133B0: provisional 68k beq.b $13416
db 0x69, 0x72 ; 0133B2: provisional 68k bvs.b $13426
db 0x5F, 0x64 ; 0133B4: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 0133B6: provisional 68k bcs.b $1342b
db 0x74, 0x72 ; 0133B8: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 0133BA: provisional 68k ble.b $13435
db 0x20, 0x3A, 0x20, 0x4B ; 0133BC: provisional 68k move.l $15409(pc), d0
db 0x69, 0x6C ; 0133C0: provisional 68k bvs.b $1342e
db 0x6C, 0x69 ; 0133C2: provisional 68k bge.b $1342d
db 0x6E, 0x67 ; 0133C4: provisional 68k bgt.b $1342d
db 0x20, 0x6F, 0x62, 0x6A ; 0133C6: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 0133CA: provisional 68k bcs.b $1342f
db 0x74, 0x00 ; 0133CC: provisional 68k moveq #$0, d2
db 0x4E, 0x75 ; 0133CE: provisional 68k rts 
