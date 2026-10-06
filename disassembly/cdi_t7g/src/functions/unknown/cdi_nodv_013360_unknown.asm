; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013360–013369, inclusive.
cdi_nodv_entry_013360:
db 0x00, 0x24 ; file 013360
db 0x3F, 0x3C, 0x00, 0x05 ; 013362: provisional 68k move.w #$5, -(a7)
db 0x2F, 0x2E, 0xA9, 0x04 ; 013366: provisional 68k move.l -$56fc(a6), -(a7)
