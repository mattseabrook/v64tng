; Explicit file bytes raw 01756B..01756C.
%macro emit_file_data_0203_01756b 0
    %%chunk_start:
    db 0x90 ; raw 01756B |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01756B"
    %endif
%endmacro
