; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BBCE–00BBFD, inclusive.
cdi_t7g_entry_00bbce:
db 0x61, 0x63, 0x65, 0x73, 0x3A, 0x20, 0x00, 0x00 ; file 00BBCE
db 0x43, 0xEE, 0xA8, 0xFA ; 00BBD6: provisional 68k lea.l -$5706(a6), a1
db 0x30, 0x3C, 0x00, 0x01 ; 00BBDA: provisional 68k move.w #$1, d0
db 0x42, 0xE7 ; 00BBDE: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00BBE0: provisional 68k pea.l $bbea(pc)
db 0x61, 0x00, 0x01, 0x6A ; 00BBE4: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00BBE8: provisional 68k bra.b $bbec
db 0x20, 0x00 ; 00BBEA: provisional 68k move.l d0, d0
db 0x1F, 0x19 ; 00BBEC: provisional 68k move.b (a1)+, -(a7)
db 0x61, 0x00, 0x00, 0xFA ; 00BBEE: provisional 68k bsr.w $bcea
db 0x44, 0xDF ; 00BBF2: provisional 68k move.w (a7)+, ccr
db 0x51, 0xC8, 0xFF, 0xE8 ; 00BBF4: provisional 68k dbra d0, $bbde
db 0x61, 0x00, 0x01, 0x3C ; 00BBF8: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00BBFC: provisional 68k rts 
