; Explicit file bytes raw 00D446..00D450.
%macro emit_file_data_0089_00d446 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D446 |..........|
    %if ($ - %%chunk_start) != 10
        %error "data chunk size drift: 00D446"
    %endif
%endmacro
