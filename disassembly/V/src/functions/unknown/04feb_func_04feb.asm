; Linear entry 04FEB (1000:4feb)
; Ghidra working symbol: FUN_1000_4feb
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04feb_part_00 0
    %%fragment_start:
func_04feb:
    %%insn_04feb:
    cmp al,0x41 ; 04FEB 3C41
    %if ($ - %%insn_04feb) > 2
        %error "LONG_04FEB"
    %endif
    times 2 - ($ - %%insn_04feb) db 0
    %%insn_04fed:
    jc short 0x4ff5 ; 04FED 7206
    %if ($ - %%insn_04fed) > 2
        %error "LONG_04FED"
    %endif
    times 2 - ($ - %%insn_04fed) db 0
    %%insn_04fef:
    cmp al,0x5a ; 04FEF 3C5A
    %if ($ - %%insn_04fef) > 2
        %error "LONG_04FEF"
    %endif
    times 2 - ($ - %%insn_04fef) db 0
    %%insn_04ff1:
    ja short 0x4ff5 ; 04FF1 7702
    %if ($ - %%insn_04ff1) > 2
        %error "LONG_04FF1"
    %endif
    times 2 - ($ - %%insn_04ff1) db 0
    %%insn_04ff3:
    or al,0x20 ; 04FF3 0C20
    %if ($ - %%insn_04ff3) > 2
        %error "LONG_04FF3"
    %endif
    times 2 - ($ - %%insn_04ff3) db 0
    %%insn_04ff5:
    ret ; 04FF5 C3
    %if ($ - %%insn_04ff5) > 1
        %error "LONG_04FF5"
    %endif
    times 1 - ($ - %%insn_04ff5) db 0
    %if ($ - %%fragment_start) != 11
        %error "SIZE_04FEB"
    %endif
%endmacro
