; Explicit file bytes raw 017615..017618.
%macro emit_file_data_0209_017615 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 017615 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 017615"
    %endif
%endmacro
