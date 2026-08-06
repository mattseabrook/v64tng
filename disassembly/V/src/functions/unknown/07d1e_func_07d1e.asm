; Linear entry 07D1E (1702:0cfe)
; Ghidra working symbol: FUN_1702_0cfe
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07d1e_part_00 0
    %%fragment_start:
func_07d1e:
    %%insn_07d1e:
    mov ax,0xab ; 07D1E B8AB00
    %if ($ - %%insn_07d1e) > 3
        %error "LONG_07D1E"
    %endif
    times 3 - ($ - %%insn_07d1e) db 0
    %%insn_07d21:
    jmp 0x7418 ; 07D21 E9F4F6
    %if ($ - %%insn_07d21) > 3
        %error "LONG_07D21"
    %endif
    times 3 - ($ - %%insn_07d21) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D1E"
    %endif
%endmacro
