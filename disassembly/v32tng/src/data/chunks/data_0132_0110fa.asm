; Explicit file bytes raw 0110FA..011100.
%macro emit_file_data_0132_0110fa 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0110FA |......|
    %if ($ - %%chunk_start) != 6
        %error "data chunk size drift: 0110FA"
    %endif
%endmacro
