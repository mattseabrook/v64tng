; Explicit file bytes raw 00D198..00D1A0.
%macro emit_file_data_0081_00d198 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D198 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00D198"
    %endif
%endmacro
