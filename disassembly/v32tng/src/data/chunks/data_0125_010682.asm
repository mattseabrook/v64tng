; Explicit file bytes raw 010682..010690.
%macro emit_file_data_0125_010682 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010682 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 010682"
    %endif
%endmacro
