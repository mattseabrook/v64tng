; Linear entry 07CF4 (1702:0cd4)
; Ghidra working symbol: FUN_1702_0cd4
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07cf4_part_00 0
    %%fragment_start:
func_07cf4:
    %%insn_07cf4:
    mov ax,0x9a ; 07CF4 B89A00
    %if ($ - %%insn_07cf4) > 3
        %error "LONG_07CF4"
    %endif
    times 3 - ($ - %%insn_07cf4) db 0
    %%insn_07cf7:
    jmp 0x7418 ; 07CF7 E91EF7
    %if ($ - %%insn_07cf7) > 3
        %error "LONG_07CF7"
    %endif
    times 3 - ($ - %%insn_07cf7) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07CF4"
    %endif
%endmacro
