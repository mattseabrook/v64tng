; Explicit file bytes raw 00CB7D..00CB80.
%macro emit_file_data_0066_00cb7d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 00CB7D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00CB7D"
    %endif
%endmacro
