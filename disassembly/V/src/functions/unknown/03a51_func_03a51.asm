; Linear entry 03A51 (1000:3a51)
; Ghidra working symbol: FUN_1000_3a51
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_03a51_part_00 0
    %%fragment_start:
func_03a51:
    %%insn_03a51:
    mov bx,[bp-0x2634] ; 03A51 8B9ECCD9
    %if ($ - %%insn_03a51) > 4
        %error "LONG_03A51"
    %endif
    times 4 - ($ - %%insn_03a51) db 0
    %%insn_03a55:
    mov ax,0x3f00 ; 03A55 B8003F
    %if ($ - %%insn_03a55) > 3
        %error "LONG_03A55"
    %endif
    times 3 - ($ - %%insn_03a55) db 0
    %%insn_03a58:
    int byte 0x21 ; 03A58 CD21
    %if ($ - %%insn_03a58) > 2
        %error "LONG_03A58"
    %endif
    times 2 - ($ - %%insn_03a58) db 0
    %%insn_03a5a:
    ret ; 03A5A C3
    %if ($ - %%insn_03a5a) > 1
        %error "LONG_03A5A"
    %endif
    times 1 - ($ - %%insn_03a5a) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_03A51"
    %endif
%endmacro
