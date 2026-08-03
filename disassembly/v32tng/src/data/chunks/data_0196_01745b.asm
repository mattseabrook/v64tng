; Explicit file bytes raw 01745B..01745C.
%macro emit_file_data_0196_01745b 0
    %%chunk_start:
    db 0x90 ; raw 01745B |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01745B"
    %endif
%endmacro
