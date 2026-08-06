; Linear entry 03A47 (1000:3a47)
; Ghidra working symbol: FUN_1000_3a47
; Verified DOS INT 21h close wrapper.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_close_resource_file_part_00 0
    %%fragment_start:
close_resource_file:
    %%insn_03a47:
    mov bx,[bp-0x2634] ; 03A47 8B9ECCD9
    %if ($ - %%insn_03a47) > 4
        %error "LONG_03A47"
    %endif
    times 4 - ($ - %%insn_03a47) db 0
    %%insn_03a4b:
    mov ax,0x3e00 ; 03A4B B8003E
    %if ($ - %%insn_03a4b) > 3
        %error "LONG_03A4B"
    %endif
    times 3 - ($ - %%insn_03a4b) db 0
    %%insn_03a4e:
    int byte 0x21 ; 03A4E CD21
    %if ($ - %%insn_03a4e) > 2
        %error "LONG_03A4E"
    %endif
    times 2 - ($ - %%insn_03a4e) db 0
    %%insn_03a50:
    ret ; 03A50 C3
    %if ($ - %%insn_03a50) > 1
        %error "LONG_03A50"
    %endif
    times 1 - ($ - %%insn_03a50) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_03A47"
    %endif
%endmacro
