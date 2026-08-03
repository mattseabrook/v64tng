; Linear entry 039EE (1000:39ee)
; Ghidra working symbol: FUN_1000_39ee
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_039ee_part_00 0
    %%fragment_start:
func_039ee:
    %%insn_039ee:
    mov bx,[bp-0x2795] ; 039EE 8B9E6BD8
    %if ($ - %%insn_039ee) > 4
        %error "LONG_039EE"
    %endif
    times 4 - ($ - %%insn_039ee) db 0
    %%insn_039f2:
    mov ax,0x3f00 ; 039F2 B8003F
    %if ($ - %%insn_039f2) > 3
        %error "LONG_039F2"
    %endif
    times 3 - ($ - %%insn_039f2) db 0
    %%insn_039f5:
    int byte 0x21 ; 039F5 CD21
    %if ($ - %%insn_039f5) > 2
        %error "LONG_039F5"
    %endif
    times 2 - ($ - %%insn_039f5) db 0
    %%insn_039f7:
    ret ; 039F7 C3
    %if ($ - %%insn_039f7) > 1
        %error "LONG_039F7"
    %endif
    times 1 - ($ - %%insn_039f7) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_039EE"
    %endif
%endmacro
