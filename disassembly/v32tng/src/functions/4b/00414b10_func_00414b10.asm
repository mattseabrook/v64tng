; PE virtual entry 00414B10
; Ghidra working symbol: FUN_00414b10
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414b10_part_00 0
    %%fragment_start:
func_00414b10:
    %%insn_00414b10:
    mov edx,[esp+0x8] ; 00414B10 8B542408
    %if ($ - %%insn_00414b10) > 4
        %error "LONG_00414B10"
    %endif
    times 4 - ($ - %%insn_00414b10) db 0
    %%insn_00414b14:
    push esi ; 00414B14 56
    %if ($ - %%insn_00414b14) > 1
        %error "LONG_00414B14"
    %endif
    times 1 - ($ - %%insn_00414b14) db 0
    %%insn_00414b15:
    mov esi,[esp+0x8] ; 00414B15 8B742408
    %if ($ - %%insn_00414b15) > 4
        %error "LONG_00414B15"
    %endif
    times 4 - ($ - %%insn_00414b15) db 0
    %%insn_00414b19:
    push edi ; 00414B19 57
    %if ($ - %%insn_00414b19) > 1
        %error "LONG_00414B19"
    %endif
    times 1 - ($ - %%insn_00414b19) db 0
    %%insn_00414b1a:
    test edx,edx ; 00414B1A 85D2
    %if ($ - %%insn_00414b1a) > 2
        %error "LONG_00414B1A"
    %endif
    times 2 - ($ - %%insn_00414b1a) db 0
    db 0x8B, 0xC6 ; 00414B1C 8BC6 | mov eax,esi | encoding preserved
    %%insn_00414b1e:
    lea ecx,[edx-0x1] ; 00414B1E 8D4AFF
    %if ($ - %%insn_00414b1e) > 3
        %error "LONG_00414B1E"
    %endif
    times 3 - ($ - %%insn_00414b1e) db 0
    %%insn_00414b21:
    jz short 0x414b33 ; 00414B21 7410
    %if ($ - %%insn_00414b21) > 2
        %error "LONG_00414B21"
    %endif
    times 2 - ($ - %%insn_00414b21) db 0
    %%insn_00414b23:
    cmp word [eax],0x0 ; 00414B23 66833800
    %if ($ - %%insn_00414b23) > 4
        %error "LONG_00414B23"
    %endif
    times 4 - ($ - %%insn_00414b23) db 0
    %%insn_00414b27:
    jz short 0x414b39 ; 00414B27 7410
    %if ($ - %%insn_00414b27) > 2
        %error "LONG_00414B27"
    %endif
    times 2 - ($ - %%insn_00414b27) db 0
    %%insn_00414b29:
    add eax,0x2 ; 00414B29 83C002
    %if ($ - %%insn_00414b29) > 3
        %error "LONG_00414B29"
    %endif
    times 3 - ($ - %%insn_00414b29) db 0
    db 0x8B, 0xF9 ; 00414B2C 8BF9 | mov edi,ecx | encoding preserved
    %%insn_00414b2e:
    dec ecx ; 00414B2E 49
    %if ($ - %%insn_00414b2e) > 1
        %error "LONG_00414B2E"
    %endif
    times 1 - ($ - %%insn_00414b2e) db 0
    %%insn_00414b2f:
    test edi,edi ; 00414B2F 85FF
    %if ($ - %%insn_00414b2f) > 2
        %error "LONG_00414B2F"
    %endif
    times 2 - ($ - %%insn_00414b2f) db 0
    %%insn_00414b31:
    jnz short 0x414b23 ; 00414B31 75F0
    %if ($ - %%insn_00414b31) > 2
        %error "LONG_00414B31"
    %endif
    times 2 - ($ - %%insn_00414b31) db 0
    %%insn_00414b33:
    cmp word [eax],0x0 ; 00414B33 66833800
    %if ($ - %%insn_00414b33) > 4
        %error "LONG_00414B33"
    %endif
    times 4 - ($ - %%insn_00414b33) db 0
    %%insn_00414b37:
    jnz short 0x414b40 ; 00414B37 7507
    %if ($ - %%insn_00414b37) > 2
        %error "LONG_00414B37"
    %endif
    times 2 - ($ - %%insn_00414b37) db 0
    db 0x2B, 0xC6 ; 00414B39 2BC6 | sub eax,esi | encoding preserved
    %%insn_00414b3b:
    sar eax,1 ; 00414B3B D1F8
    %if ($ - %%insn_00414b3b) > 2
        %error "LONG_00414B3B"
    %endif
    times 2 - ($ - %%insn_00414b3b) db 0
    %%insn_00414b3d:
    pop edi ; 00414B3D 5F
    %if ($ - %%insn_00414b3d) > 1
        %error "LONG_00414B3D"
    %endif
    times 1 - ($ - %%insn_00414b3d) db 0
    %%insn_00414b3e:
    pop esi ; 00414B3E 5E
    %if ($ - %%insn_00414b3e) > 1
        %error "LONG_00414B3E"
    %endif
    times 1 - ($ - %%insn_00414b3e) db 0
    %%insn_00414b3f:
    ret ; 00414B3F C3
    %if ($ - %%insn_00414b3f) > 1
        %error "LONG_00414B3F"
    %endif
    times 1 - ($ - %%insn_00414b3f) db 0
    %%insn_00414b40:
    pop edi ; 00414B40 5F
    %if ($ - %%insn_00414b40) > 1
        %error "LONG_00414B40"
    %endif
    times 1 - ($ - %%insn_00414b40) db 0
    db 0x8B, 0xC2 ; 00414B41 8BC2 | mov eax,edx | encoding preserved
    %%insn_00414b43:
    pop esi ; 00414B43 5E
    %if ($ - %%insn_00414b43) > 1
        %error "LONG_00414B43"
    %endif
    times 1 - ($ - %%insn_00414b43) db 0
    %%insn_00414b44:
    ret ; 00414B44 C3
    %if ($ - %%insn_00414b44) > 1
        %error "LONG_00414B44"
    %endif
    times 1 - ($ - %%insn_00414b44) db 0
    %if ($ - %%fragment_start) != 53
        %error "function fragment size drift: 00414B10"
    %endif
%endmacro
