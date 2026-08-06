; PE virtual entry 00416560
; Ghidra working symbol: FUN_00416560
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00416560_part_00 0
    %%fragment_start:
func_00416560:
    %%insn_00416560:
    push esi ; 00416560 56
    %if ($ - %%insn_00416560) > 1
        %error "LONG_00416560"
    %endif
    times 1 - ($ - %%insn_00416560) db 0
    %%insn_00416561:
    mov esi,[esp+0x10] ; 00416561 8B742410
    %if ($ - %%insn_00416561) > 4
        %error "LONG_00416561"
    %endif
    times 4 - ($ - %%insn_00416561) db 0
    %%insn_00416565:
    push edi ; 00416565 57
    %if ($ - %%insn_00416565) > 1
        %error "LONG_00416565"
    %endif
    times 1 - ($ - %%insn_00416565) db 0
    %%insn_00416566:
    cmp dword [esi],0x0 ; 00416566 833E00
    %if ($ - %%insn_00416566) > 3
        %error "LONG_00416566"
    %endif
    times 3 - ($ - %%insn_00416566) db 0
    %%insn_00416569:
    jz short 0x41658a ; 00416569 741F
    %if ($ - %%insn_00416569) > 2
        %error "LONG_00416569"
    %endif
    times 2 - ($ - %%insn_00416569) db 0
    %%insn_0041656b:
    mov eax,[esp+0x10] ; 0041656B 8B442410
    %if ($ - %%insn_0041656b) > 4
        %error "LONG_0041656B"
    %endif
    times 4 - ($ - %%insn_0041656b) db 0
    %%insn_0041656f:
    mov edx,[esp+0xc] ; 0041656F 8B54240C
    %if ($ - %%insn_0041656f) > 4
        %error "LONG_0041656F"
    %endif
    times 4 - ($ - %%insn_0041656f) db 0
    %%insn_00416573:
    mov cl,[edx] ; 00416573 8A0A
    %if ($ - %%insn_00416573) > 2
        %error "LONG_00416573"
    %endif
    times 2 - ($ - %%insn_00416573) db 0
    %%insn_00416575:
    test cl,cl ; 00416575 84C9
    %if ($ - %%insn_00416575) > 2
        %error "LONG_00416575"
    %endif
    times 2 - ($ - %%insn_00416575) db 0
    %%insn_00416577:
    jz short 0x41658a ; 00416577 7411
    %if ($ - %%insn_00416577) > 2
        %error "LONG_00416577"
    %endif
    times 2 - ($ - %%insn_00416577) db 0
    %%insn_00416579:
    mov edi,[eax] ; 00416579 8B38
    %if ($ - %%insn_00416579) > 2
        %error "LONG_00416579"
    %endif
    times 2 - ($ - %%insn_00416579) db 0
    %%insn_0041657b:
    mov [edi],cl ; 0041657B 880F
    %if ($ - %%insn_0041657b) > 2
        %error "LONG_0041657B"
    %endif
    times 2 - ($ - %%insn_0041657b) db 0
    %%insn_0041657d:
    mov ecx,[eax] ; 0041657D 8B08
    %if ($ - %%insn_0041657d) > 2
        %error "LONG_0041657D"
    %endif
    times 2 - ($ - %%insn_0041657d) db 0
    %%insn_0041657f:
    inc ecx ; 0041657F 41
    %if ($ - %%insn_0041657f) > 1
        %error "LONG_0041657F"
    %endif
    times 1 - ($ - %%insn_0041657f) db 0
    %%insn_00416580:
    inc edx ; 00416580 42
    %if ($ - %%insn_00416580) > 1
        %error "LONG_00416580"
    %endif
    times 1 - ($ - %%insn_00416580) db 0
    %%insn_00416581:
    mov [eax],ecx ; 00416581 8908
    %if ($ - %%insn_00416581) > 2
        %error "LONG_00416581"
    %endif
    times 2 - ($ - %%insn_00416581) db 0
    %%insn_00416583:
    mov ecx,[esi] ; 00416583 8B0E
    %if ($ - %%insn_00416583) > 2
        %error "LONG_00416583"
    %endif
    times 2 - ($ - %%insn_00416583) db 0
    %%insn_00416585:
    dec ecx ; 00416585 49
    %if ($ - %%insn_00416585) > 1
        %error "LONG_00416585"
    %endif
    times 1 - ($ - %%insn_00416585) db 0
    %%insn_00416586:
    mov [esi],ecx ; 00416586 890E
    %if ($ - %%insn_00416586) > 2
        %error "LONG_00416586"
    %endif
    times 2 - ($ - %%insn_00416586) db 0
    %%insn_00416588:
    jnz short 0x416573 ; 00416588 75E9
    %if ($ - %%insn_00416588) > 2
        %error "LONG_00416588"
    %endif
    times 2 - ($ - %%insn_00416588) db 0
    %%insn_0041658a:
    pop edi ; 0041658A 5F
    %if ($ - %%insn_0041658a) > 1
        %error "LONG_0041658A"
    %endif
    times 1 - ($ - %%insn_0041658a) db 0
    %%insn_0041658b:
    pop esi ; 0041658B 5E
    %if ($ - %%insn_0041658b) > 1
        %error "LONG_0041658B"
    %endif
    times 1 - ($ - %%insn_0041658b) db 0
    %%insn_0041658c:
    ret ; 0041658C C3
    %if ($ - %%insn_0041658c) > 1
        %error "LONG_0041658C"
    %endif
    times 1 - ($ - %%insn_0041658c) db 0
    %if ($ - %%fragment_start) != 45
        %error "function fragment size drift: 00416560"
    %endif
%endmacro
