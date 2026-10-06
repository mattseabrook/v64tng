; Semantic role: direct_draw_create_import_thunk
; Contract: Tail-jump to the DirectDrawCreate import.
; Evidence: static instructions and connected callers; original symbol unknown.
; Analyzer boundaries retained; no runtime validation claimed.
; PE virtual entry 0040C996
; Ghidra working symbol: DirectDrawCreate
; Verified static semantic role; analyzer boundary remains provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_direct_draw_create_import_thunk_part_00 0
    %%fragment_start:
direct_draw_create_import_thunk:
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
