; PE virtual entry 00404EF6
; Ghidra working symbol: FUN_00404ef6
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404ef6_part_00 0
    %%fragment_start:
func_00404ef6:
    %%insn_00404ef6:
    push ebp ; 00404EF6 55
    %if ($ - %%insn_00404ef6) > 1
        %error "LONG_00404EF6"
    %endif
    times 1 - ($ - %%insn_00404ef6) db 0
    db 0x8B, 0xEC ; 00404EF7 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404ef9:
    mov byte [0x41f458],0x1 ; 00404EF9 C60558F4410001
    %if ($ - %%insn_00404ef9) > 7
        %error "LONG_00404EF9"
    %endif
    times 7 - ($ - %%insn_00404ef9) db 0
    %%insn_00404f00:
    pop ebp ; 00404F00 5D
    %if ($ - %%insn_00404f00) > 1
        %error "LONG_00404F00"
    %endif
    times 1 - ($ - %%insn_00404f00) db 0
    %%insn_00404f01:
    ret ; 00404F01 C3
    %if ($ - %%insn_00404f01) > 1
        %error "LONG_00404F01"
    %endif
    times 1 - ($ - %%insn_00404f01) db 0
    %if ($ - %%fragment_start) != 12
        %error "function fragment size drift: 00404EF6"
    %endif
%endmacro
