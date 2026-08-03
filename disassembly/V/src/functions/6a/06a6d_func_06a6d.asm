; Linear entry 06A6D (1000:6a6d)
; Ghidra working symbol: FUN_1000_6a6d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06a6d_part_00 0
    %%fragment_start:
func_06a6d:
    %%insn_06a6d:
    mov byte [0xf1cd],0x0 ; 06A6D C606CDF100
    %if ($ - %%insn_06a6d) > 5
        %error "LONG_06A6D"
    %endif
    times 5 - ($ - %%insn_06a6d) db 0
    %%insn_06a72:
    mov word [0xf1c9],0xffff ; 06A72 C706C9F1FFFF
    %if ($ - %%insn_06a72) > 6
        %error "LONG_06A72"
    %endif
    times 6 - ($ - %%insn_06a72) db 0
    db 0x2B, 0xC0 ; 06A78 2BC0 | sub ax,ax | encoding preserved
    %%insn_06a7a:
    mov [0xf1cb],ax ; 06A7A A3CBF1
    %if ($ - %%insn_06a7a) > 3
        %error "LONG_06A7A"
    %endif
    times 3 - ($ - %%insn_06a7a) db 0
    %%insn_06a7d:
    mov [0xefcb],ax ; 06A7D A3CBEF
    %if ($ - %%insn_06a7d) > 3
        %error "LONG_06A7D"
    %endif
    times 3 - ($ - %%insn_06a7d) db 0
    %%insn_06a80:
    ret ; 06A80 C3
    %if ($ - %%insn_06a80) > 1
        %error "LONG_06A80"
    %endif
    times 1 - ($ - %%insn_06a80) db 0
    %if ($ - %%fragment_start) != 20
        %error "SIZE_06A6D"
    %endif
%endmacro
