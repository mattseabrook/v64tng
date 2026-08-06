; Explicit file bytes raw 00613A..006140.
%macro emit_file_data_0005_00613a 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00613A |......|
    %if ($ - %%chunk_start) != 6
        %error "data chunk size drift: 00613A"
    %endif
%endmacro
