; PE virtual entry 00418E70
; Ghidra working symbol: FUN_00418e70
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418e70_part_00 0
    %%fragment_start:
func_00418e70:
    %%insn_00418e70:
    mov edx,[esp+0x8] ; 00418E70 8B542408
    %if ($ - %%insn_00418e70) > 4
        %error "LONG_00418E70"
    %endif
    times 4 - ($ - %%insn_00418e70) db 0
    %%insn_00418e74:
    push esi ; 00418E74 56
    %if ($ - %%insn_00418e74) > 1
        %error "LONG_00418E74"
    %endif
    times 1 - ($ - %%insn_00418e74) db 0
    %%insn_00418e75:
    mov esi,[esp+0x8] ; 00418E75 8B742408
    %if ($ - %%insn_00418e75) > 4
        %error "LONG_00418E75"
    %endif
    times 4 - ($ - %%insn_00418e75) db 0
    %%insn_00418e79:
    test edx,edx ; 00418E79 85D2
    %if ($ - %%insn_00418e79) > 2
        %error "LONG_00418E79"
    %endif
    times 2 - ($ - %%insn_00418e79) db 0
    %%insn_00418e7b:
    push edi ; 00418E7B 57
    %if ($ - %%insn_00418e7b) > 1
        %error "LONG_00418E7B"
    %endif
    times 1 - ($ - %%insn_00418e7b) db 0
    db 0x8B, 0xC6 ; 00418E7C 8BC6 | mov eax,esi | encoding preserved
    %%insn_00418e7e:
    lea ecx,[edx-0x1] ; 00418E7E 8D4AFF
    %if ($ - %%insn_00418e7e) > 3
        %error "LONG_00418E7E"
    %endif
    times 3 - ($ - %%insn_00418e7e) db 0
    %%insn_00418e81:
    jz short 0x418e90 ; 00418E81 740D
    %if ($ - %%insn_00418e81) > 2
        %error "LONG_00418E81"
    %endif
    times 2 - ($ - %%insn_00418e81) db 0
    %%insn_00418e83:
    cmp byte [eax],0x0 ; 00418E83 803800
    %if ($ - %%insn_00418e83) > 3
        %error "LONG_00418E83"
    %endif
    times 3 - ($ - %%insn_00418e83) db 0
    %%insn_00418e86:
    jz short 0x418e90 ; 00418E86 7408
    %if ($ - %%insn_00418e86) > 2
        %error "LONG_00418E86"
    %endif
    times 2 - ($ - %%insn_00418e86) db 0
    %%insn_00418e88:
    inc eax ; 00418E88 40
    %if ($ - %%insn_00418e88) > 1
        %error "LONG_00418E88"
    %endif
    times 1 - ($ - %%insn_00418e88) db 0
    db 0x8B, 0xF9 ; 00418E89 8BF9 | mov edi,ecx | encoding preserved
    %%insn_00418e8b:
    dec ecx ; 00418E8B 49
    %if ($ - %%insn_00418e8b) > 1
        %error "LONG_00418E8B"
    %endif
    times 1 - ($ - %%insn_00418e8b) db 0
    %%insn_00418e8c:
    test edi,edi ; 00418E8C 85FF
    %if ($ - %%insn_00418e8c) > 2
        %error "LONG_00418E8C"
    %endif
    times 2 - ($ - %%insn_00418e8c) db 0
    %%insn_00418e8e:
    jnz short 0x418e83 ; 00418E8E 75F3
    %if ($ - %%insn_00418e8e) > 2
        %error "LONG_00418E8E"
    %endif
    times 2 - ($ - %%insn_00418e8e) db 0
    %%insn_00418e90:
    cmp byte [eax],0x0 ; 00418E90 803800
    %if ($ - %%insn_00418e90) > 3
        %error "LONG_00418E90"
    %endif
    times 3 - ($ - %%insn_00418e90) db 0
    %%insn_00418e93:
    jnz short 0x418e9a ; 00418E93 7505
    %if ($ - %%insn_00418e93) > 2
        %error "LONG_00418E93"
    %endif
    times 2 - ($ - %%insn_00418e93) db 0
    db 0x2B, 0xC6 ; 00418E95 2BC6 | sub eax,esi | encoding preserved
    %%insn_00418e97:
    pop edi ; 00418E97 5F
    %if ($ - %%insn_00418e97) > 1
        %error "LONG_00418E97"
    %endif
    times 1 - ($ - %%insn_00418e97) db 0
    %%insn_00418e98:
    pop esi ; 00418E98 5E
    %if ($ - %%insn_00418e98) > 1
        %error "LONG_00418E98"
    %endif
    times 1 - ($ - %%insn_00418e98) db 0
    %%insn_00418e99:
    ret ; 00418E99 C3
    %if ($ - %%insn_00418e99) > 1
        %error "LONG_00418E99"
    %endif
    times 1 - ($ - %%insn_00418e99) db 0
    %%insn_00418e9a:
    pop edi ; 00418E9A 5F
    %if ($ - %%insn_00418e9a) > 1
        %error "LONG_00418E9A"
    %endif
    times 1 - ($ - %%insn_00418e9a) db 0
    %%insn_00418e9b:
    pop esi ; 00418E9B 5E
    %if ($ - %%insn_00418e9b) > 1
        %error "LONG_00418E9B"
    %endif
    times 1 - ($ - %%insn_00418e9b) db 0
    db 0x8B, 0xC2 ; 00418E9C 8BC2 | mov eax,edx | encoding preserved
    %%insn_00418e9e:
    ret ; 00418E9E C3
    %if ($ - %%insn_00418e9e) > 1
        %error "LONG_00418E9E"
    %endif
    times 1 - ($ - %%insn_00418e9e) db 0
    %if ($ - %%fragment_start) != 47
        %error "function fragment size drift: 00418E70"
    %endif
%endmacro
