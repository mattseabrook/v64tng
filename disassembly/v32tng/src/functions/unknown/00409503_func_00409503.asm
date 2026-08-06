; PE virtual entry 00409503
; Ghidra working symbol: FUN_00409503
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409503_part_00 0
    %%fragment_start:
func_00409503:
    %%insn_00409503:
    push ebp ; 00409503 55
    %if ($ - %%insn_00409503) > 1
        %error "LONG_00409503"
    %endif
    times 1 - ($ - %%insn_00409503) db 0
    db 0x8B, 0xEC ; 00409504 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409506:
    mov dword [0x41f5c8],0x0 ; 00409506 C705C8F5410000000000
    %if ($ - %%insn_00409506) > 10
        %error "LONG_00409506"
    %endif
    times 10 - ($ - %%insn_00409506) db 0
    %%insn_00409510:
    pop ebp ; 00409510 5D
    %if ($ - %%insn_00409510) > 1
        %error "LONG_00409510"
    %endif
    times 1 - ($ - %%insn_00409510) db 0
    %%insn_00409511:
    ret ; 00409511 C3
    %if ($ - %%insn_00409511) > 1
        %error "LONG_00409511"
    %endif
    times 1 - ($ - %%insn_00409511) db 0
    %if ($ - %%fragment_start) != 15
        %error "function fragment size drift: 00409503"
    %endif
%endmacro
