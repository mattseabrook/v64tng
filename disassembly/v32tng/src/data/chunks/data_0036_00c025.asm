; Explicit file bytes raw 00C025..00C028.
%macro emit_file_data_0036_00c025 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 00C025 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00C025"
    %endif
%endmacro
