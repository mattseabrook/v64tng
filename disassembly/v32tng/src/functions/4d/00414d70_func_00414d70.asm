; PE virtual entry 00414D70
; Ghidra working symbol: FUN_00414d70
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414d70_part_00 0
    %%fragment_start:
func_00414d70:
    %%insn_00414d70:
    mov edx,[esp+0x8] ; 00414D70 8B542408
    %if ($ - %%insn_00414d70) > 4
        %error "LONG_00414D70"
    %endif
    times 4 - ($ - %%insn_00414d70) db 0
    %%insn_00414d74:
    push esi ; 00414D74 56
    %if ($ - %%insn_00414d74) > 1
        %error "LONG_00414D74"
    %endif
    times 1 - ($ - %%insn_00414d74) db 0
    %%insn_00414d75:
    mov esi,[esp+0x8] ; 00414D75 8B742408
    %if ($ - %%insn_00414d75) > 4
        %error "LONG_00414D75"
    %endif
    times 4 - ($ - %%insn_00414d75) db 0
    %%insn_00414d79:
    test edx,edx ; 00414D79 85D2
    %if ($ - %%insn_00414d79) > 2
        %error "LONG_00414D79"
    %endif
    times 2 - ($ - %%insn_00414d79) db 0
    %%insn_00414d7b:
    push edi ; 00414D7B 57
    %if ($ - %%insn_00414d7b) > 1
        %error "LONG_00414D7B"
    %endif
    times 1 - ($ - %%insn_00414d7b) db 0
    db 0x8B, 0xC6 ; 00414D7C 8BC6 | mov eax,esi | encoding preserved
    %%insn_00414d7e:
    lea ecx,[edx-0x1] ; 00414D7E 8D4AFF
    %if ($ - %%insn_00414d7e) > 3
        %error "LONG_00414D7E"
    %endif
    times 3 - ($ - %%insn_00414d7e) db 0
    %%insn_00414d81:
    jz short 0x414d90 ; 00414D81 740D
    %if ($ - %%insn_00414d81) > 2
        %error "LONG_00414D81"
    %endif
    times 2 - ($ - %%insn_00414d81) db 0
    %%insn_00414d83:
    cmp byte [eax],0x0 ; 00414D83 803800
    %if ($ - %%insn_00414d83) > 3
        %error "LONG_00414D83"
    %endif
    times 3 - ($ - %%insn_00414d83) db 0
    %%insn_00414d86:
    jz short 0x414d90 ; 00414D86 7408
    %if ($ - %%insn_00414d86) > 2
        %error "LONG_00414D86"
    %endif
    times 2 - ($ - %%insn_00414d86) db 0
    %%insn_00414d88:
    inc eax ; 00414D88 40
    %if ($ - %%insn_00414d88) > 1
        %error "LONG_00414D88"
    %endif
    times 1 - ($ - %%insn_00414d88) db 0
    db 0x8B, 0xF9 ; 00414D89 8BF9 | mov edi,ecx | encoding preserved
    %%insn_00414d8b:
    dec ecx ; 00414D8B 49
    %if ($ - %%insn_00414d8b) > 1
        %error "LONG_00414D8B"
    %endif
    times 1 - ($ - %%insn_00414d8b) db 0
    %%insn_00414d8c:
    test edi,edi ; 00414D8C 85FF
    %if ($ - %%insn_00414d8c) > 2
        %error "LONG_00414D8C"
    %endif
    times 2 - ($ - %%insn_00414d8c) db 0
    %%insn_00414d8e:
    jnz short 0x414d83 ; 00414D8E 75F3
    %if ($ - %%insn_00414d8e) > 2
        %error "LONG_00414D8E"
    %endif
    times 2 - ($ - %%insn_00414d8e) db 0
    %%insn_00414d90:
    cmp byte [eax],0x0 ; 00414D90 803800
    %if ($ - %%insn_00414d90) > 3
        %error "LONG_00414D90"
    %endif
    times 3 - ($ - %%insn_00414d90) db 0
    %%insn_00414d93:
    jnz short 0x414d9a ; 00414D93 7505
    %if ($ - %%insn_00414d93) > 2
        %error "LONG_00414D93"
    %endif
    times 2 - ($ - %%insn_00414d93) db 0
    db 0x2B, 0xC6 ; 00414D95 2BC6 | sub eax,esi | encoding preserved
    %%insn_00414d97:
    pop edi ; 00414D97 5F
    %if ($ - %%insn_00414d97) > 1
        %error "LONG_00414D97"
    %endif
    times 1 - ($ - %%insn_00414d97) db 0
    %%insn_00414d98:
    pop esi ; 00414D98 5E
    %if ($ - %%insn_00414d98) > 1
        %error "LONG_00414D98"
    %endif
    times 1 - ($ - %%insn_00414d98) db 0
    %%insn_00414d99:
    ret ; 00414D99 C3
    %if ($ - %%insn_00414d99) > 1
        %error "LONG_00414D99"
    %endif
    times 1 - ($ - %%insn_00414d99) db 0
    %%insn_00414d9a:
    pop edi ; 00414D9A 5F
    %if ($ - %%insn_00414d9a) > 1
        %error "LONG_00414D9A"
    %endif
    times 1 - ($ - %%insn_00414d9a) db 0
    %%insn_00414d9b:
    pop esi ; 00414D9B 5E
    %if ($ - %%insn_00414d9b) > 1
        %error "LONG_00414D9B"
    %endif
    times 1 - ($ - %%insn_00414d9b) db 0
    db 0x8B, 0xC2 ; 00414D9C 8BC2 | mov eax,edx | encoding preserved
    %%insn_00414d9e:
    ret ; 00414D9E C3
    %if ($ - %%insn_00414d9e) > 1
        %error "LONG_00414D9E"
    %endif
    times 1 - ($ - %%insn_00414d9e) db 0
    %if ($ - %%fragment_start) != 47
        %error "function fragment size drift: 00414D70"
    %endif
%endmacro
