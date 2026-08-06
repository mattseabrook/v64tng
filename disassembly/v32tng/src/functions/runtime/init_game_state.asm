; PE virtual entry 00409A90
; Ghidra working symbol: FUN_00409a90
; Verified game-state initialization role.
; Generated losslessly; preserve byte identity after edits.

%macro emit_init_game_state_part_00 0
    %%fragment_start:
init_game_state:
    %%insn_00409a90:
    push ebp ; 00409A90 55
    %if ($ - %%insn_00409a90) > 1
        %error "LONG_00409A90"
    %endif
    times 1 - ($ - %%insn_00409a90) db 0
    db 0x8B, 0xEC ; 00409A91 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409a93:
    push dword 0x30000 ; 00409A93 6800000300
    %if ($ - %%insn_00409a93) > 5
        %error "LONG_00409A93"
    %endif
    times 5 - ($ - %%insn_00409a93) db 0
    %%insn_00409a98:
    call 0x40cdc0 ; 00409A98 E823330000
    %if ($ - %%insn_00409a98) > 5
        %error "LONG_00409A98"
    %endif
    times 5 - ($ - %%insn_00409a98) db 0
    %%insn_00409a9d:
    add esp,0x4 ; 00409A9D 83C404
    %if ($ - %%insn_00409a9d) > 3
        %error "LONG_00409A9D"
    %endif
    times 3 - ($ - %%insn_00409a9d) db 0
    %%insn_00409aa0:
    mov [0x41f5f4],eax ; 00409AA0 A3F4F54100
    %if ($ - %%insn_00409aa0) > 5
        %error "LONG_00409AA0"
    %endif
    times 5 - ($ - %%insn_00409aa0) db 0
    %%insn_00409aa5:
    mov eax,[0x41f5f4] ; 00409AA5 A1F4F54100
    %if ($ - %%insn_00409aa5) > 5
        %error "LONG_00409AA5"
    %endif
    times 5 - ($ - %%insn_00409aa5) db 0
    %%insn_00409aaa:
    add eax,0x20000 ; 00409AAA 0500000200
    %if ($ - %%insn_00409aaa) > 5
        %error "LONG_00409AAA"
    %endif
    times 5 - ($ - %%insn_00409aaa) db 0
    %%insn_00409aaf:
    mov [0x420a00],eax ; 00409AAF A3000A4200
    %if ($ - %%insn_00409aaf) > 5
        %error "LONG_00409AAF"
    %endif
    times 5 - ($ - %%insn_00409aaf) db 0
    %%insn_00409ab4:
    pop ebp ; 00409AB4 5D
    %if ($ - %%insn_00409ab4) > 1
        %error "LONG_00409AB4"
    %endif
    times 1 - ($ - %%insn_00409ab4) db 0
    %%insn_00409ab5:
    ret ; 00409AB5 C3
    %if ($ - %%insn_00409ab5) > 1
        %error "LONG_00409AB5"
    %endif
    times 1 - ($ - %%insn_00409ab5) db 0
    %if ($ - %%fragment_start) != 38
        %error "function fragment size drift: 00409A90"
    %endif
%endmacro
