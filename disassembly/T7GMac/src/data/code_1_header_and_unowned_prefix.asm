; Length word, 4-byte segment header, and unowned prefix; may contain native code.
; Absolute container range 012C6A–012C79 inclusive.
db 0x00, 0x00, 0x02, 0x42, 0x00, 0x00, 0x00, 0x0A ; file 012C6A
db 0x00, 0x00, 0x00, 0x9A ; file 012C72: provisional 68k ori.b #$9a, d0
db 0x00, 0x00, 0x00, 0x00 ; file 012C76: provisional 68k ori.b #$0, d0
