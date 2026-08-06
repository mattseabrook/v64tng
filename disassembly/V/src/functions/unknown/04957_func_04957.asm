; Linear entry 04957 (1000:4957)
; Ghidra working symbol: FUN_1000_4957
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04957_part_00 0
    %%fragment_start:
func_04957:
    %%insn_04957:
    lodsb ; 04957 AC
    %if ($ - %%insn_04957) > 1
        %error "LONG_04957"
    %endif
    times 1 - ($ - %%insn_04957) db 0
    %%insn_04958:
    cmp al,0x0 ; 04958 3C00
    %if ($ - %%insn_04958) > 2
        %error "LONG_04958"
    %endif
    times 2 - ($ - %%insn_04958) db 0
    %%insn_0495a:
    jnz short 0x4957 ; 0495A 75FB
    %if ($ - %%insn_0495a) > 2
        %error "LONG_0495A"
    %endif
    times 2 - ($ - %%insn_0495a) db 0
    %%insn_0495c:
    ret ; 0495C C3
    %if ($ - %%insn_0495c) > 1
        %error "LONG_0495C"
    %endif
    times 1 - ($ - %%insn_0495c) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_04957"
    %endif
%endmacro
