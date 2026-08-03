; Explicit file bytes raw 00BF8D..00BF90.
%macro emit_file_data_0031_00bf8d 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 00BF8D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00BF8D"
    %endif
%endmacro
