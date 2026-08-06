; Explicit file bytes raw 015A95..015AA0.
%macro emit_file_data_0182_015a95 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 015A95 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 015A95"
    %endif
%endmacro
