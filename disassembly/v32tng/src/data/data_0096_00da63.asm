; Explicit file bytes raw 00DA63..00DA70.
%macro emit_file_data_0096_00da63 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00DA63 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 00DA63"
    %endif
%endmacro
