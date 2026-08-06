; Explicit file bytes raw 00BFD9..00BFDC.
%macro emit_file_data_0034_00bfd9 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 00BFD9 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00BFD9"
    %endif
%endmacro
