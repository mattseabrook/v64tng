; PE virtual entry 0040DA18
; Ghidra working symbol: __global_unwind2
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040da18_part_00 0
    %%fragment_start:
func_0040da18:
    %%insn_0040da18:
    push ebp ; 0040DA18 55
    %if ($ - %%insn_0040da18) > 1
        %error "LONG_0040DA18"
    %endif
    times 1 - ($ - %%insn_0040da18) db 0
    db 0x8B, 0xEC ; 0040DA19 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040da1b:
    push ebx ; 0040DA1B 53
    %if ($ - %%insn_0040da1b) > 1
        %error "LONG_0040DA1B"
    %endif
    times 1 - ($ - %%insn_0040da1b) db 0
    %%insn_0040da1c:
    push esi ; 0040DA1C 56
    %if ($ - %%insn_0040da1c) > 1
        %error "LONG_0040DA1C"
    %endif
    times 1 - ($ - %%insn_0040da1c) db 0
    %%insn_0040da1d:
    push edi ; 0040DA1D 57
    %if ($ - %%insn_0040da1d) > 1
        %error "LONG_0040DA1D"
    %endif
    times 1 - ($ - %%insn_0040da1d) db 0
    %%insn_0040da1e:
    push ebp ; 0040DA1E 55
    %if ($ - %%insn_0040da1e) > 1
        %error "LONG_0040DA1E"
    %endif
    times 1 - ($ - %%insn_0040da1e) db 0
    %%insn_0040da1f:
    push dword 0x0 ; 0040DA1F 6A00
    %if ($ - %%insn_0040da1f) > 2
        %error "LONG_0040DA1F"
    %endif
    times 2 - ($ - %%insn_0040da1f) db 0
    %%insn_0040da21:
    push dword 0x0 ; 0040DA21 6A00
    %if ($ - %%insn_0040da21) > 2
        %error "LONG_0040DA21"
    %endif
    times 2 - ($ - %%insn_0040da21) db 0
    %%insn_0040da23:
    push dword 0x40da30 ; 0040DA23 6830DA4000
    %if ($ - %%insn_0040da23) > 5
        %error "LONG_0040DA23"
    %endif
    times 5 - ($ - %%insn_0040da23) db 0
    %%insn_0040da28:
    push dword [ebp+0x8] ; 0040DA28 FF7508
    %if ($ - %%insn_0040da28) > 3
        %error "LONG_0040DA28"
    %endif
    times 3 - ($ - %%insn_0040da28) db 0
    %%insn_0040da2b:
    call 0x4194a2 ; 0040DA2B E872BA0000
    %if ($ - %%insn_0040da2b) > 5
        %error "LONG_0040DA2B"
    %endif
    times 5 - ($ - %%insn_0040da2b) db 0
    %%insn_0040da30:
    pop ebp ; 0040DA30 5D
    %if ($ - %%insn_0040da30) > 1
        %error "LONG_0040DA30"
    %endif
    times 1 - ($ - %%insn_0040da30) db 0
    %%insn_0040da31:
    pop edi ; 0040DA31 5F
    %if ($ - %%insn_0040da31) > 1
        %error "LONG_0040DA31"
    %endif
    times 1 - ($ - %%insn_0040da31) db 0
    %%insn_0040da32:
    pop esi ; 0040DA32 5E
    %if ($ - %%insn_0040da32) > 1
        %error "LONG_0040DA32"
    %endif
    times 1 - ($ - %%insn_0040da32) db 0
    %%insn_0040da33:
    pop ebx ; 0040DA33 5B
    %if ($ - %%insn_0040da33) > 1
        %error "LONG_0040DA33"
    %endif
    times 1 - ($ - %%insn_0040da33) db 0
    db 0x8B, 0xE5 ; 0040DA34 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040da36:
    pop ebp ; 0040DA36 5D
    %if ($ - %%insn_0040da36) > 1
        %error "LONG_0040DA36"
    %endif
    times 1 - ($ - %%insn_0040da36) db 0
    %%insn_0040da37:
    ret ; 0040DA37 C3
    %if ($ - %%insn_0040da37) > 1
        %error "LONG_0040DA37"
    %endif
    times 1 - ($ - %%insn_0040da37) db 0
    %if ($ - %%fragment_start) != 32
        %error "function fragment size drift: 0040DA18"
    %endif
%endmacro
