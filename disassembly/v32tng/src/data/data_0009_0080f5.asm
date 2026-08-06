; Explicit file bytes raw 0080F5..008100.
%macro emit_file_data_0009_0080f5 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 0080F5 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 0080F5"
    %endif
%endmacro
