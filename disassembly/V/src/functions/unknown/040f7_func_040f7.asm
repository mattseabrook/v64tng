; Linear entry 040F7 (1000:40f7)
; Ghidra working symbol: FUN_1000_40f7
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_040f7_part_00 0
    %%fragment_start:
func_040f7:
    %%insn_040f7:
    call 0x400a ; 040F7 E810FF
    %if ($ - %%insn_040f7) > 3
        %error "LONG_040F7"
    %endif
    times 3 - ($ - %%insn_040f7) db 0
    %%insn_040fa:
    mov bx,0xdba2 ; 040FA BBA2DB
    %if ($ - %%insn_040fa) > 3
        %error "LONG_040FA"
    %endif
    times 3 - ($ - %%insn_040fa) db 0
    db 0x03, 0xD8 ; 040FD 03D8 | add bx,ax | encoding preserved
    %%insn_040ff:
    inc byte [ss:bx] ; 040FF 36FE07
    %if ($ - %%insn_040ff) > 3
        %error "LONG_040FF"
    %endif
    times 3 - ($ - %%insn_040ff) db 0
    %%insn_04102:
    ret ; 04102 C3
    %if ($ - %%insn_04102) > 1
        %error "LONG_04102"
    %endif
    times 1 - ($ - %%insn_04102) db 0
    %if ($ - %%fragment_start) != 12
        %error "SIZE_040F7"
    %endif
%endmacro
