; Linear entry 07C88 (1702:0c68)
; Ghidra working symbol: FUN_1702_0c68
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07c88_part_00 0
    %%fragment_start:
func_07c88:
    %%insn_07c88:
    mov ax,0x79 ; 07C88 B87900
    %if ($ - %%insn_07c88) > 3
        %error "LONG_07C88"
    %endif
    times 3 - ($ - %%insn_07c88) db 0
    %%insn_07c8b:
    jmp 0x7418 ; 07C8B E98AF7
    %if ($ - %%insn_07c8b) > 3
        %error "LONG_07C8B"
    %endif
    times 3 - ($ - %%insn_07c8b) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07C88"
    %endif
%endmacro
