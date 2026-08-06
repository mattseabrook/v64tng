; PE virtual entry 00412C40
; Ghidra working symbol: FUN_00412c40
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412c40_part_00 0
    %%fragment_start:
func_00412c40:
    %%insn_00412c40:
    mov eax,[0x421174] ; 00412C40 A174114200
    %if ($ - %%insn_00412c40) > 5
        %error "LONG_00412C40"
    %endif
    times 5 - ($ - %%insn_00412c40) db 0
    %%insn_00412c45:
    push dword 0x1000 ; 00412C45 6800100000
    %if ($ - %%insn_00412c45) > 5
        %error "LONG_00412C45"
    %endif
    times 5 - ($ - %%insn_00412c45) db 0
    %%insn_00412c4a:
    inc eax ; 00412C4A 40
    %if ($ - %%insn_00412c4a) > 1
        %error "LONG_00412C4A"
    %endif
    times 1 - ($ - %%insn_00412c4a) db 0
    %%insn_00412c4b:
    mov [0x421174],eax ; 00412C4B A374114200
    %if ($ - %%insn_00412c4b) > 5
        %error "LONG_00412C4B"
    %endif
    times 5 - ($ - %%insn_00412c4b) db 0
    %%insn_00412c50:
    call 0x40cdc0 ; 00412C50 E86BA1FFFF
    %if ($ - %%insn_00412c50) > 5
        %error "LONG_00412C50"
    %endif
    times 5 - ($ - %%insn_00412c50) db 0
    %%insn_00412c55:
    mov ecx,[esp+0x8] ; 00412C55 8B4C2408
    %if ($ - %%insn_00412c55) > 4
        %error "LONG_00412C55"
    %endif
    times 4 - ($ - %%insn_00412c55) db 0
    %%insn_00412c59:
    add esp,0x4 ; 00412C59 83C404
    %if ($ - %%insn_00412c59) > 3
        %error "LONG_00412C59"
    %endif
    times 3 - ($ - %%insn_00412c59) db 0
    %%insn_00412c5c:
    test eax,eax ; 00412C5C 85C0
    %if ($ - %%insn_00412c5c) > 2
        %error "LONG_00412C5C"
    %endif
    times 2 - ($ - %%insn_00412c5c) db 0
    %%insn_00412c5e:
    mov [ecx+0x8],eax ; 00412C5E 894108
    %if ($ - %%insn_00412c5e) > 3
        %error "LONG_00412C5E"
    %endif
    times 3 - ($ - %%insn_00412c5e) db 0
    %%insn_00412c61:
    mov eax,[ecx+0xc] ; 00412C61 8B410C
    %if ($ - %%insn_00412c61) > 3
        %error "LONG_00412C61"
    %endif
    times 3 - ($ - %%insn_00412c61) db 0
    %%insn_00412c64:
    jz short 0x412c7f ; 00412C64 7419
    %if ($ - %%insn_00412c64) > 2
        %error "LONG_00412C64"
    %endif
    times 2 - ($ - %%insn_00412c64) db 0
    %%insn_00412c66:
    mov edx,[ecx+0x8] ; 00412C66 8B5108
    %if ($ - %%insn_00412c66) > 3
        %error "LONG_00412C66"
    %endif
    times 3 - ($ - %%insn_00412c66) db 0
    %%insn_00412c69:
    or al,0x8 ; 00412C69 0C08
    %if ($ - %%insn_00412c69) > 2
        %error "LONG_00412C69"
    %endif
    times 2 - ($ - %%insn_00412c69) db 0
    %%insn_00412c6b:
    mov [ecx+0xc],eax ; 00412C6B 89410C
    %if ($ - %%insn_00412c6b) > 3
        %error "LONG_00412C6B"
    %endif
    times 3 - ($ - %%insn_00412c6b) db 0
    %%insn_00412c6e:
    mov dword [ecx+0x18],0x1000 ; 00412C6E C7411800100000
    %if ($ - %%insn_00412c6e) > 7
        %error "LONG_00412C6E"
    %endif
    times 7 - ($ - %%insn_00412c6e) db 0
    %%insn_00412c75:
    mov [ecx],edx ; 00412C75 8911
    %if ($ - %%insn_00412c75) > 2
        %error "LONG_00412C75"
    %endif
    times 2 - ($ - %%insn_00412c75) db 0
    %%insn_00412c77:
    mov dword [ecx+0x4],0x0 ; 00412C77 C7410400000000
    %if ($ - %%insn_00412c77) > 7
        %error "LONG_00412C77"
    %endif
    times 7 - ($ - %%insn_00412c77) db 0
    %%insn_00412c7e:
    ret ; 00412C7E C3
    %if ($ - %%insn_00412c7e) > 1
        %error "LONG_00412C7E"
    %endif
    times 1 - ($ - %%insn_00412c7e) db 0
    %%insn_00412c7f:
    or al,0x4 ; 00412C7F 0C04
    %if ($ - %%insn_00412c7f) > 2
        %error "LONG_00412C7F"
    %endif
    times 2 - ($ - %%insn_00412c7f) db 0
    %%insn_00412c81:
    mov dword [ecx+0x18],0x2 ; 00412C81 C7411802000000
    %if ($ - %%insn_00412c81) > 7
        %error "LONG_00412C81"
    %endif
    times 7 - ($ - %%insn_00412c81) db 0
    %%insn_00412c88:
    mov [ecx+0xc],eax ; 00412C88 89410C
    %if ($ - %%insn_00412c88) > 3
        %error "LONG_00412C88"
    %endif
    times 3 - ($ - %%insn_00412c88) db 0
    %%insn_00412c8b:
    lea eax,[ecx+0x14] ; 00412C8B 8D4114
    %if ($ - %%insn_00412c8b) > 3
        %error "LONG_00412C8B"
    %endif
    times 3 - ($ - %%insn_00412c8b) db 0
    db 0x8B, 0xD0 ; 00412C8E 8BD0 | mov edx,eax | encoding preserved
    %%insn_00412c90:
    mov [ecx+0x8],eax ; 00412C90 894108
    %if ($ - %%insn_00412c90) > 3
        %error "LONG_00412C90"
    %endif
    times 3 - ($ - %%insn_00412c90) db 0
    %%insn_00412c93:
    mov [ecx],edx ; 00412C93 8911
    %if ($ - %%insn_00412c93) > 2
        %error "LONG_00412C93"
    %endif
    times 2 - ($ - %%insn_00412c93) db 0
    %%insn_00412c95:
    mov dword [ecx+0x4],0x0 ; 00412C95 C7410400000000
    %if ($ - %%insn_00412c95) > 7
        %error "LONG_00412C95"
    %endif
    times 7 - ($ - %%insn_00412c95) db 0
    %%insn_00412c9c:
    ret ; 00412C9C C3
    %if ($ - %%insn_00412c9c) > 1
        %error "LONG_00412C9C"
    %endif
    times 1 - ($ - %%insn_00412c9c) db 0
    %if ($ - %%fragment_start) != 93
        %error "function fragment size drift: 00412C40"
    %endif
%endmacro
