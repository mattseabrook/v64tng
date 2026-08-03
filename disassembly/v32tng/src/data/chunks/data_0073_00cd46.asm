; Explicit file bytes raw 00CD46..00CD50.
%macro emit_file_data_0073_00cd46 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00CD46 |..........|
    %if ($ - %%chunk_start) != 10
        %error "data chunk size drift: 00CD46"
    %endif
%endmacro
