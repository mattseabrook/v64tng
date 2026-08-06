; Explicit file bytes raw 00D408..00D410.
%macro emit_file_data_0088_00d408 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D408 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00D408"
    %endif
%endmacro
