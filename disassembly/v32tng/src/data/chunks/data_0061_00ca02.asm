; Explicit file bytes raw 00CA02..00CA10.
%macro emit_file_data_0061_00ca02 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00CA02 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 00CA02"
    %endif
%endmacro
