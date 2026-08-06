; Explicit file bytes raw 010C63..010C70.
%macro emit_file_data_0129_010c63 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010C63 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 010C63"
    %endif
%endmacro
