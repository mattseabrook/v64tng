; Linear entry 02D50 (1000:2d50)
; Ghidra working symbol: FUN_1000_2d50
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_02d50_part_00 0
    %%fragment_start:
func_02d50:
    %%insn_02d50:
    mov [bp-0x3076],al ; 02D50 88868ACF
    %if ($ - %%insn_02d50) > 4
        %error "LONG_02D50"
    %endif
    times 4 - ($ - %%insn_02d50) db 0
    %%insn_02d54:
    jmp word near [ss:0xd660] ; 02D54 36FF2660D6
    %if ($ - %%insn_02d54) > 5
        %error "LONG_02D54"
    %endif
    times 5 - ($ - %%insn_02d54) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_02D50"
    %endif
%endmacro
