; Explicit file bytes raw 00C115..00C118.
%macro emit_file_data_0041_00c115 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 00C115 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00C115"
    %endif
%endmacro
