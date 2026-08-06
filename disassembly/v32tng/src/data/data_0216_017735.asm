; Explicit file bytes raw 017735..017740.
%macro emit_file_data_0216_017735 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 017735 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 017735"
    %endif
%endmacro
