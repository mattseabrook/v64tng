; Explicit file bytes raw 00C3B7..00C3C0.
%macro emit_file_data_0051_00c3b7 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C3B7 |.........|
    %if ($ - %%chunk_start) != 9
        %error "data chunk size drift: 00C3B7"
    %endif
%endmacro
