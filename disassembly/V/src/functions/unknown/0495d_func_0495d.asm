; Linear entry 0495D (1000:495d)
; Ghidra working symbol: FUN_1000_495d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0495d_part_00 0
    %%fragment_start:
func_0495d:
    %%insn_0495d:
    lodsb ; 0495D AC
    %if ($ - %%insn_0495d) > 1
        %error "LONG_0495D"
    %endif
    times 1 - ($ - %%insn_0495d) db 0
    %%insn_0495e:
    cmp al,0x20 ; 0495E 3C20
    %if ($ - %%insn_0495e) > 2
        %error "LONG_0495E"
    %endif
    times 2 - ($ - %%insn_0495e) db 0
    %%insn_04960:
    jz short 0x495d ; 04960 74FB
    %if ($ - %%insn_04960) > 2
        %error "LONG_04960"
    %endif
    times 2 - ($ - %%insn_04960) db 0
    %%insn_04962:
    cmp al,0x9 ; 04962 3C09
    %if ($ - %%insn_04962) > 2
        %error "LONG_04962"
    %endif
    times 2 - ($ - %%insn_04962) db 0
    %%insn_04964:
    jz short 0x495d ; 04964 74F7
    %if ($ - %%insn_04964) > 2
        %error "LONG_04964"
    %endif
    times 2 - ($ - %%insn_04964) db 0
    %%insn_04966:
    dec si ; 04966 4E
    %if ($ - %%insn_04966) > 1
        %error "LONG_04966"
    %endif
    times 1 - ($ - %%insn_04966) db 0
    %%insn_04967:
    ret ; 04967 C3
    %if ($ - %%insn_04967) > 1
        %error "LONG_04967"
    %endif
    times 1 - ($ - %%insn_04967) db 0
    %if ($ - %%fragment_start) != 11
        %error "SIZE_0495D"
    %endif
%endmacro
