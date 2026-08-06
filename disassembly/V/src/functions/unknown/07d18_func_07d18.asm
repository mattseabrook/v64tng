; Linear entry 07D18 (1702:0cf8)
; Ghidra working symbol: FUN_1702_0cf8
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07d18_part_00 0
    %%fragment_start:
func_07d18:
    %%insn_07d18:
    mov ax,0xaa ; 07D18 B8AA00
    %if ($ - %%insn_07d18) > 3
        %error "LONG_07D18"
    %endif
    times 3 - ($ - %%insn_07d18) db 0
    %%insn_07d1b:
    jmp 0x7418 ; 07D1B E9FAF6
    %if ($ - %%insn_07d1b) > 3
        %error "LONG_07D1B"
    %endif
    times 3 - ($ - %%insn_07d1b) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D18"
    %endif
%endmacro
