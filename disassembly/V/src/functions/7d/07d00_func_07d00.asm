; Linear entry 07D00 (1702:0ce0)
; Ghidra working symbol: FUN_1702_0ce0
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07d00_part_00 0
    %%fragment_start:
func_07d00:
    %%insn_07d00:
    mov ax,0x9c ; 07D00 B89C00
    %if ($ - %%insn_07d00) > 3
        %error "LONG_07D00"
    %endif
    times 3 - ($ - %%insn_07d00) db 0
    %%insn_07d03:
    jmp 0x7418 ; 07D03 E912F7
    %if ($ - %%insn_07d03) > 3
        %error "LONG_07D03"
    %endif
    times 3 - ($ - %%insn_07d03) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D00"
    %endif
%endmacro
