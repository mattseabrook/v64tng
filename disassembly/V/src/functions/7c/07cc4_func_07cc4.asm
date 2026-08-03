; Linear entry 07CC4 (1702:0ca4)
; Ghidra working symbol: FUN_1702_0ca4
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07cc4_part_00 0
    %%fragment_start:
func_07cc4:
    %%insn_07cc4:
    mov ax,0x81 ; 07CC4 B88100
    %if ($ - %%insn_07cc4) > 3
        %error "LONG_07CC4"
    %endif
    times 3 - ($ - %%insn_07cc4) db 0
    %%insn_07cc7:
    jmp 0x7418 ; 07CC7 E94EF7
    %if ($ - %%insn_07cc7) > 3
        %error "LONG_07CC7"
    %endif
    times 3 - ($ - %%insn_07cc7) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CC4"
    %endif
%endmacro
