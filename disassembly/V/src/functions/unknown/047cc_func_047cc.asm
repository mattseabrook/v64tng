; Linear entry 047CC (1000:47cc)
; Ghidra working symbol: FUN_1000_47cc
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_047cc_part_00 0
    %%fragment_start:
func_047cc:
    %%insn_047cc:
    mov bx,[si] ; 047CC 8B1C
    %if ($ - %%insn_047cc) > 2
        %error "LONG_047CC"
    %endif
    times 2 - ($ - %%insn_047cc) db 0
    %%insn_047ce:
    mov [bp-0x1f6a],bx ; 047CE 899E96E0
    %if ($ - %%insn_047ce) > 4
        %error "LONG_047CE"
    %endif
    times 4 - ($ - %%insn_047ce) db 0
    %%insn_047d2:
    mov si,0xe08e ; 047D2 BE8EE0
    %if ($ - %%insn_047d2) > 3
        %error "LONG_047D2"
    %endif
    times 3 - ($ - %%insn_047d2) db 0
    %%insn_047d5:
    mov ax,0x893 ; 047D5 B89308
    %if ($ - %%insn_047d5) > 3
        %error "LONG_047D5"
    %endif
    times 3 - ($ - %%insn_047d5) db 0
    %%insn_047d8:
    mov ds,ax ; 047D8 8ED8
    %if ($ - %%insn_047d8) > 2
        %error "LONG_047D8"
    %endif
    times 2 - ($ - %%insn_047d8) db 0
    %%insn_047da:
    jmp short 0x47dc ; 047DA EB00
    %if ($ - %%insn_047da) > 2
        %error "LONG_047DA"
    %endif
    times 2 - ($ - %%insn_047da) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_047CC"
    %endif
%endmacro
