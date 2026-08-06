; Linear entry 07D4E (1702:0d2e)
; Ghidra working symbol: FUN_1702_0d2e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07d4e_part_00 0
    %%fragment_start:
func_07d4e:
    %%insn_07d4e:
    mov ax,0xb4 ; 07D4E B8B400
    %if ($ - %%insn_07d4e) > 3
        %error "LONG_07D4E"
    %endif
    times 3 - ($ - %%insn_07d4e) db 0
    %%insn_07d51:
    jmp 0x7418 ; 07D51 E9C4F6
    %if ($ - %%insn_07d51) > 3
        %error "LONG_07D51"
    %endif
    times 3 - ($ - %%insn_07d51) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_07D4E"
    %endif
%endmacro
