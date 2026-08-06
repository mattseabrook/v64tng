; PE virtual entry 004087FB
; Ghidra working symbol: FUN_004087fb
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004087fb_part_00 0
    %%fragment_start:
func_004087fb:
    %%insn_004087fb:
    push ebp ; 004087FB 55
    %if ($ - %%insn_004087fb) > 1
        %error "LONG_004087FB"
    %endif
    times 1 - ($ - %%insn_004087fb) db 0
    db 0x8B, 0xEC ; 004087FC 8BEC | mov ebp,esp | encoding preserved
    %%insn_004087fe:
    push ecx ; 004087FE 51
    %if ($ - %%insn_004087fe) > 1
        %error "LONG_004087FE"
    %endif
    times 1 - ($ - %%insn_004087fe) db 0
    %%insn_004087ff:
    mov [ebp-0x4],ecx ; 004087FF 894DFC
    %if ($ - %%insn_004087ff) > 3
        %error "LONG_004087FF"
    %endif
    times 3 - ($ - %%insn_004087ff) db 0
    %%insn_00408802:
    push dword 0x4b000 ; 00408802 6800B00400
    %if ($ - %%insn_00408802) > 5
        %error "LONG_00408802"
    %endif
    times 5 - ($ - %%insn_00408802) db 0
    %%insn_00408807:
    push dword 0x0 ; 00408807 6A00
    %if ($ - %%insn_00408807) > 2
        %error "LONG_00408807"
    %endif
    times 2 - ($ - %%insn_00408807) db 0
    %%insn_00408809:
    mov eax,[ebp-0x4] ; 00408809 8B45FC
    %if ($ - %%insn_00408809) > 3
        %error "LONG_00408809"
    %endif
    times 3 - ($ - %%insn_00408809) db 0
    %%insn_0040880c:
    mov ecx,[eax+0x3c] ; 0040880C 8B483C
    %if ($ - %%insn_0040880c) > 3
        %error "LONG_0040880C"
    %endif
    times 3 - ($ - %%insn_0040880c) db 0
    %%insn_0040880f:
    push ecx ; 0040880F 51
    %if ($ - %%insn_0040880f) > 1
        %error "LONG_0040880F"
    %endif
    times 1 - ($ - %%insn_0040880f) db 0
    %%insn_00408810:
    call 0x40d470 ; 00408810 E85B4C0000
    %if ($ - %%insn_00408810) > 5
        %error "LONG_00408810"
    %endif
    times 5 - ($ - %%insn_00408810) db 0
    %%insn_00408815:
    add esp,0xc ; 00408815 83C40C
    %if ($ - %%insn_00408815) > 3
        %error "LONG_00408815"
    %endif
    times 3 - ($ - %%insn_00408815) db 0
    db 0x33, 0xC0 ; 00408818 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 0040881A 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040881c:
    pop ebp ; 0040881C 5D
    %if ($ - %%insn_0040881c) > 1
        %error "LONG_0040881C"
    %endif
    times 1 - ($ - %%insn_0040881c) db 0
    %%insn_0040881d:
    ret ; 0040881D C3
    %if ($ - %%insn_0040881d) > 1
        %error "LONG_0040881D"
    %endif
    times 1 - ($ - %%insn_0040881d) db 0
    %if ($ - %%fragment_start) != 35
        %error "function fragment size drift: 004087FB"
    %endif
%endmacro
