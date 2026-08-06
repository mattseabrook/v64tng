; PE virtual entry 0040DE50
; Ghidra working symbol: FUN_0040de50
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040de50_part_00 0
    %%fragment_start:
func_0040de50:
    %%insn_0040de50:
    mov eax,[0x41bde4] ; 0040DE50 A1E4BD4100
    %if ($ - %%insn_0040de50) > 5
        %error "LONG_0040DE50"
    %endif
    times 5 - ($ - %%insn_0040de50) db 0
    %%insn_0040de55:
    push esi ; 0040DE55 56
    %if ($ - %%insn_0040de55) > 1
        %error "LONG_0040DE55"
    %endif
    times 1 - ($ - %%insn_0040de55) db 0
    %%insn_0040de56:
    mov esi,[0x424400] ; 0040DE56 8B3500444200
    %if ($ - %%insn_0040de56) > 6
        %error "LONG_0040DE56"
    %endif
    times 6 - ($ - %%insn_0040de56) db 0
    %%insn_0040de5c:
    push eax ; 0040DE5C 50
    %if ($ - %%insn_0040de5c) > 1
        %error "LONG_0040DE5C"
    %endif
    times 1 - ($ - %%insn_0040de5c) db 0
    %%insn_0040de5d:
    call esi ; 0040DE5D FFD6
    %if ($ - %%insn_0040de5d) > 2
        %error "LONG_0040DE5D"
    %endif
    times 2 - ($ - %%insn_0040de5d) db 0
    %%insn_0040de5f:
    mov ecx,[0x41bdd4] ; 0040DE5F 8B0DD4BD4100
    %if ($ - %%insn_0040de5f) > 6
        %error "LONG_0040DE5F"
    %endif
    times 6 - ($ - %%insn_0040de5f) db 0
    %%insn_0040de65:
    push ecx ; 0040DE65 51
    %if ($ - %%insn_0040de65) > 1
        %error "LONG_0040DE65"
    %endif
    times 1 - ($ - %%insn_0040de65) db 0
    %%insn_0040de66:
    call esi ; 0040DE66 FFD6
    %if ($ - %%insn_0040de66) > 2
        %error "LONG_0040DE66"
    %endif
    times 2 - ($ - %%insn_0040de66) db 0
    %%insn_0040de68:
    mov edx,[0x41bdc4] ; 0040DE68 8B15C4BD4100
    %if ($ - %%insn_0040de68) > 6
        %error "LONG_0040DE68"
    %endif
    times 6 - ($ - %%insn_0040de68) db 0
    %%insn_0040de6e:
    push edx ; 0040DE6E 52
    %if ($ - %%insn_0040de6e) > 1
        %error "LONG_0040DE6E"
    %endif
    times 1 - ($ - %%insn_0040de6e) db 0
    %%insn_0040de6f:
    call esi ; 0040DE6F FFD6
    %if ($ - %%insn_0040de6f) > 2
        %error "LONG_0040DE6F"
    %endif
    times 2 - ($ - %%insn_0040de6f) db 0
    %%insn_0040de71:
    mov eax,[0x41bda4] ; 0040DE71 A1A4BD4100
    %if ($ - %%insn_0040de71) > 5
        %error "LONG_0040DE71"
    %endif
    times 5 - ($ - %%insn_0040de71) db 0
    %%insn_0040de76:
    push eax ; 0040DE76 50
    %if ($ - %%insn_0040de76) > 1
        %error "LONG_0040DE76"
    %endif
    times 1 - ($ - %%insn_0040de76) db 0
    %%insn_0040de77:
    call esi ; 0040DE77 FFD6
    %if ($ - %%insn_0040de77) > 2
        %error "LONG_0040DE77"
    %endif
    times 2 - ($ - %%insn_0040de77) db 0
    %%insn_0040de79:
    pop esi ; 0040DE79 5E
    %if ($ - %%insn_0040de79) > 1
        %error "LONG_0040DE79"
    %endif
    times 1 - ($ - %%insn_0040de79) db 0
    %%insn_0040de7a:
    ret ; 0040DE7A C3
    %if ($ - %%insn_0040de7a) > 1
        %error "LONG_0040DE7A"
    %endif
    times 1 - ($ - %%insn_0040de7a) db 0
    %if ($ - %%fragment_start) != 43
        %error "function fragment size drift: 0040DE50"
    %endif
%endmacro
