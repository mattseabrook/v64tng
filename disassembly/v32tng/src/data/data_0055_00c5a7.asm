; Explicit file bytes raw 00C5A7..00C5B0.
%macro emit_file_data_0055_00c5a7 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C5A7 |.........|
    %if ($ - %%chunk_start) != 9
        %error "data chunk size drift: 00C5A7"
    %endif
%endmacro
