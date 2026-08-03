; Explicit file bytes raw 01784D..017850.
%macro emit_file_data_0218_01784d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 01784D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 01784D"
    %endif
%endmacro
