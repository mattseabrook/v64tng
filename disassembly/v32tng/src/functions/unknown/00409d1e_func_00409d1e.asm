; PE virtual entry 00409D1E
; Ghidra working symbol: FUN_00409d1e
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409d1e_part_00 0
    %%fragment_start:
func_00409d1e:
    %%insn_00409d1e:
    push ebp ; 00409D1E 55
    %if ($ - %%insn_00409d1e) > 1
        %error "LONG_00409D1E"
    %endif
    times 1 - ($ - %%insn_00409d1e) db 0
    db 0x8B, 0xEC ; 00409D1F 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409d21:
    cmp dword [0x41f5ec],0x0 ; 00409D21 833DECF5410000
    %if ($ - %%insn_00409d21) > 7
        %error "LONG_00409D21"
    %endif
    times 7 - ($ - %%insn_00409d21) db 0
    %%insn_00409d28:
    jz short 0x409d53 ; 00409D28 7429
    %if ($ - %%insn_00409d28) > 2
        %error "LONG_00409D28"
    %endif
    times 2 - ($ - %%insn_00409d28) db 0
    %%insn_00409d2a:
    mov eax,[0x41f5ec] ; 00409D2A A1ECF54100
    %if ($ - %%insn_00409d2a) > 5
        %error "LONG_00409D2A"
    %endif
    times 5 - ($ - %%insn_00409d2a) db 0
    %%insn_00409d2f:
    push eax ; 00409D2F 50
    %if ($ - %%insn_00409d2f) > 1
        %error "LONG_00409D2F"
    %endif
    times 1 - ($ - %%insn_00409d2f) db 0
    %%insn_00409d30:
    mov ecx,[0x4209fc] ; 00409D30 8B0DFC094200
    %if ($ - %%insn_00409d30) > 6
        %error "LONG_00409D30"
    %endif
    times 6 - ($ - %%insn_00409d30) db 0
    %%insn_00409d36:
    push ecx ; 00409D36 51
    %if ($ - %%insn_00409d36) > 1
        %error "LONG_00409D36"
    %endif
    times 1 - ($ - %%insn_00409d36) db 0
    %%insn_00409d37:
    call 0x40a3ee ; 00409D37 E8B2060000
    %if ($ - %%insn_00409d37) > 5
        %error "LONG_00409D37"
    %endif
    times 5 - ($ - %%insn_00409d37) db 0
    %%insn_00409d3c:
    add esp,0x8 ; 00409D3C 83C408
    %if ($ - %%insn_00409d3c) > 3
        %error "LONG_00409D3C"
    %endif
    times 3 - ($ - %%insn_00409d3c) db 0
    %%insn_00409d3f:
    mov dword [0x41f5ec],0x0 ; 00409D3F C705ECF5410000000000
    %if ($ - %%insn_00409d3f) > 10
        %error "LONG_00409D3F"
    %endif
    times 10 - ($ - %%insn_00409d3f) db 0
    %%insn_00409d49:
    mov dword [0x420a08],0x1 ; 00409D49 C705080A420001000000
    %if ($ - %%insn_00409d49) > 10
        %error "LONG_00409D49"
    %endif
    times 10 - ($ - %%insn_00409d49) db 0
    %%insn_00409d53:
    pop ebp ; 00409D53 5D
    %if ($ - %%insn_00409d53) > 1
        %error "LONG_00409D53"
    %endif
    times 1 - ($ - %%insn_00409d53) db 0
    %%insn_00409d54:
    ret ; 00409D54 C3
    %if ($ - %%insn_00409d54) > 1
        %error "LONG_00409D54"
    %endif
    times 1 - ($ - %%insn_00409d54) db 0
    %if ($ - %%fragment_start) != 55
        %error "function fragment size drift: 00409D1E"
    %endif
%endmacro
