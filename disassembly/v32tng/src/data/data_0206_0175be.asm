; Explicit file bytes raw 0175BE..0175C0.
%macro emit_file_data_0206_0175be 0
    %%chunk_start:
    db 0x8B, 0xC0 ; raw 0175BE |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 0175BE"
    %endif
%endmacro
