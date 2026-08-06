; Explicit file bytes raw 010203..010210.
%macro emit_file_data_0117_010203 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010203 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 010203"
    %endif
%endmacro
