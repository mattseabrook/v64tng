; Linear entry 04768 (1000:4768)
; Ghidra working symbol: FUN_1000_4768
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04768_part_00 0
    %%fragment_start:
func_04768:
    %%insn_04768:
    mov si,0xe062 ; 04768 BE62E0
    %if ($ - %%insn_04768) > 3
        %error "LONG_04768"
    %endif
    times 3 - ($ - %%insn_04768) db 0
    %%insn_0476b:
    mov ax,0x893 ; 0476B B89308
    %if ($ - %%insn_0476b) > 3
        %error "LONG_0476B"
    %endif
    times 3 - ($ - %%insn_0476b) db 0
    %%insn_0476e:
    mov ds,ax ; 0476E 8ED8
    %if ($ - %%insn_0476e) > 2
        %error "LONG_0476E"
    %endif
    times 2 - ($ - %%insn_0476e) db 0
    %%insn_04770:
    jmp short 0x47dc ; 04770 EB6A
    %if ($ - %%insn_04770) > 2
        %error "LONG_04770"
    %endif
    times 2 - ($ - %%insn_04770) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_04768"
    %endif
%endmacro
