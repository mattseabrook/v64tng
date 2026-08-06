; Explicit file bytes raw 00C145..00C150.
%macro emit_file_data_0043_00c145 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00C145 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 00C145"
    %endif
%endmacro
