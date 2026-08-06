; Explicit file bytes raw 00BE08..00BE10.
%macro emit_file_data_0022_00be08 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00BE08 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00BE08"
    %endif
%endmacro
