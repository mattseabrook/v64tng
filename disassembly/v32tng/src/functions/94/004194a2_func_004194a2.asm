; PE virtual entry 004194A2
; Ghidra working symbol: RtlUnwind
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004194a2_part_00 0
    %%fragment_start:
func_004194a2:
    %%insn_004194a2:
    jmp dword near [0x424420] ; 004194A2 FF2520444200
    %if ($ - %%insn_004194a2) > 6
        %error "LONG_004194A2"
    %endif
    times 6 - ($ - %%insn_004194a2) db 0
    %if ($ - %%fragment_start) != 6
        %error "function fragment size drift: 004194A2"
    %endif
%endmacro
