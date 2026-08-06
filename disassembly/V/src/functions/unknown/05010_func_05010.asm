; Linear entry 05010 (1000:5010)
; Ghidra working symbol: FUN_1000_5010
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05010_part_00 0
    %%fragment_start:
func_05010:
    %%insn_05010:
    lodsb ; 05010 AC
    %if ($ - %%insn_05010) > 1
        %error "LONG_05010"
    %endif
    times 1 - ($ - %%insn_05010) db 0
    %%insn_05011:
    stosb ; 05011 AA
    %if ($ - %%insn_05011) > 1
        %error "LONG_05011"
    %endif
    times 1 - ($ - %%insn_05011) db 0
    %%insn_05012:
    cmp al,0x0 ; 05012 3C00
    %if ($ - %%insn_05012) > 2
        %error "LONG_05012"
    %endif
    times 2 - ($ - %%insn_05012) db 0
    %%insn_05014:
    jnz short 0x5010 ; 05014 75FA
    %if ($ - %%insn_05014) > 2
        %error "LONG_05014"
    %endif
    times 2 - ($ - %%insn_05014) db 0
    %%insn_05016:
    dec di ; 05016 4F
    %if ($ - %%insn_05016) > 1
        %error "LONG_05016"
    %endif
    times 1 - ($ - %%insn_05016) db 0
    %%insn_05017:
    ret ; 05017 C3
    %if ($ - %%insn_05017) > 1
        %error "LONG_05017"
    %endif
    times 1 - ($ - %%insn_05017) db 0
    %if ($ - %%fragment_start) != 8
        %error "SIZE_05010"
    %endif
%endmacro
