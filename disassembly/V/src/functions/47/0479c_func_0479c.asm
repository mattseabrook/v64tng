; Linear entry 0479C (1000:479c)
; Ghidra working symbol: FUN_1000_479c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0479c_part_00 0
    %%fragment_start:
func_0479c:
    %%insn_0479c:
    mov bx,[si] ; 0479C 8B1C
    %if ($ - %%insn_0479c) > 2
        %error "LONG_0479C"
    %endif
    times 2 - ($ - %%insn_0479c) db 0
    %%insn_0479e:
    mov [bp-0x1f80],bx ; 0479E 899E80E0
    %if ($ - %%insn_0479e) > 4
        %error "LONG_0479E"
    %endif
    times 4 - ($ - %%insn_0479e) db 0
    %%insn_047a2:
    mov si,0xe078 ; 047A2 BE78E0
    %if ($ - %%insn_047a2) > 3
        %error "LONG_047A2"
    %endif
    times 3 - ($ - %%insn_047a2) db 0
    %%insn_047a5:
    mov ax,0x893 ; 047A5 B89308
    %if ($ - %%insn_047a5) > 3
        %error "LONG_047A5"
    %endif
    times 3 - ($ - %%insn_047a5) db 0
    %%insn_047a8:
    mov ds,ax ; 047A8 8ED8
    %if ($ - %%insn_047a8) > 2
        %error "LONG_047A8"
    %endif
    times 2 - ($ - %%insn_047a8) db 0
    %%insn_047aa:
    jmp short 0x47dc ; 047AA EB30
    %if ($ - %%insn_047aa) > 2
        %error "LONG_047AA"
    %endif
    times 2 - ($ - %%insn_047aa) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_0479C"
    %endif
%endmacro
