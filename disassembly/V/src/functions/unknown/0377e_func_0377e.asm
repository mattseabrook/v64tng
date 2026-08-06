; Linear entry 0377E (1000:377e)
; Ghidra working symbol: FUN_1000_377e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0377e_part_00 0
    %%fragment_start:
func_0377e:
    %%insn_0377e:
    call 0x3774 ; 0377E E8F3FF
    %if ($ - %%insn_0377e) > 3
        %error "LONG_0377E"
    %endif
    times 3 - ($ - %%insn_0377e) db 0
    %%insn_03781:
    call 0x376a ; 03781 E8E6FF
    %if ($ - %%insn_03781) > 3
        %error "LONG_03781"
    %endif
    times 3 - ($ - %%insn_03781) db 0
    %%insn_03784:
    ret ; 03784 C3
    %if ($ - %%insn_03784) > 1
        %error "LONG_03784"
    %endif
    times 1 - ($ - %%insn_03784) db 0
    %if ($ - %%fragment_start) != 7
        %error "SIZE_0377E"
    %endif
%endmacro
