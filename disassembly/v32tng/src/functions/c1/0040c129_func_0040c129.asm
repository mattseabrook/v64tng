; PE virtual entry 0040C129
; Ghidra working symbol: FUN_0040c129
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c129_part_00 0
    %%fragment_start:
func_0040c129:
    %%insn_0040c129:
    push ebp ; 0040C129 55
    %if ($ - %%insn_0040c129) > 1
        %error "LONG_0040C129"
    %endif
    times 1 - ($ - %%insn_0040c129) db 0
    db 0x8B, 0xEC ; 0040C12A 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c12c:
    cmp dword [0x420a28],0x0 ; 0040C12C 833D280A420000
    %if ($ - %%insn_0040c12c) > 7
        %error "LONG_0040C12C"
    %endif
    times 7 - ($ - %%insn_0040c12c) db 0
    %%insn_0040c133:
    jz short 0x40c14d ; 0040C133 7418
    %if ($ - %%insn_0040c133) > 2
        %error "LONG_0040C133"
    %endif
    times 2 - ($ - %%insn_0040c133) db 0
    %%insn_0040c135:
    mov eax,[0x420a28] ; 0040C135 A1280A4200
    %if ($ - %%insn_0040c135) > 5
        %error "LONG_0040C135"
    %endif
    times 5 - ($ - %%insn_0040c135) db 0
    %%insn_0040c13a:
    push eax ; 0040C13A 50
    %if ($ - %%insn_0040c13a) > 1
        %error "LONG_0040C13A"
    %endif
    times 1 - ($ - %%insn_0040c13a) db 0
    %%insn_0040c13b:
    call 0x40c9a0 ; 0040C13B E860080000
    %if ($ - %%insn_0040c13b) > 5
        %error "LONG_0040C13B"
    %endif
    times 5 - ($ - %%insn_0040c13b) db 0
    %%insn_0040c140:
    add esp,0x4 ; 0040C140 83C404
    %if ($ - %%insn_0040c140) > 3
        %error "LONG_0040C140"
    %endif
    times 3 - ($ - %%insn_0040c140) db 0
    %%insn_0040c143:
    mov dword [0x420a28],0x0 ; 0040C143 C705280A420000000000
    %if ($ - %%insn_0040c143) > 10
        %error "LONG_0040C143"
    %endif
    times 10 - ($ - %%insn_0040c143) db 0
    %%insn_0040c14d:
    cmp dword [0x420e44],0x0 ; 0040C14D 833D440E420000
    %if ($ - %%insn_0040c14d) > 7
        %error "LONG_0040C14D"
    %endif
    times 7 - ($ - %%insn_0040c14d) db 0
    %%insn_0040c154:
    jz short 0x40c16f ; 0040C154 7419
    %if ($ - %%insn_0040c154) > 2
        %error "LONG_0040C154"
    %endif
    times 2 - ($ - %%insn_0040c154) db 0
    %%insn_0040c156:
    mov ecx,[0x420e44] ; 0040C156 8B0D440E4200
    %if ($ - %%insn_0040c156) > 6
        %error "LONG_0040C156"
    %endif
    times 6 - ($ - %%insn_0040c156) db 0
    %%insn_0040c15c:
    push ecx ; 0040C15C 51
    %if ($ - %%insn_0040c15c) > 1
        %error "LONG_0040C15C"
    %endif
    times 1 - ($ - %%insn_0040c15c) db 0
    %%insn_0040c15d:
    call 0x40c9a0 ; 0040C15D E83E080000
    %if ($ - %%insn_0040c15d) > 5
        %error "LONG_0040C15D"
    %endif
    times 5 - ($ - %%insn_0040c15d) db 0
    %%insn_0040c162:
    add esp,0x4 ; 0040C162 83C404
    %if ($ - %%insn_0040c162) > 3
        %error "LONG_0040C162"
    %endif
    times 3 - ($ - %%insn_0040c162) db 0
    %%insn_0040c165:
    mov dword [0x420e44],0x0 ; 0040C165 C705440E420000000000
    %if ($ - %%insn_0040c165) > 10
        %error "LONG_0040C165"
    %endif
    times 10 - ($ - %%insn_0040c165) db 0
    db 0x33, 0xC0 ; 0040C16F 33C0 | xor eax,eax | encoding preserved
    %%insn_0040c171:
    pop ebp ; 0040C171 5D
    %if ($ - %%insn_0040c171) > 1
        %error "LONG_0040C171"
    %endif
    times 1 - ($ - %%insn_0040c171) db 0
    %%insn_0040c172:
    ret ; 0040C172 C3
    %if ($ - %%insn_0040c172) > 1
        %error "LONG_0040C172"
    %endif
    times 1 - ($ - %%insn_0040c172) db 0
    %if ($ - %%fragment_start) != 74
        %error "function fragment size drift: 0040C129"
    %endif
%endmacro
