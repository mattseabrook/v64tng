; PE virtual entry 0040C996
; Ghidra working symbol: DirectDrawCreate
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c996_part_00 0
    %%fragment_start:
func_0040c996:
    %%insn_0040c996:
    jmp dword near [0x424364] ; 0040C996 FF2564434200
    %if ($ - %%insn_0040c996) > 6
        %error "LONG_0040C996"
    %endif
    times 6 - ($ - %%insn_0040c996) db 0
    %if ($ - %%fragment_start) != 6
        %error "function fragment size drift: 0040C996"
    %endif
%endmacro
