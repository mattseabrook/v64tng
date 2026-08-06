; Explicit file bytes raw 01771B..01771C.
%macro emit_file_data_0215_01771b 0
    %%chunk_start:
    db 0x90 ; raw 01771B |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01771B"
    %endif
%endmacro
