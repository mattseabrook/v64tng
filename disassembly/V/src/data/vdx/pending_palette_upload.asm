; DS:CF20 palette-upload gate. 00509 skips upload when zero; still decoding
; clears it before palette parsing and sets FFFF after applicable palette work.
%macro emit_pending_palette_upload 0
    %%range_start:
vdx_pending_palette_upload:
    db 0xFF, 0xFF ; 15850
    %if ($ - %%range_start) != 0x2
        %error "emit_pending_palette_upload_size"
    %endif
%endmacro
