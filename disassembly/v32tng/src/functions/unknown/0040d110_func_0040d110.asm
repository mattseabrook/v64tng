; PE virtual entry 0040D110
; Ghidra working symbol: FUN_0040d110
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d110_part_00 0
    %%fragment_start:
func_0040d110:
    %%insn_0040d110:
    push esi ; 0040D110 56
    %if ($ - %%insn_0040d110) > 1
        %error "LONG_0040D110"
    %endif
    times 1 - ($ - %%insn_0040d110) db 0
    %%insn_0040d111:
    call 0x40fe40 ; 0040D111 E82A2D0000
    %if ($ - %%insn_0040d111) > 5
        %error "LONG_0040D111"
    %endif
    times 5 - ($ - %%insn_0040d111) db 0
    db 0x8B, 0xF0 ; 0040D116 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040d118:
    test esi,esi ; 0040D118 85F6
    %if ($ - %%insn_0040d118) > 2
        %error "LONG_0040D118"
    %endif
    times 2 - ($ - %%insn_0040d118) db 0
    %%insn_0040d11a:
    jnz short 0x40d11e ; 0040D11A 7502
    %if ($ - %%insn_0040d11a) > 2
        %error "LONG_0040D11A"
    %endif
    times 2 - ($ - %%insn_0040d11a) db 0
    %%insn_0040d11c:
    pop esi ; 0040D11C 5E
    %if ($ - %%insn_0040d11c) > 1
        %error "LONG_0040D11C"
    %endif
    times 1 - ($ - %%insn_0040d11c) db 0
    %%insn_0040d11d:
    ret ; 0040D11D C3
    %if ($ - %%insn_0040d11d) > 1
        %error "LONG_0040D11D"
    %endif
    times 1 - ($ - %%insn_0040d11d) db 0
    %%insn_0040d11e:
    mov eax,[esp+0x10] ; 0040D11E 8B442410
    %if ($ - %%insn_0040d11e) > 4
        %error "LONG_0040D11E"
    %endif
    times 4 - ($ - %%insn_0040d11e) db 0
    %%insn_0040d122:
    mov ecx,[esp+0xc] ; 0040D122 8B4C240C
    %if ($ - %%insn_0040d122) > 4
        %error "LONG_0040D122"
    %endif
    times 4 - ($ - %%insn_0040d122) db 0
    %%insn_0040d126:
    mov edx,[esp+0x8] ; 0040D126 8B542408
    %if ($ - %%insn_0040d126) > 4
        %error "LONG_0040D126"
    %endif
    times 4 - ($ - %%insn_0040d126) db 0
    %%insn_0040d12a:
    push edi ; 0040D12A 57
    %if ($ - %%insn_0040d12a) > 1
        %error "LONG_0040D12A"
    %endif
    times 1 - ($ - %%insn_0040d12a) db 0
    %%insn_0040d12b:
    push esi ; 0040D12B 56
    %if ($ - %%insn_0040d12b) > 1
        %error "LONG_0040D12B"
    %endif
    times 1 - ($ - %%insn_0040d12b) db 0
    %%insn_0040d12c:
    push eax ; 0040D12C 50
    %if ($ - %%insn_0040d12c) > 1
        %error "LONG_0040D12C"
    %endif
    times 1 - ($ - %%insn_0040d12c) db 0
    %%insn_0040d12d:
    push ecx ; 0040D12D 51
    %if ($ - %%insn_0040d12d) > 1
        %error "LONG_0040D12D"
    %endif
    times 1 - ($ - %%insn_0040d12d) db 0
    %%insn_0040d12e:
    push edx ; 0040D12E 52
    %if ($ - %%insn_0040d12e) > 1
        %error "LONG_0040D12E"
    %endif
    times 1 - ($ - %%insn_0040d12e) db 0
    %%insn_0040d12f:
    call 0x40fc70 ; 0040D12F E83C2B0000
    %if ($ - %%insn_0040d12f) > 5
        %error "LONG_0040D12F"
    %endif
    times 5 - ($ - %%insn_0040d12f) db 0
    %%insn_0040d134:
    add esp,0x10 ; 0040D134 83C410
    %if ($ - %%insn_0040d134) > 3
        %error "LONG_0040D134"
    %endif
    times 3 - ($ - %%insn_0040d134) db 0
    db 0x8B, 0xF8 ; 0040D137 8BF8 | mov edi,eax | encoding preserved
    %%insn_0040d139:
    push esi ; 0040D139 56
    %if ($ - %%insn_0040d139) > 1
        %error "LONG_0040D139"
    %endif
    times 1 - ($ - %%insn_0040d139) db 0
    %%insn_0040d13a:
    call 0x40e010 ; 0040D13A E8D10E0000
    %if ($ - %%insn_0040d13a) > 5
        %error "LONG_0040D13A"
    %endif
    times 5 - ($ - %%insn_0040d13a) db 0
    %%insn_0040d13f:
    add esp,0x4 ; 0040D13F 83C404
    %if ($ - %%insn_0040d13f) > 3
        %error "LONG_0040D13F"
    %endif
    times 3 - ($ - %%insn_0040d13f) db 0
    db 0x8B, 0xC7 ; 0040D142 8BC7 | mov eax,edi | encoding preserved
    %%insn_0040d144:
    pop edi ; 0040D144 5F
    %if ($ - %%insn_0040d144) > 1
        %error "LONG_0040D144"
    %endif
    times 1 - ($ - %%insn_0040d144) db 0
    %%insn_0040d145:
    pop esi ; 0040D145 5E
    %if ($ - %%insn_0040d145) > 1
        %error "LONG_0040D145"
    %endif
    times 1 - ($ - %%insn_0040d145) db 0
    %%insn_0040d146:
    ret ; 0040D146 C3
    %if ($ - %%insn_0040d146) > 1
        %error "LONG_0040D146"
    %endif
    times 1 - ($ - %%insn_0040d146) db 0
    %if ($ - %%fragment_start) != 55
        %error "function fragment size drift: 0040D110"
    %endif
%endmacro
