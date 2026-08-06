; Explicit file bytes raw 00CBB7..00CBC0.
%macro emit_file_data_0069_00cbb7 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0, 0x2E, 0x8B, 0xC0, 0x2E, 0x8B, 0xC0 ; raw 00CBB7 |.........|
    %if ($ - %%chunk_start) != 9
        %error "data chunk size drift: 00CBB7"
    %endif
%endmacro
