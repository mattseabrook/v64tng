; Explicit file bytes raw 00C224..00C230.
%macro emit_file_data_0046_00c224 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C224 |............|
    %if ($ - %%chunk_start) != 12
        %error "data chunk size drift: 00C224"
    %endif
%endmacro
