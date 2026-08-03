; Explicit file bytes raw 00BB74..00BB80.
%macro emit_file_data_0019_00bb74 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00BB74 |............|
    %if ($ - %%chunk_start) != 12
        %error "data chunk size drift: 00BB74"
    %endif
%endmacro
