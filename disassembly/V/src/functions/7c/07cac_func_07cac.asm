; Linear entry 07CAC (1702:0c8c)
; Ghidra working symbol: FUN_1702_0c8c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07cac_part_00 0
    %%fragment_start:
func_07cac:
    %%insn_07cac:
    mov ax,0x7d ; 07CAC B87D00
    %if ($ - %%insn_07cac) > 3
        %error "LONG_07CAC"
    %endif
    times 3 - ($ - %%insn_07cac) db 0
    %%insn_07caf:
    jmp 0x7418 ; 07CAF E966F7
    %if ($ - %%insn_07caf) > 3
        %error "LONG_07CAF"
    %endif
    times 3 - ($ - %%insn_07caf) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CAC"
    %endif
%endmacro
