; Explicit file bytes raw 0176DE..0176F0.
%macro emit_file_data_0212_0176de 0
    %%chunk_start:
    db 0x8B, 0xC0, 0xF0, 0x82, 0x41, 0x00, 0xF8, 0x82, 0x41, 0x00, 0x08, 0x83, 0x41, 0x00, 0x1C, 0x83 ; raw 0176DE |....A...A...A...|
    db 0x41, 0x00 ; raw 0176EE |A.|
    %if ($ - %%chunk_start) != 18
        %error "data chunk size drift: 0176DE"
    %endif
%endmacro
