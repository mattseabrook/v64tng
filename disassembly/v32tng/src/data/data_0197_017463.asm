; Explicit file bytes raw 017463..017470.
%macro emit_file_data_0197_017463 0
    %%chunk_start:
    db 0x90, 0x70, 0x80, 0x41, 0x00, 0x9C, 0x80, 0x41, 0x00, 0xC0, 0x80, 0x41, 0x00 ; raw 017463 |.p.A...A...A.|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 017463"
    %endif
%endmacro
