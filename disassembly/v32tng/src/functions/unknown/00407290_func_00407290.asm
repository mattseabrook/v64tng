; PE virtual entry 00407290
; Ghidra working symbol: FUN_00407290
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407290_part_00 0
    %%fragment_start:
func_00407290:
    %%insn_00407290:
    push ebp ; 00407290 55
    %if ($ - %%insn_00407290) > 1
        %error "LONG_00407290"
    %endif
    times 1 - ($ - %%insn_00407290) db 0
    db 0x8B, 0xEC ; 00407291 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407293:
    mov eax,[0x421444] ; 00407293 A144144200
    %if ($ - %%insn_00407293) > 5
        %error "LONG_00407293"
    %endif
    times 5 - ($ - %%insn_00407293) db 0
    %%insn_00407298:
    push eax ; 00407298 50
    %if ($ - %%insn_00407298) > 1
        %error "LONG_00407298"
    %endif
    times 1 - ($ - %%insn_00407298) db 0
    %%insn_00407299:
    call dword near [0x4245cc] ; 00407299 FF15CC454200
    %if ($ - %%insn_00407299) > 6
        %error "LONG_00407299"
    %endif
    times 6 - ($ - %%insn_00407299) db 0
    %%insn_0040729f:
    pop ebp ; 0040729F 5D
    %if ($ - %%insn_0040729f) > 1
        %error "LONG_0040729F"
    %endif
    times 1 - ($ - %%insn_0040729f) db 0
    %%insn_004072a0:
    ret ; 004072A0 C3
    %if ($ - %%insn_004072a0) > 1
        %error "LONG_004072A0"
    %endif
    times 1 - ($ - %%insn_004072a0) db 0
    %if ($ - %%fragment_start) != 17
        %error "function fragment size drift: 00407290"
    %endif
%endmacro
