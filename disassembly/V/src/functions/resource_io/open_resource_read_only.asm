; Linear entry 03A31 (1000:3a31)
; Ghidra working symbol: FUN_1000_3a31
; Verified filename-build plus DOS INT 21h read-only open wrapper.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_open_resource_read_only_part_00 0
    %%fragment_start:
open_resource_read_only:
    %%insn_03a31:
    call 0x39f8 ; 03A31 E8C4FF
    %if ($ - %%insn_03a31) > 3
        %error "LONG_03A31"
    %endif
    times 3 - ($ - %%insn_03a31) db 0
    %%insn_03a34:
    mov ax,0x3d00 ; 03A34 B8003D
    %if ($ - %%insn_03a34) > 3
        %error "LONG_03A34"
    %endif
    times 3 - ($ - %%insn_03a34) db 0
    %%insn_03a37:
    int byte 0x21 ; 03A37 CD21
    %if ($ - %%insn_03a37) > 2
        %error "LONG_03A37"
    %endif
    times 2 - ($ - %%insn_03a37) db 0
    %%insn_03a39:
    jc short 0x3a43 ; 03A39 7208
    %if ($ - %%insn_03a39) > 2
        %error "LONG_03A39"
    %endif
    times 2 - ($ - %%insn_03a39) db 0
    %%insn_03a3b:
    mov [bp-0x2634],ax ; 03A3B 8986CCD9
    %if ($ - %%insn_03a3b) > 4
        %error "LONG_03A3B"
    %endif
    times 4 - ($ - %%insn_03a3b) db 0
    db 0x33, 0xC0 ; 03A3F 33C0 | xor ax,ax | encoding preserved
    %%insn_03a41:
    jmp short 0x3a46 ; 03A41 EB03
    %if ($ - %%insn_03a41) > 2
        %error "LONG_03A41"
    %endif
    times 2 - ($ - %%insn_03a41) db 0
    %%insn_03a43:
    mov ax,0xffff ; 03A43 B8FFFF
    %if ($ - %%insn_03a43) > 3
        %error "LONG_03A43"
    %endif
    times 3 - ($ - %%insn_03a43) db 0
    %%insn_03a46:
    ret ; 03A46 C3
    %if ($ - %%insn_03a46) > 1
        %error "LONG_03A46"
    %endif
    times 1 - ($ - %%insn_03a46) db 0
    %if ($ - %%fragment_start) != 22
        %error "SIZE_03A31"
    %endif
%endmacro
