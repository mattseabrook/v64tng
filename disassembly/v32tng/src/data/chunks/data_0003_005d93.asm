; Explicit file bytes raw 005D93..005DA0.
%macro emit_file_data_0003_005d93 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 005D93 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 005D93"
    %endif
%endmacro
