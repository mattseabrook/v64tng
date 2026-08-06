; PE virtual entry 00407B0D
; Ghidra working symbol: FUN_00407b0d
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407b0d_part_00 0
    %%fragment_start:
func_00407b0d:
    %%insn_00407b0d:
    push ebp ; 00407B0D 55
    %if ($ - %%insn_00407b0d) > 1
        %error "LONG_00407B0D"
    %endif
    times 1 - ($ - %%insn_00407b0d) db 0
    db 0x8B, 0xEC ; 00407B0E 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407b10:
    sub esp,0x74 ; 00407B10 83EC74
    %if ($ - %%insn_00407b10) > 3
        %error "LONG_00407B10"
    %endif
    times 3 - ($ - %%insn_00407b10) db 0
    %%insn_00407b13:
    mov [ebp-0x74],ecx ; 00407B13 894D8C
    %if ($ - %%insn_00407b13) > 3
        %error "LONG_00407B13"
    %endif
    times 3 - ($ - %%insn_00407b13) db 0
    %%insn_00407b16:
    mov dword [ebp-0x6c],0x6c ; 00407B16 C745946C000000
    %if ($ - %%insn_00407b16) > 7
        %error "LONG_00407B16"
    %endif
    times 7 - ($ - %%insn_00407b16) db 0
    %%insn_00407b1d:
    push dword 0x0 ; 00407B1D 6A00
    %if ($ - %%insn_00407b1d) > 2
        %error "LONG_00407B1D"
    %endif
    times 2 - ($ - %%insn_00407b1d) db 0
    %%insn_00407b1f:
    push dword 0x1 ; 00407B1F 6A01
    %if ($ - %%insn_00407b1f) > 2
        %error "LONG_00407B1F"
    %endif
    times 2 - ($ - %%insn_00407b1f) db 0
    %%insn_00407b21:
    lea eax,[ebp-0x6c] ; 00407B21 8D4594
    %if ($ - %%insn_00407b21) > 3
        %error "LONG_00407B21"
    %endif
    times 3 - ($ - %%insn_00407b21) db 0
    %%insn_00407b24:
    push eax ; 00407B24 50
    %if ($ - %%insn_00407b24) > 1
        %error "LONG_00407B24"
    %endif
    times 1 - ($ - %%insn_00407b24) db 0
    %%insn_00407b25:
    push dword 0x0 ; 00407B25 6A00
    %if ($ - %%insn_00407b25) > 2
        %error "LONG_00407B25"
    %endif
    times 2 - ($ - %%insn_00407b25) db 0
    %%insn_00407b27:
    mov ecx,[ebp-0x74] ; 00407B27 8B4D8C
    %if ($ - %%insn_00407b27) > 3
        %error "LONG_00407B27"
    %endif
    times 3 - ($ - %%insn_00407b27) db 0
    %%insn_00407b2a:
    push ecx ; 00407B2A 51
    %if ($ - %%insn_00407b2a) > 1
        %error "LONG_00407B2A"
    %endif
    times 1 - ($ - %%insn_00407b2a) db 0
    %%insn_00407b2b:
    mov edx,[ebp-0x74] ; 00407B2B 8B558C
    %if ($ - %%insn_00407b2b) > 3
        %error "LONG_00407B2B"
    %endif
    times 3 - ($ - %%insn_00407b2b) db 0
    %%insn_00407b2e:
    mov eax,[edx] ; 00407B2E 8B02
    %if ($ - %%insn_00407b2e) > 2
        %error "LONG_00407B2E"
    %endif
    times 2 - ($ - %%insn_00407b2e) db 0
    %%insn_00407b30:
    call dword near [eax+0x64] ; 00407B30 FF5064
    %if ($ - %%insn_00407b30) > 3
        %error "LONG_00407B30"
    %endif
    times 3 - ($ - %%insn_00407b30) db 0
    %%insn_00407b33:
    mov [ebp-0x70],eax ; 00407B33 894590
    %if ($ - %%insn_00407b33) > 3
        %error "LONG_00407B33"
    %endif
    times 3 - ($ - %%insn_00407b33) db 0
    %%insn_00407b36:
    cmp dword [ebp-0x70],0x0 ; 00407B36 837D9000
    %if ($ - %%insn_00407b36) > 4
        %error "LONG_00407B36"
    %endif
    times 4 - ($ - %%insn_00407b36) db 0
    %%insn_00407b3a:
    jz short 0x407b3e ; 00407B3A 7402
    %if ($ - %%insn_00407b3a) > 2
        %error "LONG_00407B3A"
    %endif
    times 2 - ($ - %%insn_00407b3a) db 0
    %%insn_00407b3c:
    jmp short 0x407b5a ; 00407B3C EB1C
    %if ($ - %%insn_00407b3c) > 2
        %error "LONG_00407B3C"
    %endif
    times 2 - ($ - %%insn_00407b3c) db 0
    %%insn_00407b3e:
    mov ecx,[ebp-0x48] ; 00407B3E 8B4DB8
    %if ($ - %%insn_00407b3e) > 3
        %error "LONG_00407B3E"
    %endif
    times 3 - ($ - %%insn_00407b3e) db 0
    %%insn_00407b41:
    mov [0x421434],ecx ; 00407B41 890D34144200
    %if ($ - %%insn_00407b41) > 6
        %error "LONG_00407B41"
    %endif
    times 6 - ($ - %%insn_00407b41) db 0
    %%insn_00407b47:
    mov edx,[ebp-0x5c] ; 00407B47 8B55A4
    %if ($ - %%insn_00407b47) > 3
        %error "LONG_00407B47"
    %endif
    times 3 - ($ - %%insn_00407b47) db 0
    %%insn_00407b4a:
    mov [0x41f540],edx ; 00407B4A 891540F54100
    %if ($ - %%insn_00407b4a) > 6
        %error "LONG_00407B4A"
    %endif
    times 6 - ($ - %%insn_00407b4a) db 0
    %%insn_00407b50:
    mov dword [0x41f550],0x1 ; 00407B50 C70550F5410001000000
    %if ($ - %%insn_00407b50) > 10
        %error "LONG_00407B50"
    %endif
    times 10 - ($ - %%insn_00407b50) db 0
    db 0x8B, 0xE5 ; 00407B5A 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407b5c:
    pop ebp ; 00407B5C 5D
    %if ($ - %%insn_00407b5c) > 1
        %error "LONG_00407B5C"
    %endif
    times 1 - ($ - %%insn_00407b5c) db 0
    %%insn_00407b5d:
    ret ; 00407B5D C3
    %if ($ - %%insn_00407b5d) > 1
        %error "LONG_00407B5D"
    %endif
    times 1 - ($ - %%insn_00407b5d) db 0
    %if ($ - %%fragment_start) != 81
        %error "function fragment size drift: 00407B0D"
    %endif
%endmacro
