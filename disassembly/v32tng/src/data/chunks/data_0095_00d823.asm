; Explicit file bytes raw 00D823..00D830.
%macro emit_file_data_0095_00d823 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D823 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 00D823"
    %endif
%endmacro
