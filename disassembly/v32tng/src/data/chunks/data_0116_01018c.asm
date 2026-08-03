; Explicit file bytes raw 01018C..010190.
%macro emit_file_data_0116_01018c 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90 ; raw 01018C |....|
    %if ($ - %%chunk_start) != 4
        %error "data chunk size drift: 01018C"
    %endif
%endmacro
