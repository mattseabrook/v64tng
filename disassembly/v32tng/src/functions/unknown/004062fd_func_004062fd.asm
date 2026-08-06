; PE virtual entry 004062FD
; Ghidra working symbol: FUN_004062fd
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004062fd_part_00 0
    %%fragment_start:
func_004062fd:
    %%insn_004062fd:
    push ebp ; 004062FD 55
    %if ($ - %%insn_004062fd) > 1
        %error "LONG_004062FD"
    %endif
    times 1 - ($ - %%insn_004062fd) db 0
    db 0x8B, 0xEC ; 004062FE 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406300:
    mov byte [0x421450],0x0 ; 00406300 C6055014420000
    %if ($ - %%insn_00406300) > 7
        %error "LONG_00406300"
    %endif
    times 7 - ($ - %%insn_00406300) db 0
    %%insn_00406307:
    mov word [0x421560],0xffff ; 00406307 66C70560154200FFFF
    %if ($ - %%insn_00406307) > 9
        %error "LONG_00406307"
    %endif
    times 9 - ($ - %%insn_00406307) db 0
    %%insn_00406310:
    mov word [0x42191a],0x0 ; 00406310 66C7051A1942000000
    %if ($ - %%insn_00406310) > 9
        %error "LONG_00406310"
    %endif
    times 9 - ($ - %%insn_00406310) db 0
    %%insn_00406319:
    mov word [0x421d40],0x0 ; 00406319 66C705401D42000000
    %if ($ - %%insn_00406319) > 9
        %error "LONG_00406319"
    %endif
    times 9 - ($ - %%insn_00406319) db 0
    %%insn_00406322:
    pop ebp ; 00406322 5D
    %if ($ - %%insn_00406322) > 1
        %error "LONG_00406322"
    %endif
    times 1 - ($ - %%insn_00406322) db 0
    %%insn_00406323:
    ret ; 00406323 C3
    %if ($ - %%insn_00406323) > 1
        %error "LONG_00406323"
    %endif
    times 1 - ($ - %%insn_00406323) db 0
    %if ($ - %%fragment_start) != 39
        %error "function fragment size drift: 004062FD"
    %endif
%endmacro
