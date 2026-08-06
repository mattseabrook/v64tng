; Linear entry 0477C (1000:477c)
; Ghidra working symbol: FUN_1000_477c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0477c_part_00 0
    %%fragment_start:
func_0477c:
    %%insn_0477c:
    mov bx,[si] ; 0477C 8B1C
    %if ($ - %%insn_0477c) > 2
        %error "LONG_0477C"
    %endif
    times 2 - ($ - %%insn_0477c) db 0
    %%insn_0477e:
    mov [bp-0x1f3e],bx ; 0477E 899EC2E0
    %if ($ - %%insn_0477e) > 4
        %error "LONG_0477E"
    %endif
    times 4 - ($ - %%insn_0477e) db 0
    %%insn_04782:
    mov si,0xe0ba ; 04782 BEBAE0
    %if ($ - %%insn_04782) > 3
        %error "LONG_04782"
    %endif
    times 3 - ($ - %%insn_04782) db 0
    %%insn_04785:
    mov ax,0x893 ; 04785 B89308
    %if ($ - %%insn_04785) > 3
        %error "LONG_04785"
    %endif
    times 3 - ($ - %%insn_04785) db 0
    %%insn_04788:
    mov ds,ax ; 04788 8ED8
    %if ($ - %%insn_04788) > 2
        %error "LONG_04788"
    %endif
    times 2 - ($ - %%insn_04788) db 0
    %%insn_0478a:
    jmp short 0x47dc ; 0478A EB50
    %if ($ - %%insn_0478a) > 2
        %error "LONG_0478A"
    %endif
    times 2 - ($ - %%insn_0478a) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_0477C"
    %endif
%endmacro
