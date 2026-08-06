; Linear entry 07CB2 (1702:0c92)
; Ghidra working symbol: FUN_1702_0c92
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07cb2_part_00 0
    %%fragment_start:
func_07cb2:
    %%insn_07cb2:
    mov ax,0x7e ; 07CB2 B87E00
    %if ($ - %%insn_07cb2) > 3
        %error "LONG_07CB2"
    %endif
    times 3 - ($ - %%insn_07cb2) db 0
    %%insn_07cb5:
    jmp 0x7418 ; 07CB5 E960F7
    %if ($ - %%insn_07cb5) > 3
        %error "LONG_07CB5"
    %endif
    times 3 - ($ - %%insn_07cb5) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CB2"
    %endif
%endmacro
