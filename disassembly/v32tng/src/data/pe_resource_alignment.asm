; Verified two-byte resource alignment.
; Raw file range 01FC9E..01FC9F, exactly 2 bytes.
%macro emit_pe_resource_alignment 0
    %%range_start:
    db 0x00, 0x00 ; raw 01FC9E |..|
    %if ($ - %%range_start) != 0x2
        %error "PE resource alignment size drift"
    %endif
%endmacro
