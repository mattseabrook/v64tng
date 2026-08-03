; Explicit file bytes raw 00D76D..00D770.
%macro emit_file_data_0093_00d76d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 00D76D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00D76D"
    %endif
%endmacro
