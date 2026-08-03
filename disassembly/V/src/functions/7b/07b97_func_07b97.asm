; Linear entry 07B97 (1702:0b77)
; Ghidra working symbol: FUN_1702_0b77
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07b97_part_00 0
    %%fragment_start:
func_07b97:
    %%insn_07b97:
    mov ax,0x65 ; 07B97 B86500
    %if ($ - %%insn_07b97) > 3
        %error "LONG_07B97"
    %endif
    times 3 - ($ - %%insn_07b97) db 0
    %%insn_07b9a:
    jmp 0x7418 ; 07B9A E97BF8
    %if ($ - %%insn_07b9a) > 3
        %error "LONG_07B9A"
    %endif
    times 3 - ($ - %%insn_07b9a) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07B97"
    %endif
%endmacro
