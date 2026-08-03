; Explicit file bytes raw 00D376..00D380.
%macro emit_file_data_0085_00d376 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D376 |..........|
    %if ($ - %%chunk_start) != 10
        %error "data chunk size drift: 00D376"
    %endif
%endmacro
