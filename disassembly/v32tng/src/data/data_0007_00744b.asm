; Explicit file bytes raw 00744B..007450.
%macro emit_file_data_0007_00744b 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00744B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 00744B"
    %endif
%endmacro
