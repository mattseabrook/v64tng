; PE virtual entry 00412D40
; Ghidra working symbol: FUN_00412d40
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412d40_part_00 0
    %%fragment_start:
func_00412d40:
    %%insn_00412d40:
    mov eax,[esp+0x4] ; 00412D40 8B442404
    %if ($ - %%insn_00412d40) > 4
        %error "LONG_00412D40"
    %endif
    times 4 - ($ - %%insn_00412d40) db 0
    %%insn_00412d44:
    test eax,eax ; 00412D44 85C0
    %if ($ - %%insn_00412d44) > 2
        %error "LONG_00412D44"
    %endif
    times 2 - ($ - %%insn_00412d44) db 0
    %%insn_00412d46:
    jnz short 0x412d49 ; 00412D46 7501
    %if ($ - %%insn_00412d46) > 2
        %error "LONG_00412D46"
    %endif
    times 2 - ($ - %%insn_00412d46) db 0
    %%insn_00412d48:
    ret ; 00412D48 C3
    %if ($ - %%insn_00412d48) > 1
        %error "LONG_00412D48"
    %endif
    times 1 - ($ - %%insn_00412d48) db 0
    %%insn_00412d49:
    mov ecx,[0x420f20] ; 00412D49 8B0D200F4200
    %if ($ - %%insn_00412d49) > 6
        %error "LONG_00412D49"
    %endif
    times 6 - ($ - %%insn_00412d49) db 0
    %%insn_00412d4f:
    test ecx,ecx ; 00412D4F 85C9
    %if ($ - %%insn_00412d4f) > 2
        %error "LONG_00412D4F"
    %endif
    times 2 - ($ - %%insn_00412d4f) db 0
    %%insn_00412d51:
    jnz short 0x412d67 ; 00412D51 7514
    %if ($ - %%insn_00412d51) > 2
        %error "LONG_00412D51"
    %endif
    times 2 - ($ - %%insn_00412d51) db 0
    %%insn_00412d53:
    mov cx,[esp+0x8] ; 00412D53 668B4C2408
    %if ($ - %%insn_00412d53) > 5
        %error "LONG_00412D53"
    %endif
    times 5 - ($ - %%insn_00412d53) db 0
    %%insn_00412d58:
    cmp cx,0xff ; 00412D58 6681F9FF00
    %if ($ - %%insn_00412d58) > 5
        %error "LONG_00412D58"
    %endif
    times 5 - ($ - %%insn_00412d58) db 0
    %%insn_00412d5d:
    ja short 0x412da3 ; 00412D5D 7744
    %if ($ - %%insn_00412d5d) > 2
        %error "LONG_00412D5D"
    %endif
    times 2 - ($ - %%insn_00412d5d) db 0
    %%insn_00412d5f:
    mov [eax],cl ; 00412D5F 8808
    %if ($ - %%insn_00412d5f) > 2
        %error "LONG_00412D5F"
    %endif
    times 2 - ($ - %%insn_00412d5f) db 0
    %%insn_00412d61:
    mov eax,0x1 ; 00412D61 B801000000
    %if ($ - %%insn_00412d61) > 5
        %error "LONG_00412D61"
    %endif
    times 5 - ($ - %%insn_00412d61) db 0
    %%insn_00412d66:
    ret ; 00412D66 C3
    %if ($ - %%insn_00412d66) > 1
        %error "LONG_00412D66"
    %endif
    times 1 - ($ - %%insn_00412d66) db 0
    %%insn_00412d67:
    mov edx,[0x41f044] ; 00412D67 8B1544F04100
    %if ($ - %%insn_00412d67) > 6
        %error "LONG_00412D67"
    %endif
    times 6 - ($ - %%insn_00412d67) db 0
    %%insn_00412d6d:
    lea ecx,[esp+0x4] ; 00412D6D 8D4C2404
    %if ($ - %%insn_00412d6d) > 4
        %error "LONG_00412D6D"
    %endif
    times 4 - ($ - %%insn_00412d6d) db 0
    %%insn_00412d71:
    push ecx ; 00412D71 51
    %if ($ - %%insn_00412d71) > 1
        %error "LONG_00412D71"
    %endif
    times 1 - ($ - %%insn_00412d71) db 0
    %%insn_00412d72:
    mov ecx,[0x420f30] ; 00412D72 8B0D300F4200
    %if ($ - %%insn_00412d72) > 6
        %error "LONG_00412D72"
    %endif
    times 6 - ($ - %%insn_00412d72) db 0
    %%insn_00412d78:
    push dword 0x0 ; 00412D78 6A00
    %if ($ - %%insn_00412d78) > 2
        %error "LONG_00412D78"
    %endif
    times 2 - ($ - %%insn_00412d78) db 0
    %%insn_00412d7a:
    push edx ; 00412D7A 52
    %if ($ - %%insn_00412d7a) > 1
        %error "LONG_00412D7A"
    %endif
    times 1 - ($ - %%insn_00412d7a) db 0
    %%insn_00412d7b:
    push eax ; 00412D7B 50
    %if ($ - %%insn_00412d7b) > 1
        %error "LONG_00412D7B"
    %endif
    times 1 - ($ - %%insn_00412d7b) db 0
    %%insn_00412d7c:
    lea eax,[esp+0x18] ; 00412D7C 8D442418
    %if ($ - %%insn_00412d7c) > 4
        %error "LONG_00412D7C"
    %endif
    times 4 - ($ - %%insn_00412d7c) db 0
    %%insn_00412d80:
    push dword 0x1 ; 00412D80 6A01
    %if ($ - %%insn_00412d80) > 2
        %error "LONG_00412D80"
    %endif
    times 2 - ($ - %%insn_00412d80) db 0
    %%insn_00412d82:
    push eax ; 00412D82 50
    %if ($ - %%insn_00412d82) > 1
        %error "LONG_00412D82"
    %endif
    times 1 - ($ - %%insn_00412d82) db 0
    %%insn_00412d83:
    push dword 0x220 ; 00412D83 6820020000
    %if ($ - %%insn_00412d83) > 5
        %error "LONG_00412D83"
    %endif
    times 5 - ($ - %%insn_00412d83) db 0
    %%insn_00412d88:
    push ecx ; 00412D88 51
    %if ($ - %%insn_00412d88) > 1
        %error "LONG_00412D88"
    %endif
    times 1 - ($ - %%insn_00412d88) db 0
    %%insn_00412d89:
    mov dword [esp+0x24],0x0 ; 00412D89 C744242400000000
    %if ($ - %%insn_00412d89) > 8
        %error "LONG_00412D89"
    %endif
    times 8 - ($ - %%insn_00412d89) db 0
    %%insn_00412d91:
    call dword near [0x4244d0] ; 00412D91 FF15D0444200
    %if ($ - %%insn_00412d91) > 6
        %error "LONG_00412D91"
    %endif
    times 6 - ($ - %%insn_00412d91) db 0
    %%insn_00412d97:
    test eax,eax ; 00412D97 85C0
    %if ($ - %%insn_00412d97) > 2
        %error "LONG_00412D97"
    %endif
    times 2 - ($ - %%insn_00412d97) db 0
    %%insn_00412d99:
    jz short 0x412da3 ; 00412D99 7408
    %if ($ - %%insn_00412d99) > 2
        %error "LONG_00412D99"
    %endif
    times 2 - ($ - %%insn_00412d99) db 0
    %%insn_00412d9b:
    mov ecx,[esp+0x4] ; 00412D9B 8B4C2404
    %if ($ - %%insn_00412d9b) > 4
        %error "LONG_00412D9B"
    %endif
    times 4 - ($ - %%insn_00412d9b) db 0
    %%insn_00412d9f:
    test ecx,ecx ; 00412D9F 85C9
    %if ($ - %%insn_00412d9f) > 2
        %error "LONG_00412D9F"
    %endif
    times 2 - ($ - %%insn_00412d9f) db 0
    %%insn_00412da1:
    jz short 0x412db1 ; 00412DA1 740E
    %if ($ - %%insn_00412da1) > 2
        %error "LONG_00412DA1"
    %endif
    times 2 - ($ - %%insn_00412da1) db 0
    %%insn_00412da3:
    call 0x410e10 ; 00412DA3 E868E0FFFF
    %if ($ - %%insn_00412da3) > 5
        %error "LONG_00412DA3"
    %endif
    times 5 - ($ - %%insn_00412da3) db 0
    %%insn_00412da8:
    mov dword [eax],0x2a ; 00412DA8 C7002A000000
    %if ($ - %%insn_00412da8) > 6
        %error "LONG_00412DA8"
    %endif
    times 6 - ($ - %%insn_00412da8) db 0
    %%insn_00412dae:
    or eax,0xffffffffffffffff ; 00412DAE 83C8FF
    %if ($ - %%insn_00412dae) > 3
        %error "LONG_00412DAE"
    %endif
    times 3 - ($ - %%insn_00412dae) db 0
    %%insn_00412db1:
    ret ; 00412DB1 C3
    %if ($ - %%insn_00412db1) > 1
        %error "LONG_00412DB1"
    %endif
    times 1 - ($ - %%insn_00412db1) db 0
    %if ($ - %%fragment_start) != 114
        %error "function fragment size drift: 00412D40"
    %endif
%endmacro
