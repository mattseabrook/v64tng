; verified-role: Measure the NUL-terminated string passed on the stack, write it through I$Write on path zero, restore condition codes and remove the pointer argument.
; Evidence: docs/PLATFORM_EASTER_EGGS.md and resources/semantic_roles.json.
; Ordered emission slice; named entry does not classify every subsequent byte as code.
; File offsets 0001EC–000219, inclusive.
cdi_loader_write_console_c_string:
cdi_loader_entry_0001ec:
db 0x42, 0xE7 ; file 0001EC
db 0x48, 0xE7, 0xC0, 0x80 ; 0001EE: provisional 68k movem.l d0-d1/a0, -(a7)
db 0x20, 0x6F, 0x00, 0x12 ; 0001F2: provisional 68k movea.l $12(a7), a0
db 0x72, 0x00 ; 0001F6: provisional 68k moveq #$0, d1
db 0x4A, 0x30, 0x18, 0x00 ; 0001F8: provisional 68k tst.b (a0, d1.l)
db 0x67, 0x04 ; 0001FC: provisional 68k beq.b $202
db 0x52, 0x81 ; 0001FE: provisional 68k addq.l #$1, d1
db 0x60, 0xF6 ; 000200: provisional 68k bra.b $1f8
db 0x70, 0x00 ; 000202: provisional 68k moveq #$0, d0
db 0x4E, 0x40, 0x00, 0x8A ; 000204: provisional 68k trap #0 ; OS-9 service word $008A
db 0x4C, 0xDF, 0x01, 0x03 ; 000208: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2F, 0x6F, 0x00, 0x02, 0x00, 0x06 ; 00020C: provisional 68k move.l $2(a7), $6(a7)
db 0x44, 0xDF ; 000212: provisional 68k move.w (a7)+, ccr
db 0x4F, 0xEF, 0x00, 0x04 ; 000214: provisional 68k lea.l $4(a7), a7
db 0x4E, 0x75 ; 000218: provisional 68k rts 
