; Explicit file bytes raw 00C285..00C290.
%macro emit_file_data_0047_00c285 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C285 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 00C285"
    %endif
%endmacro
