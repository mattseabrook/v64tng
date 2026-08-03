; Explicit file bytes raw 0184A3..0184B0.
%macro emit_file_data_0228_0184a3 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0184A3 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 0184A3"
    %endif
%endmacro
