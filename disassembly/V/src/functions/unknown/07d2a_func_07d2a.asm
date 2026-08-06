; Linear entry 07D2A (1702:0d0a)
; Ghidra working symbol: FUN_1702_0d0a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07d2a_part_00 0
    %%fragment_start:
func_07d2a:
    %%insn_07d2a:
    mov ax,0xae ; 07D2A B8AE00
    %if ($ - %%insn_07d2a) > 3
        %error "LONG_07D2A"
    %endif
    times 3 - ($ - %%insn_07d2a) db 0
    %%insn_07d2d:
    jmp 0x7418 ; 07D2D E9E8F6
    %if ($ - %%insn_07d2d) > 3
        %error "LONG_07D2D"
    %endif
    times 3 - ($ - %%insn_07d2d) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D2A"
    %endif
%endmacro
