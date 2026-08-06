; Explicit file bytes raw 017546..017558.
%macro emit_file_data_0201_017546 0
    %%chunk_start:
    db 0x8B, 0xC0, 0x58, 0x81, 0x41, 0x00, 0x60, 0x81, 0x41, 0x00, 0x6C, 0x81, 0x41, 0x00, 0x80, 0x81 ; raw 017546 |..X.A.`.A.l.A...|
    db 0x41, 0x00 ; raw 017556 |A.|
    %if ($ - %%chunk_start) != 18
        %error "data chunk size drift: 017546"
    %endif
%endmacro
