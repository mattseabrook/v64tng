; PE virtual entry 0040F5A0
; Ghidra working symbol: FUN_0040f5a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f5a0_part_00 0
    %%fragment_start:
func_0040f5a0:
    %%insn_0040f5a0:
    push ebx ; 0040F5A0 53
    %if ($ - %%insn_0040f5a0) > 1
        %error "LONG_0040F5A0"
    %endif
    times 1 - ($ - %%insn_0040f5a0) db 0
    %%insn_0040f5a1:
    push ebp ; 0040F5A1 55
    %if ($ - %%insn_0040f5a1) > 1
        %error "LONG_0040F5A1"
    %endif
    times 1 - ($ - %%insn_0040f5a1) db 0
    %%insn_0040f5a2:
    mov ebp,[esp+0x10] ; 0040F5A2 8B6C2410
    %if ($ - %%insn_0040f5a2) > 4
        %error "LONG_0040F5A2"
    %endif
    times 4 - ($ - %%insn_0040f5a2) db 0
    %%insn_0040f5a6:
    push esi ; 0040F5A6 56
    %if ($ - %%insn_0040f5a6) > 1
        %error "LONG_0040F5A6"
    %endif
    times 1 - ($ - %%insn_0040f5a6) db 0
    db 0x8B, 0xC5 ; 0040F5A7 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0040f5a9:
    dec ebp ; 0040F5A9 4D
    %if ($ - %%insn_0040f5a9) > 1
        %error "LONG_0040F5A9"
    %endif
    times 1 - ($ - %%insn_0040f5a9) db 0
    %%insn_0040f5aa:
    test eax,eax ; 0040F5AA 85C0
    %if ($ - %%insn_0040f5aa) > 2
        %error "LONG_0040F5AA"
    %endif
    times 2 - ($ - %%insn_0040f5aa) db 0
    %%insn_0040f5ac:
    push edi ; 0040F5AC 57
    %if ($ - %%insn_0040f5ac) > 1
        %error "LONG_0040F5AC"
    %endif
    times 1 - ($ - %%insn_0040f5ac) db 0
    %%insn_0040f5ad:
    jng short 0x40f5d4 ; 0040F5AD 7E25
    %if ($ - %%insn_0040f5ad) > 2
        %error "LONG_0040F5AD"
    %endif
    times 2 - ($ - %%insn_0040f5ad) db 0
    %%insn_0040f5af:
    mov esi,[esp+0x20] ; 0040F5AF 8B742420
    %if ($ - %%insn_0040f5af) > 4
        %error "LONG_0040F5AF"
    %endif
    times 4 - ($ - %%insn_0040f5af) db 0
    %%insn_0040f5b3:
    mov edi,[esp+0x1c] ; 0040F5B3 8B7C241C
    %if ($ - %%insn_0040f5b3) > 4
        %error "LONG_0040F5B3"
    %endif
    times 4 - ($ - %%insn_0040f5b3) db 0
    %%insn_0040f5b7:
    mov ebx,[esp+0x14] ; 0040F5B7 8B5C2414
    %if ($ - %%insn_0040f5b7) > 4
        %error "LONG_0040F5B7"
    %endif
    times 4 - ($ - %%insn_0040f5b7) db 0
    %%insn_0040f5bb:
    push esi ; 0040F5BB 56
    %if ($ - %%insn_0040f5bb) > 1
        %error "LONG_0040F5BB"
    %endif
    times 1 - ($ - %%insn_0040f5bb) db 0
    %%insn_0040f5bc:
    push edi ; 0040F5BC 57
    %if ($ - %%insn_0040f5bc) > 1
        %error "LONG_0040F5BC"
    %endif
    times 1 - ($ - %%insn_0040f5bc) db 0
    %%insn_0040f5bd:
    push ebx ; 0040F5BD 53
    %if ($ - %%insn_0040f5bd) > 1
        %error "LONG_0040F5BD"
    %endif
    times 1 - ($ - %%insn_0040f5bd) db 0
    %%insn_0040f5be:
    call 0x40f550 ; 0040F5BE E88DFFFFFF
    %if ($ - %%insn_0040f5be) > 5
        %error "LONG_0040F5BE"
    %endif
    times 5 - ($ - %%insn_0040f5be) db 0
    %%insn_0040f5c3:
    mov eax,[esi] ; 0040F5C3 8B06
    %if ($ - %%insn_0040f5c3) > 2
        %error "LONG_0040F5C3"
    %endif
    times 2 - ($ - %%insn_0040f5c3) db 0
    %%insn_0040f5c5:
    add esp,0xc ; 0040F5C5 83C40C
    %if ($ - %%insn_0040f5c5) > 3
        %error "LONG_0040F5C5"
    %endif
    times 3 - ($ - %%insn_0040f5c5) db 0
    %%insn_0040f5c8:
    cmp eax,0xffffffffffffffff ; 0040F5C8 83F8FF
    %if ($ - %%insn_0040f5c8) > 3
        %error "LONG_0040F5C8"
    %endif
    times 3 - ($ - %%insn_0040f5c8) db 0
    %%insn_0040f5cb:
    jz short 0x40f5d4 ; 0040F5CB 7407
    %if ($ - %%insn_0040f5cb) > 2
        %error "LONG_0040F5CB"
    %endif
    times 2 - ($ - %%insn_0040f5cb) db 0
    db 0x8B, 0xCD ; 0040F5CD 8BCD | mov ecx,ebp | encoding preserved
    %%insn_0040f5cf:
    dec ebp ; 0040F5CF 4D
    %if ($ - %%insn_0040f5cf) > 1
        %error "LONG_0040F5CF"
    %endif
    times 1 - ($ - %%insn_0040f5cf) db 0
    %%insn_0040f5d0:
    test ecx,ecx ; 0040F5D0 85C9
    %if ($ - %%insn_0040f5d0) > 2
        %error "LONG_0040F5D0"
    %endif
    times 2 - ($ - %%insn_0040f5d0) db 0
    %%insn_0040f5d2:
    jg short 0x40f5bb ; 0040F5D2 7FE7
    %if ($ - %%insn_0040f5d2) > 2
        %error "LONG_0040F5D2"
    %endif
    times 2 - ($ - %%insn_0040f5d2) db 0
    %%insn_0040f5d4:
    pop edi ; 0040F5D4 5F
    %if ($ - %%insn_0040f5d4) > 1
        %error "LONG_0040F5D4"
    %endif
    times 1 - ($ - %%insn_0040f5d4) db 0
    %%insn_0040f5d5:
    pop esi ; 0040F5D5 5E
    %if ($ - %%insn_0040f5d5) > 1
        %error "LONG_0040F5D5"
    %endif
    times 1 - ($ - %%insn_0040f5d5) db 0
    %%insn_0040f5d6:
    pop ebp ; 0040F5D6 5D
    %if ($ - %%insn_0040f5d6) > 1
        %error "LONG_0040F5D6"
    %endif
    times 1 - ($ - %%insn_0040f5d6) db 0
    %%insn_0040f5d7:
    pop ebx ; 0040F5D7 5B
    %if ($ - %%insn_0040f5d7) > 1
        %error "LONG_0040F5D7"
    %endif
    times 1 - ($ - %%insn_0040f5d7) db 0
    %%insn_0040f5d8:
    ret ; 0040F5D8 C3
    %if ($ - %%insn_0040f5d8) > 1
        %error "LONG_0040F5D8"
    %endif
    times 1 - ($ - %%insn_0040f5d8) db 0
    %if ($ - %%fragment_start) != 57
        %error "function fragment size drift: 0040F5A0"
    %endif
%endmacro
