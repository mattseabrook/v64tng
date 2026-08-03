; Explicit file bytes raw 00D7C9..00D7D0.
%macro emit_file_data_0094_00d7c9 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D7C9 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 00D7C9"
    %endif
%endmacro
