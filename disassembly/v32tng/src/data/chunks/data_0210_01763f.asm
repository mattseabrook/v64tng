; Explicit file bytes raw 01763F..017640.
%macro emit_file_data_0210_01763f 0
    %%chunk_start:
    db 0x90 ; raw 01763F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01763F"
    %endif
%endmacro
