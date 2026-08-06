; Explicit file bytes raw 00CCEA..00CCEC.
%macro emit_file_data_0071_00ccea 0
    %%chunk_start:
    db 0x8B, 0xC0 ; raw 00CCEA |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 00CCEA"
    %endif
%endmacro
