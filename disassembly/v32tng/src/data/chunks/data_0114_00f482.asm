; Explicit file bytes raw 00F482..00F490.
%macro emit_file_data_0114_00f482 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00F482 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 00F482"
    %endif
%endmacro
