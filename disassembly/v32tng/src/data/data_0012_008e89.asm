; Explicit file bytes raw 008E89..008E90.
%macro emit_file_data_0012_008e89 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 008E89 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 008E89"
    %endif
%endmacro
