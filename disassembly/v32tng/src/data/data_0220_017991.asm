; Explicit file bytes raw 017991..0179A0.
%macro emit_file_data_0220_017991 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 017991 |...............|
    %if ($ - %%chunk_start) != 15
        %error "data chunk size drift: 017991"
    %endif
%endmacro
