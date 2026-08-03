; Explicit file bytes raw 00B573..00B580.
%macro emit_file_data_0017_00b573 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00B573 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 00B573"
    %endif
%endmacro
