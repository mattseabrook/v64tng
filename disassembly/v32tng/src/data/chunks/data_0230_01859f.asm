; Explicit file bytes raw 01859F..0185A0.
%macro emit_file_data_0230_01859f 0
    %%chunk_start:
    db 0x90 ; raw 01859F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01859F"
    %endif
%endmacro
