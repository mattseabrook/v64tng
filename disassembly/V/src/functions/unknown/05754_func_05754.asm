; Linear entry 05754 (1000:5754)
; Ghidra working symbol: FUN_1000_5754
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05754_part_00 0
    %%fragment_start:
func_05754:
    %%insn_05754:
    mov bx,[bp-0x1b7f] ; 05754 8B9E81E4
    %if ($ - %%insn_05754) > 4
        %error "LONG_05754"
    %endif
    times 4 - ($ - %%insn_05754) db 0
    %%insn_05758:
    mov ax,0x3f00 ; 05758 B8003F
    %if ($ - %%insn_05758) > 3
        %error "LONG_05758"
    %endif
    times 3 - ($ - %%insn_05758) db 0
    %%insn_0575b:
    int byte 0x21 ; 0575B CD21
    %if ($ - %%insn_0575b) > 2
        %error "LONG_0575B"
    %endif
    times 2 - ($ - %%insn_0575b) db 0
    %%insn_0575d:
    ret ; 0575D C3
    %if ($ - %%insn_0575d) > 1
        %error "LONG_0575D"
    %endif
    times 1 - ($ - %%insn_0575d) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_05754"
    %endif
%endmacro
