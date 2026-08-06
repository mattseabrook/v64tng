; Explicit file bytes raw 017705..017708.
%macro emit_file_data_0214_017705 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 017705 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 017705"
    %endif
%endmacro
