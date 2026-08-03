; Linear entry 04772 (1000:4772)
; Ghidra working symbol: FUN_1000_4772
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04772_part_00 0
    %%fragment_start:
func_04772:
    %%insn_04772:
    mov si,0xe0af ; 04772 BEAFE0
    %if ($ - %%insn_04772) > 3
        %error "LONG_04772"
    %endif
    times 3 - ($ - %%insn_04772) db 0
    %%insn_04775:
    mov ax,0x893 ; 04775 B89308
    %if ($ - %%insn_04775) > 3
        %error "LONG_04775"
    %endif
    times 3 - ($ - %%insn_04775) db 0
    %%insn_04778:
    mov ds,ax ; 04778 8ED8
    %if ($ - %%insn_04778) > 2
        %error "LONG_04778"
    %endif
    times 2 - ($ - %%insn_04778) db 0
    %%insn_0477a:
    jmp short 0x47dc ; 0477A EB60
    %if ($ - %%insn_0477a) > 2
        %error "LONG_0477A"
    %endif
    times 2 - ($ - %%insn_0477a) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_04772"
    %endif
%endmacro
