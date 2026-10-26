; Original fallback at DS:E15A (load 16A8A..16A94), selected at 054D8.
; 054E0..054E3 adds 30h to each byte, producing "E M P T Y $".
; The F0 space encoding and F4 terminator are preserved, not normalized.
%macro emit_empty_slot_caption 0
empty_slot_caption:
    db 0x15, 0xF0, 0x1D, 0xF0, 0x20, 0xF0, 0x24, 0xF0, 0x29, 0xF0, 0xF4
%endmacro
