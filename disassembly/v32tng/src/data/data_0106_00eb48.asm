; Explicit file bytes raw 00EB48..00EB50.
%macro emit_file_data_0106_00eb48 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00EB48 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00EB48"
    %endif
%endmacro
