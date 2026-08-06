; Explicit file bytes raw 0177C8..0177D0.
%macro emit_file_data_0217_0177c8 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0177C8 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 0177C8"
    %endif
%endmacro
