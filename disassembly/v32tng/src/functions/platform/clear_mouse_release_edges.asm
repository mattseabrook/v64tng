; Semantic role: clear_mouse_release_edges
; Contract: Clear the mouse release-edge mask.
; Evidence: static instructions and connected callers; original symbol unknown.
; Analyzer boundaries retained; no runtime validation claimed.
; PE virtual entry 00409503
; Ghidra working symbol: FUN_00409503
; Verified static semantic role; analyzer boundary remains provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_clear_mouse_release_edges_part_00 0
    %%fragment_start:
clear_mouse_release_edges:
    %%insn_00409503:
    push ebp ; 00409503 55
    %if ($ - %%insn_00409503) > 1
        %error "LONG_00409503"
    %endif
    times 1 - ($ - %%insn_00409503) db 0
    db 0x8B, 0xEC ; 00409504 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409506:
    mov dword [0x41f5c8],0x0 ; 00409506 C705C8F5410000000000
    %if ($ - %%insn_00409506) > 10
        %error "LONG_00409506"
    %endif
    times 10 - ($ - %%insn_00409506) db 0
    %%insn_00409510:
    pop ebp ; 00409510 5D
    %if ($ - %%insn_00409510) > 1
        %error "LONG_00409510"
    %endif
    times 1 - ($ - %%insn_00409510) db 0
    %%insn_00409511:
    ret ; 00409511 C3
    %if ($ - %%insn_00409511) > 1
        %error "LONG_00409511"
    %endif
    times 1 - ($ - %%insn_00409511) db 0
    %if ($ - %%fragment_start) != 15
        %error "function fragment size drift: 00409503"
    %endif
%endmacro
