; Explicit file bytes raw 017499..01749C.
%macro emit_file_data_0198_017499 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 017499 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 017499"
    %endif
%endmacro
