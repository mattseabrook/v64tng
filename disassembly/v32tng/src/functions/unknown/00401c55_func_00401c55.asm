; PE virtual entry 00401C55
; Ghidra working symbol: FUN_00401c55
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00401c55_part_00 0
    %%fragment_start:
func_00401c55:
    %%insn_00401c55:
    push ebp ; 00401C55 55
    %if ($ - %%insn_00401c55) > 1
        %error "LONG_00401C55"
    %endif
    times 1 - ($ - %%insn_00401c55) db 0
    db 0x8B, 0xEC ; 00401C56 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401c58:
    push dword 0x10000 ; 00401C58 6800000100
    %if ($ - %%insn_00401c58) > 5
        %error "LONG_00401C58"
    %endif
    times 5 - ($ - %%insn_00401c58) db 0
    %%insn_00401c5d:
    push dword 0x0 ; 00401C5D 6A00
    %if ($ - %%insn_00401c5d) > 2
        %error "LONG_00401C5D"
    %endif
    times 2 - ($ - %%insn_00401c5d) db 0
    %%insn_00401c5f:
    push dword 0x41b114 ; 00401C5F 6814B14100
    %if ($ - %%insn_00401c5f) > 5
        %error "LONG_00401C5F"
    %endif
    times 5 - ($ - %%insn_00401c5f) db 0
    %%insn_00401c64:
    call dword near [0x424598] ; 00401C64 FF1598454200
    %if ($ - %%insn_00401c64) > 6
        %error "LONG_00401C64"
    %endif
    times 6 - ($ - %%insn_00401c64) db 0
    %%insn_00401c6a:
    mov [0x41f31c],eax ; 00401C6A A31CF34100
    %if ($ - %%insn_00401c6a) > 5
        %error "LONG_00401C6A"
    %endif
    times 5 - ($ - %%insn_00401c6a) db 0
    %%insn_00401c6f:
    cmp dword [0x41f31c],0x0 ; 00401C6F 833D1CF3410000
    %if ($ - %%insn_00401c6f) > 7
        %error "LONG_00401C6F"
    %endif
    times 7 - ($ - %%insn_00401c6f) db 0
    %%insn_00401c76:
    jz short 0x401c94 ; 00401C76 741C
    %if ($ - %%insn_00401c76) > 2
        %error "LONG_00401C76"
    %endif
    times 2 - ($ - %%insn_00401c76) db 0
    %%insn_00401c78:
    push dword 0x0 ; 00401C78 6A00
    %if ($ - %%insn_00401c78) > 2
        %error "LONG_00401C78"
    %endif
    times 2 - ($ - %%insn_00401c78) db 0
    %%insn_00401c7a:
    push dword 0x0 ; 00401C7A 6A00
    %if ($ - %%insn_00401c7a) > 2
        %error "LONG_00401C7A"
    %endif
    times 2 - ($ - %%insn_00401c7a) db 0
    %%insn_00401c7c:
    push dword 0x0 ; 00401C7C 6A00
    %if ($ - %%insn_00401c7c) > 2
        %error "LONG_00401C7C"
    %endif
    times 2 - ($ - %%insn_00401c7c) db 0
    %%insn_00401c7e:
    push dword 0x0 ; 00401C7E 6A00
    %if ($ - %%insn_00401c7e) > 2
        %error "LONG_00401C7E"
    %endif
    times 2 - ($ - %%insn_00401c7e) db 0
    %%insn_00401c80:
    mov eax,[0x41f31c] ; 00401C80 A11CF34100
    %if ($ - %%insn_00401c80) > 5
        %error "LONG_00401C80"
    %endif
    times 5 - ($ - %%insn_00401c80) db 0
    %%insn_00401c85:
    push eax ; 00401C85 50
    %if ($ - %%insn_00401c85) > 1
        %error "LONG_00401C85"
    %endif
    times 1 - ($ - %%insn_00401c85) db 0
    %%insn_00401c86:
    call 0x408d24 ; 00401C86 E899700000
    %if ($ - %%insn_00401c86) > 5
        %error "LONG_00401C86"
    %endif
    times 5 - ($ - %%insn_00401c86) db 0
    %%insn_00401c8b:
    add esp,0x14 ; 00401C8B 83C414
    %if ($ - %%insn_00401c8b) > 3
        %error "LONG_00401C8B"
    %endif
    times 3 - ($ - %%insn_00401c8b) db 0
    %%insn_00401c8e:
    mov ax,0x1 ; 00401C8E 66B80100
    %if ($ - %%insn_00401c8e) > 4
        %error "LONG_00401C8E"
    %endif
    times 4 - ($ - %%insn_00401c8e) db 0
    %%insn_00401c92:
    jmp short 0x401c97 ; 00401C92 EB03
    %if ($ - %%insn_00401c92) > 2
        %error "LONG_00401C92"
    %endif
    times 2 - ($ - %%insn_00401c92) db 0
    db 0x66, 0x33, 0xC0 ; 00401C94 6633C0 | xor ax,ax | encoding preserved
    %%insn_00401c97:
    pop ebp ; 00401C97 5D
    %if ($ - %%insn_00401c97) > 1
        %error "LONG_00401C97"
    %endif
    times 1 - ($ - %%insn_00401c97) db 0
    %%insn_00401c98:
    ret ; 00401C98 C3
    %if ($ - %%insn_00401c98) > 1
        %error "LONG_00401C98"
    %endif
    times 1 - ($ - %%insn_00401c98) db 0
    %if ($ - %%fragment_start) != 68
        %error "function fragment size drift: 00401C55"
    %endif
%endmacro
