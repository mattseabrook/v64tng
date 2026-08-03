; Explicit file bytes raw 01494E..014950.
%macro emit_file_data_0174_01494e 0
    %%chunk_start:
    db 0x90, 0x90 ; raw 01494E |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 01494E"
    %endif
%endmacro
