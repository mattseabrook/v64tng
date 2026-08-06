; Explicit file bytes raw 0120CB..0120D0.
%macro emit_file_data_0148_0120cb 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0120CB |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 0120CB"
    %endif
%endmacro
