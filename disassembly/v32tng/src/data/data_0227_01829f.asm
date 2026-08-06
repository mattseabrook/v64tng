; Explicit file bytes raw 01829F..0182A0.
%macro emit_file_data_0227_01829f 0
    %%chunk_start:
    db 0x90 ; raw 01829F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01829F"
    %endif
%endmacro
