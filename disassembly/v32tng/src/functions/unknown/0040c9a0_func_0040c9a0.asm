; PE virtual entry 0040C9A0
; Ghidra working symbol: FUN_0040c9a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c9a0_part_00 0
    %%fragment_start:
func_0040c9a0:
    %%insn_0040c9a0:
    push ecx ; 0040C9A0 51
    %if ($ - %%insn_0040c9a0) > 1
        %error "LONG_0040C9A0"
    %endif
    times 1 - ($ - %%insn_0040c9a0) db 0
    %%insn_0040c9a1:
    push esi ; 0040C9A1 56
    %if ($ - %%insn_0040c9a1) > 1
        %error "LONG_0040C9A1"
    %endif
    times 1 - ($ - %%insn_0040c9a1) db 0
    %%insn_0040c9a2:
    mov esi,[esp+0xc] ; 0040C9A2 8B74240C
    %if ($ - %%insn_0040c9a2) > 4
        %error "LONG_0040C9A2"
    %endif
    times 4 - ($ - %%insn_0040c9a2) db 0
    %%insn_0040c9a6:
    test esi,esi ; 0040C9A6 85F6
    %if ($ - %%insn_0040c9a6) > 2
        %error "LONG_0040C9A6"
    %endif
    times 2 - ($ - %%insn_0040c9a6) db 0
    %%insn_0040c9a8:
    jz short 0x40ca05 ; 0040C9A8 745B
    %if ($ - %%insn_0040c9a8) > 2
        %error "LONG_0040C9A8"
    %endif
    times 2 - ($ - %%insn_0040c9a8) db 0
    %%insn_0040c9aa:
    push dword 0x9 ; 0040C9AA 6A09
    %if ($ - %%insn_0040c9aa) > 2
        %error "LONG_0040C9AA"
    %endif
    times 2 - ($ - %%insn_0040c9aa) db 0
    %%insn_0040c9ac:
    call 0x40df00 ; 0040C9AC E84F150000
    %if ($ - %%insn_0040c9ac) > 5
        %error "LONG_0040C9AC"
    %endif
    times 5 - ($ - %%insn_0040c9ac) db 0
    %%insn_0040c9b1:
    add esp,0x4 ; 0040C9B1 83C404
    %if ($ - %%insn_0040c9b1) > 3
        %error "LONG_0040C9B1"
    %endif
    times 3 - ($ - %%insn_0040c9b1) db 0
    %%insn_0040c9b4:
    lea eax,[esp+0xc] ; 0040C9B4 8D44240C
    %if ($ - %%insn_0040c9b4) > 4
        %error "LONG_0040C9B4"
    %endif
    times 4 - ($ - %%insn_0040c9b4) db 0
    %%insn_0040c9b8:
    lea ecx,[esp+0x4] ; 0040C9B8 8D4C2404
    %if ($ - %%insn_0040c9b8) > 4
        %error "LONG_0040C9B8"
    %endif
    times 4 - ($ - %%insn_0040c9b8) db 0
    %%insn_0040c9bc:
    push eax ; 0040C9BC 50
    %if ($ - %%insn_0040c9bc) > 1
        %error "LONG_0040C9BC"
    %endif
    times 1 - ($ - %%insn_0040c9bc) db 0
    %%insn_0040c9bd:
    push ecx ; 0040C9BD 51
    %if ($ - %%insn_0040c9bd) > 1
        %error "LONG_0040C9BD"
    %endif
    times 1 - ($ - %%insn_0040c9bd) db 0
    %%insn_0040c9be:
    push esi ; 0040C9BE 56
    %if ($ - %%insn_0040c9be) > 1
        %error "LONG_0040C9BE"
    %endif
    times 1 - ($ - %%insn_0040c9be) db 0
    %%insn_0040c9bf:
    call 0x40e370 ; 0040C9BF E8AC190000
    %if ($ - %%insn_0040c9bf) > 5
        %error "LONG_0040C9BF"
    %endif
    times 5 - ($ - %%insn_0040c9bf) db 0
    %%insn_0040c9c4:
    add esp,0xc ; 0040C9C4 83C40C
    %if ($ - %%insn_0040c9c4) > 3
        %error "LONG_0040C9C4"
    %endif
    times 3 - ($ - %%insn_0040c9c4) db 0
    %%insn_0040c9c7:
    test eax,eax ; 0040C9C7 85C0
    %if ($ - %%insn_0040c9c7) > 2
        %error "LONG_0040C9C7"
    %endif
    times 2 - ($ - %%insn_0040c9c7) db 0
    %%insn_0040c9c9:
    jz short 0x40c9eb ; 0040C9C9 7420
    %if ($ - %%insn_0040c9c9) > 2
        %error "LONG_0040C9C9"
    %endif
    times 2 - ($ - %%insn_0040c9c9) db 0
    %%insn_0040c9cb:
    mov edx,[esp+0xc] ; 0040C9CB 8B54240C
    %if ($ - %%insn_0040c9cb) > 4
        %error "LONG_0040C9CB"
    %endif
    times 4 - ($ - %%insn_0040c9cb) db 0
    %%insn_0040c9cf:
    push eax ; 0040C9CF 50
    %if ($ - %%insn_0040c9cf) > 1
        %error "LONG_0040C9CF"
    %endif
    times 1 - ($ - %%insn_0040c9cf) db 0
    %%insn_0040c9d0:
    mov eax,[esp+0x8] ; 0040C9D0 8B442408
    %if ($ - %%insn_0040c9d0) > 4
        %error "LONG_0040C9D0"
    %endif
    times 4 - ($ - %%insn_0040c9d0) db 0
    %%insn_0040c9d4:
    push edx ; 0040C9D4 52
    %if ($ - %%insn_0040c9d4) > 1
        %error "LONG_0040C9D4"
    %endif
    times 1 - ($ - %%insn_0040c9d4) db 0
    %%insn_0040c9d5:
    push eax ; 0040C9D5 50
    %if ($ - %%insn_0040c9d5) > 1
        %error "LONG_0040C9D5"
    %endif
    times 1 - ($ - %%insn_0040c9d5) db 0
    %%insn_0040c9d6:
    call 0x40e3d0 ; 0040C9D6 E8F5190000
    %if ($ - %%insn_0040c9d6) > 5
        %error "LONG_0040C9D6"
    %endif
    times 5 - ($ - %%insn_0040c9d6) db 0
    %%insn_0040c9db:
    add esp,0xc ; 0040C9DB 83C40C
    %if ($ - %%insn_0040c9db) > 3
        %error "LONG_0040C9DB"
    %endif
    times 3 - ($ - %%insn_0040c9db) db 0
    %%insn_0040c9de:
    push dword 0x9 ; 0040C9DE 6A09
    %if ($ - %%insn_0040c9de) > 2
        %error "LONG_0040C9DE"
    %endif
    times 2 - ($ - %%insn_0040c9de) db 0
    %%insn_0040c9e0:
    call 0x40df80 ; 0040C9E0 E89B150000
    %if ($ - %%insn_0040c9e0) > 5
        %error "LONG_0040C9E0"
    %endif
    times 5 - ($ - %%insn_0040c9e0) db 0
    %%insn_0040c9e5:
    add esp,0x4 ; 0040C9E5 83C404
    %if ($ - %%insn_0040c9e5) > 3
        %error "LONG_0040C9E5"
    %endif
    times 3 - ($ - %%insn_0040c9e5) db 0
    %%insn_0040c9e8:
    pop esi ; 0040C9E8 5E
    %if ($ - %%insn_0040c9e8) > 1
        %error "LONG_0040C9E8"
    %endif
    times 1 - ($ - %%insn_0040c9e8) db 0
    %%insn_0040c9e9:
    pop ecx ; 0040C9E9 59
    %if ($ - %%insn_0040c9e9) > 1
        %error "LONG_0040C9E9"
    %endif
    times 1 - ($ - %%insn_0040c9e9) db 0
    %%insn_0040c9ea:
    ret ; 0040C9EA C3
    %if ($ - %%insn_0040c9ea) > 1
        %error "LONG_0040C9EA"
    %endif
    times 1 - ($ - %%insn_0040c9ea) db 0
    %%insn_0040c9eb:
    push dword 0x9 ; 0040C9EB 6A09
    %if ($ - %%insn_0040c9eb) > 2
        %error "LONG_0040C9EB"
    %endif
    times 2 - ($ - %%insn_0040c9eb) db 0
    %%insn_0040c9ed:
    call 0x40df80 ; 0040C9ED E88E150000
    %if ($ - %%insn_0040c9ed) > 5
        %error "LONG_0040C9ED"
    %endif
    times 5 - ($ - %%insn_0040c9ed) db 0
    %%insn_0040c9f2:
    mov ecx,[0x42358c] ; 0040C9F2 8B0D8C354200
    %if ($ - %%insn_0040c9f2) > 6
        %error "LONG_0040C9F2"
    %endif
    times 6 - ($ - %%insn_0040c9f2) db 0
    %%insn_0040c9f8:
    add esp,0x4 ; 0040C9F8 83C404
    %if ($ - %%insn_0040c9f8) > 3
        %error "LONG_0040C9F8"
    %endif
    times 3 - ($ - %%insn_0040c9f8) db 0
    %%insn_0040c9fb:
    push esi ; 0040C9FB 56
    %if ($ - %%insn_0040c9fb) > 1
        %error "LONG_0040C9FB"
    %endif
    times 1 - ($ - %%insn_0040c9fb) db 0
    %%insn_0040c9fc:
    push dword 0x0 ; 0040C9FC 6A00
    %if ($ - %%insn_0040c9fc) > 2
        %error "LONG_0040C9FC"
    %endif
    times 2 - ($ - %%insn_0040c9fc) db 0
    %%insn_0040c9fe:
    push ecx ; 0040C9FE 51
    %if ($ - %%insn_0040c9fe) > 1
        %error "LONG_0040C9FE"
    %endif
    times 1 - ($ - %%insn_0040c9fe) db 0
    %%insn_0040c9ff:
    call dword near [0x424444] ; 0040C9FF FF1544444200
    %if ($ - %%insn_0040c9ff) > 6
        %error "LONG_0040C9FF"
    %endif
    times 6 - ($ - %%insn_0040c9ff) db 0
    %%insn_0040ca05:
    pop esi ; 0040CA05 5E
    %if ($ - %%insn_0040ca05) > 1
        %error "LONG_0040CA05"
    %endif
    times 1 - ($ - %%insn_0040ca05) db 0
    %%insn_0040ca06:
    pop ecx ; 0040CA06 59
    %if ($ - %%insn_0040ca06) > 1
        %error "LONG_0040CA06"
    %endif
    times 1 - ($ - %%insn_0040ca06) db 0
    %%insn_0040ca07:
    ret ; 0040CA07 C3
    %if ($ - %%insn_0040ca07) > 1
        %error "LONG_0040CA07"
    %endif
    times 1 - ($ - %%insn_0040ca07) db 0
    %if ($ - %%fragment_start) != 104
        %error "function fragment size drift: 0040C9A0"
    %endif
%endmacro
