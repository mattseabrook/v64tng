; PE virtual entry 00409F0A
; Ghidra working symbol: FUN_00409f0a
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409f0a_part_00 0
    %%fragment_start:
func_00409f0a:
    %%insn_00409f0a:
    push ebp ; 00409F0A 55
    %if ($ - %%insn_00409f0a) > 1
        %error "LONG_00409F0A"
    %endif
    times 1 - ($ - %%insn_00409f0a) db 0
    db 0x8B, 0xEC ; 00409F0B 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409f0d:
    mov eax,[0x422448] ; 00409F0D A148244200
    %if ($ - %%insn_00409f0d) > 5
        %error "LONG_00409F0D"
    %endif
    times 5 - ($ - %%insn_00409f0d) db 0
    %%insn_00409f12:
    add eax,[ebp+0x8] ; 00409F12 034508
    %if ($ - %%insn_00409f12) > 3
        %error "LONG_00409F12"
    %endif
    times 3 - ($ - %%insn_00409f12) db 0
    %%insn_00409f15:
    mov byte [eax],0x0 ; 00409F15 C60000
    %if ($ - %%insn_00409f15) > 3
        %error "LONG_00409F15"
    %endif
    times 3 - ($ - %%insn_00409f15) db 0
    %%insn_00409f18:
    pop ebp ; 00409F18 5D
    %if ($ - %%insn_00409f18) > 1
        %error "LONG_00409F18"
    %endif
    times 1 - ($ - %%insn_00409f18) db 0
    %%insn_00409f19:
    ret ; 00409F19 C3
    %if ($ - %%insn_00409f19) > 1
        %error "LONG_00409F19"
    %endif
    times 1 - ($ - %%insn_00409f19) db 0
    %if ($ - %%fragment_start) != 16
        %error "function fragment size drift: 00409F0A"
    %endif
%endmacro
