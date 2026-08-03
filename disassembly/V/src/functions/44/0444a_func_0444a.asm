; Linear entry 0444A (1000:444a)
; Ghidra working symbol: FUN_1000_444a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0444a_part_00 0
    %%fragment_start:
func_0444a:
    %%insn_0444a:
    lodsw ; 0444A AD
    %if ($ - %%insn_0444a) > 1
        %error "LONG_0444A"
    %endif
    times 1 - ($ - %%insn_0444a) db 0
    %%insn_0444b:
    inc ax ; 0444B 40
    %if ($ - %%insn_0444b) > 1
        %error "LONG_0444B"
    %endif
    times 1 - ($ - %%insn_0444b) db 0
    %%insn_0444c:
    mov [bp-0x1fd7],ax ; 0444C 898629E0
    %if ($ - %%insn_0444c) > 4
        %error "LONG_0444C"
    %endif
    times 4 - ($ - %%insn_0444c) db 0
    %%insn_04450:
    ret ; 04450 C3
    %if ($ - %%insn_04450) > 1
        %error "LONG_04450"
    %endif
    times 1 - ($ - %%insn_04450) db 0
    %if ($ - %%fragment_start) != 7
        %error "SIZE_0444A"
    %endif
%endmacro
