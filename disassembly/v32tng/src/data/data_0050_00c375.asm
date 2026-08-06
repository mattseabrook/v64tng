; Explicit file bytes raw 00C375..00C380.
%macro emit_file_data_0050_00c375 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C375 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 00C375"
    %endif
%endmacro
