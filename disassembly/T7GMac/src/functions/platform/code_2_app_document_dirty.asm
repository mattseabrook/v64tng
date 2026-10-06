; verified-role: Native AppDocumentDirty routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppDocumentDirty; evidence file offset 0x564c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_document_dirty:
db 0x4E, 0x56, 0x00, 0x00 ; file 00563C | 68k link.w a6, #$0
db 0x20, 0x6E, 0x00, 0x08 ; file 005640 | 68k movea.l $8(a6), a0
db 0x20, 0x50 ; file 005644 | 68k movea.l (a0), a0
db 0x10, 0x10 ; file 005646 | 68k move.b (a0), d0
db 0x4E, 0x5E ; file 005648 | 68k unlk a6
db 0x4E, 0x75 ; file 00564A | 68k rts 
