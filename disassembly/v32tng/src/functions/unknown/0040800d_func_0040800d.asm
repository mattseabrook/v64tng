; PE virtual entry 0040800D
; Ghidra working symbol: FUN_0040800d
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040800d_part_00 0
    %%fragment_start:
func_0040800d:
    %%insn_0040800d:
    push ebp ; 0040800D 55
    %if ($ - %%insn_0040800d) > 1
        %error "LONG_0040800D"
    %endif
    times 1 - ($ - %%insn_0040800d) db 0
    db 0x8B, 0xEC ; 0040800E 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408010:
    sub esp,0x68 ; 00408010 83EC68
    %if ($ - %%insn_00408010) > 3
        %error "LONG_00408010"
    %endif
    times 3 - ($ - %%insn_00408010) db 0
    %%insn_00408013:
    mov [ebp-0x68],ecx ; 00408013 894D98
    %if ($ - %%insn_00408013) > 3
        %error "LONG_00408013"
    %endif
    times 3 - ($ - %%insn_00408013) db 0
    %%insn_00408016:
    mov dword [ebp-0x64],0x64 ; 00408016 C7459C64000000
    %if ($ - %%insn_00408016) > 7
        %error "LONG_00408016"
    %endif
    times 7 - ($ - %%insn_00408016) db 0
    %%insn_0040801d:
    mov dword [ebp-0x14],0x0 ; 0040801D C745EC00000000
    %if ($ - %%insn_0040801d) > 7
        %error "LONG_0040801D"
    %endif
    times 7 - ($ - %%insn_0040801d) db 0
    %%insn_00408024:
    lea eax,[ebp-0x64] ; 00408024 8D459C
    %if ($ - %%insn_00408024) > 3
        %error "LONG_00408024"
    %endif
    times 3 - ($ - %%insn_00408024) db 0
    %%insn_00408027:
    push eax ; 00408027 50
    %if ($ - %%insn_00408027) > 1
        %error "LONG_00408027"
    %endif
    times 1 - ($ - %%insn_00408027) db 0
    %%insn_00408028:
    push dword 0x400 ; 00408028 6800040000
    %if ($ - %%insn_00408028) > 5
        %error "LONG_00408028"
    %endif
    times 5 - ($ - %%insn_00408028) db 0
    %%insn_0040802d:
    push dword 0x0 ; 0040802D 6A00
    %if ($ - %%insn_0040802d) > 2
        %error "LONG_0040802D"
    %endif
    times 2 - ($ - %%insn_0040802d) db 0
    %%insn_0040802f:
    push dword 0x0 ; 0040802F 6A00
    %if ($ - %%insn_0040802f) > 2
        %error "LONG_0040802F"
    %endif
    times 2 - ($ - %%insn_0040802f) db 0
    %%insn_00408031:
    push dword 0x0 ; 00408031 6A00
    %if ($ - %%insn_00408031) > 2
        %error "LONG_00408031"
    %endif
    times 2 - ($ - %%insn_00408031) db 0
    %%insn_00408033:
    mov ecx,[0x421438] ; 00408033 8B0D38144200
    %if ($ - %%insn_00408033) > 6
        %error "LONG_00408033"
    %endif
    times 6 - ($ - %%insn_00408033) db 0
    %%insn_00408039:
    push ecx ; 00408039 51
    %if ($ - %%insn_00408039) > 1
        %error "LONG_00408039"
    %endif
    times 1 - ($ - %%insn_00408039) db 0
    %%insn_0040803a:
    mov edx,[0x421438] ; 0040803A 8B1538144200
    %if ($ - %%insn_0040803a) > 6
        %error "LONG_0040803A"
    %endif
    times 6 - ($ - %%insn_0040803a) db 0
    %%insn_00408040:
    mov eax,[edx] ; 00408040 8B02
    %if ($ - %%insn_00408040) > 2
        %error "LONG_00408040"
    %endif
    times 2 - ($ - %%insn_00408040) db 0
    %%insn_00408042:
    call dword near [eax+0x14] ; 00408042 FF5014
    %if ($ - %%insn_00408042) > 3
        %error "LONG_00408042"
    %endif
    times 3 - ($ - %%insn_00408042) db 0
    db 0x33, 0xC0 ; 00408045 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00408047 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00408049:
    pop ebp ; 00408049 5D
    %if ($ - %%insn_00408049) > 1
        %error "LONG_00408049"
    %endif
    times 1 - ($ - %%insn_00408049) db 0
    %%insn_0040804a:
    ret ; 0040804A C3
    %if ($ - %%insn_0040804a) > 1
        %error "LONG_0040804A"
    %endif
    times 1 - ($ - %%insn_0040804a) db 0
    %if ($ - %%fragment_start) != 62
        %error "function fragment size drift: 0040800D"
    %endif
%endmacro
