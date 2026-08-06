; Linear entry 04004 (1000:4004)
; Ghidra working symbol: FUN_1000_4004
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04004_part_00 0
    %%fragment_start:
func_04004:
    %%insn_04004:
    lodsw ; 04004 AD
    %if ($ - %%insn_04004) > 1
        %error "LONG_04004"
    %endif
    times 1 - ($ - %%insn_04004) db 0
    %%insn_04005:
    mov [bp-0x2603],ax ; 04005 8986FDD9
    %if ($ - %%insn_04005) > 4
        %error "LONG_04005"
    %endif
    times 4 - ($ - %%insn_04005) db 0
    %%insn_04009:
    ret ; 04009 C3
    %if ($ - %%insn_04009) > 1
        %error "LONG_04009"
    %endif
    times 1 - ($ - %%insn_04009) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_04004"
    %endif
%endmacro
