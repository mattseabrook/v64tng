; Explicit file bytes raw 00C1D4..00C1E0.
%macro emit_file_data_0045_00c1d4 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C1D4 |............|
    %if ($ - %%chunk_start) != 12
        %error "data chunk size drift: 00C1D4"
    %endif
%endmacro
