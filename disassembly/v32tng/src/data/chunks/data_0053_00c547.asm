; Explicit file bytes raw 00C547..00C550.
%macro emit_file_data_0053_00c547 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C547 |.........|
    %if ($ - %%chunk_start) != 9
        %error "data chunk size drift: 00C547"
    %endif
%endmacro
