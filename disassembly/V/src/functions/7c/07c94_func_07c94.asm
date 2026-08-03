; Linear entry 07C94 (1702:0c74)
; Ghidra working symbol: FUN_1702_0c74
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07c94_part_00 0
    %%fragment_start:
func_07c94:
    %%insn_07c94:
    mov ax,0x7a ; 07C94 B87A00
    %if ($ - %%insn_07c94) > 3
        %error "LONG_07C94"
    %endif
    times 3 - ($ - %%insn_07c94) db 0
    %%insn_07c97:
    jmp 0x7418 ; 07C97 E97EF7
    %if ($ - %%insn_07c97) > 3
        %error "LONG_07C97"
    %endif
    times 3 - ($ - %%insn_07c97) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07C94"
    %endif
%endmacro
