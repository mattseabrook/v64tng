; Explicit file bytes raw 017597..017598.
%macro emit_file_data_0205_017597 0
    %%chunk_start:
    db 0x90 ; raw 017597 |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 017597"
    %endif
%endmacro
