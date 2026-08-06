; Explicit file bytes raw 00BECF..00BED0.
%macro emit_file_data_0026_00becf 0
    %%chunk_start:
    db 0x90 ; raw 00BECF |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00BECF"
    %endif
%endmacro
