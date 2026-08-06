; PE virtual entry 00408D00
; Ghidra working symbol: FUN_00408d00
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408d00_part_00 0
    %%fragment_start:
func_00408d00:
    %%insn_00408d00:
    push ebp ; 00408D00 55
    %if ($ - %%insn_00408d00) > 1
        %error "LONG_00408D00"
    %endif
    times 1 - ($ - %%insn_00408d00) db 0
    db 0x8B, 0xEC ; 00408D01 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408d03:
    mov eax,[0x41f598] ; 00408D03 A198F54100
    %if ($ - %%insn_00408d03) > 5
        %error "LONG_00408D03"
    %endif
    times 5 - ($ - %%insn_00408d03) db 0
    %%insn_00408d08:
    add eax,0x1 ; 00408D08 83C001
    %if ($ - %%insn_00408d08) > 3
        %error "LONG_00408D08"
    %endif
    times 3 - ($ - %%insn_00408d08) db 0
    %%insn_00408d0b:
    mov [0x41f598],eax ; 00408D0B A398F54100
    %if ($ - %%insn_00408d0b) > 5
        %error "LONG_00408D0B"
    %endif
    times 5 - ($ - %%insn_00408d0b) db 0
    %%insn_00408d10:
    pop ebp ; 00408D10 5D
    %if ($ - %%insn_00408d10) > 1
        %error "LONG_00408D10"
    %endif
    times 1 - ($ - %%insn_00408d10) db 0
    %%insn_00408d11:
    ret ; 00408D11 C3
    %if ($ - %%insn_00408d11) > 1
        %error "LONG_00408D11"
    %endif
    times 1 - ($ - %%insn_00408d11) db 0
    %if ($ - %%fragment_start) != 18
        %error "function fragment size drift: 00408D00"
    %endif
%endmacro
