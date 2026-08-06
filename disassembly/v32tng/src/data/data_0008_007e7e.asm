; Explicit file bytes raw 007E7E..007E80.
%macro emit_file_data_0008_007e7e 0
    %%chunk_start:
    db 0xCC, 0xCC ; raw 007E7E |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 007E7E"
    %endif
%endmacro
