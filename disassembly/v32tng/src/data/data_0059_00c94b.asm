; Explicit file bytes raw 00C94B..00C950.
%macro emit_file_data_0059_00c94b 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00C94B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 00C94B"
    %endif
%endmacro
