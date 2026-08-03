; Linear entry 04451 (1000:4451)
; Ghidra working symbol: FUN_1000_4451
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04451_part_00 0
    %%fragment_start:
func_04451:
    %%insn_04451:
    lodsw ; 04451 AD
    %if ($ - %%insn_04451) > 1
        %error "LONG_04451"
    %endif
    times 1 - ($ - %%insn_04451) db 0
    %%insn_04452:
    mov word [cs:0x5cde],0x0 ; 04452 2EC706DE5C0000
    %if ($ - %%insn_04452) > 7
        %error "LONG_04452"
    %endif
    times 7 - ($ - %%insn_04452) db 0
    %%insn_04459:
    cmp ax,[cs:0x5cde] ; 04459 2E3B06DE5C
    %if ($ - %%insn_04459) > 5
        %error "LONG_04459"
    %endif
    times 5 - ($ - %%insn_04459) db 0
    %%insn_0445e:
    jnc short 0x4459 ; 0445E 73F9
    %if ($ - %%insn_0445e) > 2
        %error "LONG_0445E"
    %endif
    times 2 - ($ - %%insn_0445e) db 0
    %%insn_04460:
    ret ; 04460 C3
    %if ($ - %%insn_04460) > 1
        %error "LONG_04460"
    %endif
    times 1 - ($ - %%insn_04460) db 0
    %if ($ - %%fragment_start) != 16
        %error "SIZE_04451"
    %endif
%endmacro
