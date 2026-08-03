; Explicit file bytes raw 00C0EE..00C100.
%macro emit_file_data_0039_00c0ee 0
    %%chunk_start:
    db 0x8B, 0xC0, 0x00, 0xCD, 0x40, 0x00, 0x08, 0xCD, 0x40, 0x00, 0x18, 0xCD, 0x40, 0x00, 0x2C, 0xCD ; raw 00C0EE |....@...@...@.,.|
    db 0x40, 0x00 ; raw 00C0FE |@.|
    %if ($ - %%chunk_start) != 18
        %error "data chunk size drift: 00C0EE"
    %endif
%endmacro
