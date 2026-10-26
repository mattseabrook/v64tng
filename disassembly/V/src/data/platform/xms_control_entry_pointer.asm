; CS:3688 far XMS control entry. query_xms stores returned ES:BX here
; at 036A6/036AB after INT 2Fh AX=4310h; callers use call far [CS:3688].
%macro emit_xms_control_entry_pointer 0
    %%range_start:
xms_control_entry_pointer:
    db 0x00, 0x00, 0x00, 0x00 ; 03688
    %if ($ - %%range_start) != 0x4
        %error "emit_xms_control_entry_pointer_size"
    %endif
%endmacro
