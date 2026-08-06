; Linear entry 07CFA (1702:0cda)
; Ghidra working symbol: FUN_1702_0cda
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07cfa_part_00 0
    %%fragment_start:
func_07cfa:
    %%insn_07cfa:
    mov ax,0x9b ; 07CFA B89B00
    %if ($ - %%insn_07cfa) > 3
        %error "LONG_07CFA"
    %endif
    times 3 - ($ - %%insn_07cfa) db 0
    %%insn_07cfd:
    jmp 0x7418 ; 07CFD E918F7
    %if ($ - %%insn_07cfd) > 3
        %error "LONG_07CFD"
    %endif
    times 3 - ($ - %%insn_07cfd) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CFA"
    %endif
%endmacro
