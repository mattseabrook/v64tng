; Linear entry 05FD8 (1000:5fd8)
; Ghidra working symbol: FUN_1000_5fd8
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05fd8_part_00 0
    %%fragment_start:
func_05fd8:
    db 0x2A, 0xC0 ; 05FD8 2AC0 | sub al,al | encoding preserved
    %%insn_05fda:
    mov [0xe4ba],al ; 05FDA A2BAE4
    %if ($ - %%insn_05fda) > 3
        %error "LONG_05FDA"
    %endif
    times 3 - ($ - %%insn_05fda) db 0
    %%insn_05fdd:
    mov [0xe4b9],al ; 05FDD A2B9E4
    %if ($ - %%insn_05fdd) > 3
        %error "LONG_05FDD"
    %endif
    times 3 - ($ - %%insn_05fdd) db 0
    %%insn_05fe0:
    mov [0xe4bb],al ; 05FE0 A2BBE4
    %if ($ - %%insn_05fe0) > 3
        %error "LONG_05FE0"
    %endif
    times 3 - ($ - %%insn_05fe0) db 0
    %%insn_05fe3:
    ret ; 05FE3 C3
    %if ($ - %%insn_05fe3) > 1
        %error "LONG_05FE3"
    %endif
    times 1 - ($ - %%insn_05fe3) db 0
    %if ($ - %%fragment_start) != 12
        %error "SIZE_05FD8"
    %endif
%endmacro
