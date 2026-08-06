; PE virtual entry 00408F10
; Ghidra working symbol: FUN_00408f10
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408f10_part_00 0
    %%fragment_start:
func_00408f10:
    %%insn_00408f10:
    push ebp ; 00408F10 55
    %if ($ - %%insn_00408f10) > 1
        %error "LONG_00408F10"
    %endif
    times 1 - ($ - %%insn_00408f10) db 0
    db 0x8B, 0xEC ; 00408F11 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408f13:
    call 0x40c197 ; 00408F13 E87F320000
    %if ($ - %%insn_00408f13) > 5
        %error "LONG_00408F13"
    %endif
    times 5 - ($ - %%insn_00408f13) db 0
    %%insn_00408f18:
    call 0x40c129 ; 00408F18 E80C320000
    %if ($ - %%insn_00408f18) > 5
        %error "LONG_00408F18"
    %endif
    times 5 - ($ - %%insn_00408f18) db 0
    %%insn_00408f1d:
    call 0x40136e ; 00408F1D E84C84FFFF
    %if ($ - %%insn_00408f1d) > 5
        %error "LONG_00408F1D"
    %endif
    times 5 - ($ - %%insn_00408f1d) db 0
    %%insn_00408f22:
    call 0x40441d ; 00408F22 E8F6B4FFFF
    %if ($ - %%insn_00408f22) > 5
        %error "LONG_00408F22"
    %endif
    times 5 - ($ - %%insn_00408f22) db 0
    %%insn_00408f27:
    call 0x409ab6 ; 00408F27 E88A0B0000
    %if ($ - %%insn_00408f27) > 5
        %error "LONG_00408F27"
    %endif
    times 5 - ($ - %%insn_00408f27) db 0
    %%insn_00408f2c:
    pop ebp ; 00408F2C 5D
    %if ($ - %%insn_00408f2c) > 1
        %error "LONG_00408F2C"
    %endif
    times 1 - ($ - %%insn_00408f2c) db 0
    %%insn_00408f2d:
    ret ; 00408F2D C3
    %if ($ - %%insn_00408f2d) > 1
        %error "LONG_00408F2D"
    %endif
    times 1 - ($ - %%insn_00408f2d) db 0
    %if ($ - %%fragment_start) != 30
        %error "function fragment size drift: 00408F10"
    %endif
%endmacro
