; Explicit file bytes raw 0174BF..0174C0.
%macro emit_file_data_0199_0174bf 0
    %%chunk_start:
    db 0x90 ; raw 0174BF |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 0174BF"
    %endif
%endmacro
