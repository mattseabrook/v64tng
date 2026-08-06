; Explicit file bytes raw 0111EE..0111F0.
%macro emit_file_data_0133_0111ee 0
    %%chunk_start:
    db 0x90, 0x90 ; raw 0111EE |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 0111EE"
    %endif
%endmacro
