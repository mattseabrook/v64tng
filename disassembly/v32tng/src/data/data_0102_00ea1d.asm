; Explicit file bytes raw 00EA1D..00EA20.
%macro emit_file_data_0102_00ea1d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 00EA1D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00EA1D"
    %endif
%endmacro
