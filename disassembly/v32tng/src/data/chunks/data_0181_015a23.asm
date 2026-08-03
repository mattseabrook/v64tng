; Explicit file bytes raw 015A23..015A30.
%macro emit_file_data_0181_015a23 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 015A23 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 015A23"
    %endif
%endmacro
