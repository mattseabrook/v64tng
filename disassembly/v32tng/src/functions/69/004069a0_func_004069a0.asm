; PE virtual entry 004069A0
; Ghidra working symbol: FUN_004069a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004069a0_part_00 0
    %%fragment_start:
func_004069a0:
    %%insn_004069a0:
    push ebp ; 004069A0 55
    %if ($ - %%insn_004069a0) > 1
        %error "LONG_004069A0"
    %endif
    times 1 - ($ - %%insn_004069a0) db 0
    db 0x8B, 0xEC ; 004069A1 8BEC | mov ebp,esp | encoding preserved
    %%insn_004069a3:
    mov byte [0x41f4b8],0x0 ; 004069A3 C605B8F4410000
    %if ($ - %%insn_004069a3) > 7
        %error "LONG_004069A3"
    %endif
    times 7 - ($ - %%insn_004069a3) db 0
    %%insn_004069aa:
    mov al,[0x41f4b8] ; 004069AA A0B8F44100
    %if ($ - %%insn_004069aa) > 5
        %error "LONG_004069AA"
    %endif
    times 5 - ($ - %%insn_004069aa) db 0
    %%insn_004069af:
    mov [0x41f4bc],al ; 004069AF A2BCF44100
    %if ($ - %%insn_004069af) > 5
        %error "LONG_004069AF"
    %endif
    times 5 - ($ - %%insn_004069af) db 0
    %%insn_004069b4:
    push dword 0x40 ; 004069B4 6A40
    %if ($ - %%insn_004069b4) > 2
        %error "LONG_004069B4"
    %endif
    times 2 - ($ - %%insn_004069b4) db 0
    %%insn_004069b6:
    push dword 0x0 ; 004069B6 6A00
    %if ($ - %%insn_004069b6) > 2
        %error "LONG_004069B6"
    %endif
    times 2 - ($ - %%insn_004069b6) db 0
    %%insn_004069b8:
    push dword 0x41f478 ; 004069B8 6878F44100
    %if ($ - %%insn_004069b8) > 5
        %error "LONG_004069B8"
    %endif
    times 5 - ($ - %%insn_004069b8) db 0
    %%insn_004069bd:
    call 0x40d470 ; 004069BD E8AE6A0000
    %if ($ - %%insn_004069bd) > 5
        %error "LONG_004069BD"
    %endif
    times 5 - ($ - %%insn_004069bd) db 0
    %%insn_004069c2:
    add esp,0xc ; 004069C2 83C40C
    %if ($ - %%insn_004069c2) > 3
        %error "LONG_004069C2"
    %endif
    times 3 - ($ - %%insn_004069c2) db 0
    %%insn_004069c5:
    pop ebp ; 004069C5 5D
    %if ($ - %%insn_004069c5) > 1
        %error "LONG_004069C5"
    %endif
    times 1 - ($ - %%insn_004069c5) db 0
    %%insn_004069c6:
    ret ; 004069C6 C3
    %if ($ - %%insn_004069c6) > 1
        %error "LONG_004069C6"
    %endif
    times 1 - ($ - %%insn_004069c6) db 0
    %if ($ - %%fragment_start) != 39
        %error "function fragment size drift: 004069A0"
    %endif
%endmacro
