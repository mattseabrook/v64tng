; Linear entry 07CE2 (1702:0cc2)
; Ghidra working symbol: FUN_1702_0cc2
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07ce2_part_00 0
    %%fragment_start:
func_07ce2:
    %%insn_07ce2:
    mov ax,0x97 ; 07CE2 B89700
    %if ($ - %%insn_07ce2) > 3
        %error "LONG_07CE2"
    %endif
    times 3 - ($ - %%insn_07ce2) db 0
    %%insn_07ce5:
    jmp 0x7418 ; 07CE5 E930F7
    %if ($ - %%insn_07ce5) > 3
        %error "LONG_07CE5"
    %endif
    times 3 - ($ - %%insn_07ce5) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CE2"
    %endif
%endmacro
