; Linear entry 047AC (1000:47ac)
; Ghidra working symbol: FUN_1000_47ac
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_047ac_part_00 0
    %%fragment_start:
func_047ac:
    %%insn_047ac:
    mov bx,[si] ; 047AC 8B1C
    %if ($ - %%insn_047ac) > 2
        %error "LONG_047AC"
    %endif
    times 2 - ($ - %%insn_047ac) db 0
    %%insn_047ae:
    mov [bp-0x1f75],bx ; 047AE 899E8BE0
    %if ($ - %%insn_047ae) > 4
        %error "LONG_047AE"
    %endif
    times 4 - ($ - %%insn_047ae) db 0
    %%insn_047b2:
    mov si,0xe083 ; 047B2 BE83E0
    %if ($ - %%insn_047b2) > 3
        %error "LONG_047B2"
    %endif
    times 3 - ($ - %%insn_047b2) db 0
    %%insn_047b5:
    mov ax,0x893 ; 047B5 B89308
    %if ($ - %%insn_047b5) > 3
        %error "LONG_047B5"
    %endif
    times 3 - ($ - %%insn_047b5) db 0
    %%insn_047b8:
    mov ds,ax ; 047B8 8ED8
    %if ($ - %%insn_047b8) > 2
        %error "LONG_047B8"
    %endif
    times 2 - ($ - %%insn_047b8) db 0
    %%insn_047ba:
    jmp short 0x47dc ; 047BA EB20
    %if ($ - %%insn_047ba) > 2
        %error "LONG_047BA"
    %endif
    times 2 - ($ - %%insn_047ba) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_047AC"
    %endif
%endmacro
