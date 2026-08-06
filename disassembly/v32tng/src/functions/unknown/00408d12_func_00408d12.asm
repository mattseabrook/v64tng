; PE virtual entry 00408D12
; Ghidra working symbol: FUN_00408d12
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408d12_part_00 0
    %%fragment_start:
func_00408d12:
    %%insn_00408d12:
    push ebp ; 00408D12 55
    %if ($ - %%insn_00408d12) > 1
        %error "LONG_00408D12"
    %endif
    times 1 - ($ - %%insn_00408d12) db 0
    db 0x8B, 0xEC ; 00408D13 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408d15:
    mov eax,[0x41f598] ; 00408D15 A198F54100
    %if ($ - %%insn_00408d15) > 5
        %error "LONG_00408D15"
    %endif
    times 5 - ($ - %%insn_00408d15) db 0
    %%insn_00408d1a:
    sub eax,0x1 ; 00408D1A 83E801
    %if ($ - %%insn_00408d1a) > 3
        %error "LONG_00408D1A"
    %endif
    times 3 - ($ - %%insn_00408d1a) db 0
    %%insn_00408d1d:
    mov [0x41f598],eax ; 00408D1D A398F54100
    %if ($ - %%insn_00408d1d) > 5
        %error "LONG_00408D1D"
    %endif
    times 5 - ($ - %%insn_00408d1d) db 0
    %%insn_00408d22:
    pop ebp ; 00408D22 5D
    %if ($ - %%insn_00408d22) > 1
        %error "LONG_00408D22"
    %endif
    times 1 - ($ - %%insn_00408d22) db 0
    %%insn_00408d23:
    ret ; 00408D23 C3
    %if ($ - %%insn_00408d23) > 1
        %error "LONG_00408D23"
    %endif
    times 1 - ($ - %%insn_00408d23) db 0
    %if ($ - %%fragment_start) != 18
        %error "function fragment size drift: 00408D12"
    %endif
%endmacro
