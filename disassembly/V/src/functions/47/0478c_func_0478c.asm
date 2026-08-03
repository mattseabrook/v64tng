; Linear entry 0478C (1000:478c)
; Ghidra working symbol: FUN_1000_478c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0478c_part_00 0
    %%fragment_start:
func_0478c:
    %%insn_0478c:
    mov bx,[si] ; 0478C 8B1C
    %if ($ - %%insn_0478c) > 2
        %error "LONG_0478C"
    %endif
    times 2 - ($ - %%insn_0478c) db 0
    %%insn_0478e:
    mov [bp-0x1f8b],bx ; 0478E 899E75E0
    %if ($ - %%insn_0478e) > 4
        %error "LONG_0478E"
    %endif
    times 4 - ($ - %%insn_0478e) db 0
    %%insn_04792:
    mov si,0xe06d ; 04792 BE6DE0
    %if ($ - %%insn_04792) > 3
        %error "LONG_04792"
    %endif
    times 3 - ($ - %%insn_04792) db 0
    %%insn_04795:
    mov ax,0x893 ; 04795 B89308
    %if ($ - %%insn_04795) > 3
        %error "LONG_04795"
    %endif
    times 3 - ($ - %%insn_04795) db 0
    %%insn_04798:
    mov ds,ax ; 04798 8ED8
    %if ($ - %%insn_04798) > 2
        %error "LONG_04798"
    %endif
    times 2 - ($ - %%insn_04798) db 0
    %%insn_0479a:
    jmp short 0x47dc ; 0479A EB40
    %if ($ - %%insn_0479a) > 2
        %error "LONG_0479A"
    %endif
    times 2 - ($ - %%insn_0479a) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_0478C"
    %endif
%endmacro
