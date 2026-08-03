; Explicit file bytes raw 0175C9..0175CC.
%macro emit_file_data_0207_0175c9 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 0175C9 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 0175C9"
    %endif
%endmacro
