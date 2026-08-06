; Linear entry 05217 (1000:5217)
; Ghidra working symbol: FUN_1000_5217
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05217_part_00 0
    %%fragment_start:
func_05217:
    %%insn_05217:
    mov si,0xd8e3 ; 05217 BEE3D8
    %if ($ - %%insn_05217) > 3
        %error "LONG_05217"
    %endif
    times 3 - ($ - %%insn_05217) db 0
    %%insn_0521a:
    mov al,[bx] ; 0521A 8A07
    %if ($ - %%insn_0521a) > 2
        %error "LONG_0521A"
    %endif
    times 2 - ($ - %%insn_0521a) db 0
    %%insn_0521c:
    mov [ss:si],al ; 0521C 368804
    %if ($ - %%insn_0521c) > 3
        %error "LONG_0521C"
    %endif
    times 3 - ($ - %%insn_0521c) db 0
    %%insn_0521f:
    inc si ; 0521F 46
    %if ($ - %%insn_0521f) > 1
        %error "LONG_0521F"
    %endif
    times 1 - ($ - %%insn_0521f) db 0
    %%insn_05220:
    inc bx ; 05220 43
    %if ($ - %%insn_05220) > 1
        %error "LONG_05220"
    %endif
    times 1 - ($ - %%insn_05220) db 0
    db 0x22, 0xC0 ; 05221 22C0 | and al,al | encoding preserved
    %%insn_05223:
    jnz short 0x521a ; 05223 75F5
    %if ($ - %%insn_05223) > 2
        %error "LONG_05223"
    %endif
    times 2 - ($ - %%insn_05223) db 0
    %%insn_05225:
    ret ; 05225 C3
    %if ($ - %%insn_05225) > 1
        %error "LONG_05225"
    %endif
    times 1 - ($ - %%insn_05225) db 0
    %if ($ - %%fragment_start) != 15
        %error "SIZE_05217"
    %endif
%endmacro
