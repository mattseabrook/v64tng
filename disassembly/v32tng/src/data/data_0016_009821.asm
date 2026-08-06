; Explicit file bytes raw 009821..009830.
%macro emit_file_data_0016_009821 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 009821 |...............|
    %if ($ - %%chunk_start) != 15
        %error "data chunk size drift: 009821"
    %endif
%endmacro
