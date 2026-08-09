; Verified RT_GROUP_ICON/101/1033 selector, VA 00426710..00426723.
; Raw file range 01F910..01F923, exactly 20 bytes.
%macro emit_group_icon_resource 0
    %%range_start:
v32_pe_group_icon_resource_101:
    db 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x20, 0x20, 0x10, 0x00, 0x01, 0x00, 0x04, 0x00, 0xE8, 0x02 ; raw 01F910 |......  ........|
    db 0x00, 0x00, 0x01, 0x00 ; raw 01F920 |....|
    %if ($ - %%range_start) != 0x14
        %error "group icon resource size drift"
    %endif
%endmacro
