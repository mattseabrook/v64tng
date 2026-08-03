; Explicit file bytes raw 018524..018530.
%macro emit_file_data_0229_018524 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 018524 |............|
    %if ($ - %%chunk_start) != 12
        %error "data chunk size drift: 018524"
    %endif
%endmacro
