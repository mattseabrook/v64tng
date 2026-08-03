; Explicit file bytes raw 00BD9C..00BDA0.
%macro emit_file_data_0021_00bd9c 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC ; raw 00BD9C |....|
    %if ($ - %%chunk_start) != 4
        %error "data chunk size drift: 00BD9C"
    %endif
%endmacro
