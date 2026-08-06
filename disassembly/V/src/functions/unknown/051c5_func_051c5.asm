; Linear entry 051C5 (1000:51c5)
; Ghidra working symbol: FUN_1000_51c5
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_051c5_part_00 0
    %%fragment_start:
func_051c5:
    %%insn_051c5:
    mov byte [bp-0x2615],0x1 ; 051C5 C686EBD901
    %if ($ - %%insn_051c5) > 5
        %error "LONG_051C5"
    %endif
    times 5 - ($ - %%insn_051c5) db 0
    %%insn_051ca:
    ret ; 051CA C3
    %if ($ - %%insn_051ca) > 1
        %error "LONG_051CA"
    %endif
    times 1 - ($ - %%insn_051ca) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_051C5"
    %endif
%endmacro
