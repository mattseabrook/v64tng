; PE virtual entry 0040C0E7
; Ghidra working symbol: FUN_0040c0e7
; Verified script.grv load path.
; Generated losslessly; preserve byte identity after edits.

%macro emit_load_script_grv_part_00 0
    %%fragment_start:
load_script_grv:
    %%insn_0040c0e7:
    push ebp ; 0040C0E7 55
    %if ($ - %%insn_0040c0e7) > 1
        %error "LONG_0040C0E7"
    %endif
    times 1 - ($ - %%insn_0040c0e7) db 0
    db 0x8B, 0xEC ; 0040C0E8 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c0ea:
    cmp dword [0x420e44],0x0 ; 0040C0EA 833D440E420000
    %if ($ - %%insn_0040c0ea) > 7
        %error "LONG_0040C0EA"
    %endif
    times 7 - ($ - %%insn_0040c0ea) db 0
    %%insn_0040c0f1:
    jnz short 0x40c113 ; 0040C0F1 7520
    %if ($ - %%insn_0040c0f1) > 2
        %error "LONG_0040C0F1"
    %endif
    times 2 - ($ - %%insn_0040c0f1) db 0
    %%insn_0040c0f3:
    push dword 0x80400 ; 0040C0F3 6800040800
    %if ($ - %%insn_0040c0f3) > 5
        %error "LONG_0040C0F3"
    %endif
    times 5 - ($ - %%insn_0040c0f3) db 0
    %%insn_0040c0f8:
    call 0x40cdc0 ; 0040C0F8 E8C30C0000
    %if ($ - %%insn_0040c0f8) > 5
        %error "LONG_0040C0F8"
    %endif
    times 5 - ($ - %%insn_0040c0f8) db 0
    %%insn_0040c0fd:
    add esp,0x4 ; 0040C0FD 83C404
    %if ($ - %%insn_0040c0fd) > 3
        %error "LONG_0040C0FD"
    %endif
    times 3 - ($ - %%insn_0040c0fd) db 0
    %%insn_0040c100:
    mov [0x420e44],eax ; 0040C100 A3440E4200
    %if ($ - %%insn_0040c100) > 5
        %error "LONG_0040C100"
    %endif
    times 5 - ($ - %%insn_0040c100) db 0
    %%insn_0040c105:
    mov eax,[0x420e44] ; 0040C105 A1440E4200
    %if ($ - %%insn_0040c105) > 5
        %error "LONG_0040C105"
    %endif
    times 5 - ($ - %%insn_0040c105) db 0
    %%insn_0040c10a:
    push eax ; 0040C10A 50
    %if ($ - %%insn_0040c10a) > 1
        %error "LONG_0040C10A"
    %endif
    times 1 - ($ - %%insn_0040c10a) db 0
    %%insn_0040c10b:
    call 0x40bff4 ; 0040C10B E8E4FEFFFF
    %if ($ - %%insn_0040c10b) > 5
        %error "LONG_0040C10B"
    %endif
    times 5 - ($ - %%insn_0040c10b) db 0
    %%insn_0040c110:
    add esp,0x4 ; 0040C110 83C404
    %if ($ - %%insn_0040c110) > 3
        %error "LONG_0040C110"
    %endif
    times 3 - ($ - %%insn_0040c110) db 0
    %%insn_0040c113:
    push dword 0x10000 ; 0040C113 6800000100
    %if ($ - %%insn_0040c113) > 5
        %error "LONG_0040C113"
    %endif
    times 5 - ($ - %%insn_0040c113) db 0
    %%insn_0040c118:
    call 0x40cdc0 ; 0040C118 E8A30C0000
    %if ($ - %%insn_0040c118) > 5
        %error "LONG_0040C118"
    %endif
    times 5 - ($ - %%insn_0040c118) db 0
    %%insn_0040c11d:
    add esp,0x4 ; 0040C11D 83C404
    %if ($ - %%insn_0040c11d) > 3
        %error "LONG_0040C11D"
    %endif
    times 3 - ($ - %%insn_0040c11d) db 0
    %%insn_0040c120:
    mov [0x420a28],eax ; 0040C120 A3280A4200
    %if ($ - %%insn_0040c120) > 5
        %error "LONG_0040C120"
    %endif
    times 5 - ($ - %%insn_0040c120) db 0
    db 0x33, 0xC0 ; 0040C125 33C0 | xor eax,eax | encoding preserved
    %%insn_0040c127:
    pop ebp ; 0040C127 5D
    %if ($ - %%insn_0040c127) > 1
        %error "LONG_0040C127"
    %endif
    times 1 - ($ - %%insn_0040c127) db 0
    %%insn_0040c128:
    ret ; 0040C128 C3
    %if ($ - %%insn_0040c128) > 1
        %error "LONG_0040C128"
    %endif
    times 1 - ($ - %%insn_0040c128) db 0
    %if ($ - %%fragment_start) != 66
        %error "function fragment size drift: 0040C0E7"
    %endif
%endmacro
