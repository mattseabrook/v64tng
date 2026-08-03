; PE virtual entry 00413F00
; Ghidra working symbol: FUN_00413f00
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00413f00_part_00 0
    %%fragment_start:
func_00413f00:
    %%insn_00413f00:
    mov ecx,[esp+0x4] ; 00413F00 8B4C2404
    %if ($ - %%insn_00413f00) > 4
        %error "LONG_00413F00"
    %endif
    times 4 - ($ - %%insn_00413f00) db 0
    %%insn_00413f04:
    mov al,[ecx] ; 00413F04 8A01
    %if ($ - %%insn_00413f04) > 2
        %error "LONG_00413F04"
    %endif
    times 2 - ($ - %%insn_00413f04) db 0
    %%insn_00413f06:
    test al,al ; 00413F06 84C0
    %if ($ - %%insn_00413f06) > 2
        %error "LONG_00413F06"
    %endif
    times 2 - ($ - %%insn_00413f06) db 0
    %%insn_00413f08:
    jz short 0x413f1d ; 00413F08 7413
    %if ($ - %%insn_00413f08) > 2
        %error "LONG_00413F08"
    %endif
    times 2 - ($ - %%insn_00413f08) db 0
    %%insn_00413f0a:
    cmp al,0x30 ; 00413F0A 3C30
    %if ($ - %%insn_00413f0a) > 2
        %error "LONG_00413F0A"
    %endif
    times 2 - ($ - %%insn_00413f0a) db 0
    %%insn_00413f0c:
    jl short 0x413f1e ; 00413F0C 7C10
    %if ($ - %%insn_00413f0c) > 2
        %error "LONG_00413F0C"
    %endif
    times 2 - ($ - %%insn_00413f0c) db 0
    %%insn_00413f0e:
    cmp al,0x39 ; 00413F0E 3C39
    %if ($ - %%insn_00413f0e) > 2
        %error "LONG_00413F0E"
    %endif
    times 2 - ($ - %%insn_00413f0e) db 0
    %%insn_00413f10:
    jg short 0x413f1e ; 00413F10 7F0C
    %if ($ - %%insn_00413f10) > 2
        %error "LONG_00413F10"
    %endif
    times 2 - ($ - %%insn_00413f10) db 0
    %%insn_00413f12:
    sub al,0x30 ; 00413F12 2C30
    %if ($ - %%insn_00413f12) > 2
        %error "LONG_00413F12"
    %endif
    times 2 - ($ - %%insn_00413f12) db 0
    %%insn_00413f14:
    mov [ecx],al ; 00413F14 8801
    %if ($ - %%insn_00413f14) > 2
        %error "LONG_00413F14"
    %endif
    times 2 - ($ - %%insn_00413f14) db 0
    %%insn_00413f16:
    inc ecx ; 00413F16 41
    %if ($ - %%insn_00413f16) > 1
        %error "LONG_00413F16"
    %endif
    times 1 - ($ - %%insn_00413f16) db 0
    %%insn_00413f17:
    mov al,[ecx] ; 00413F17 8A01
    %if ($ - %%insn_00413f17) > 2
        %error "LONG_00413F17"
    %endif
    times 2 - ($ - %%insn_00413f17) db 0
    %%insn_00413f19:
    test al,al ; 00413F19 84C0
    %if ($ - %%insn_00413f19) > 2
        %error "LONG_00413F19"
    %endif
    times 2 - ($ - %%insn_00413f19) db 0
    %%insn_00413f1b:
    jnz short 0x413f0a ; 00413F1B 75ED
    %if ($ - %%insn_00413f1b) > 2
        %error "LONG_00413F1B"
    %endif
    times 2 - ($ - %%insn_00413f1b) db 0
    %%insn_00413f1d:
    ret ; 00413F1D C3
    %if ($ - %%insn_00413f1d) > 1
        %error "LONG_00413F1D"
    %endif
    times 1 - ($ - %%insn_00413f1d) db 0
    %%insn_00413f1e:
    cmp al,0x3b ; 00413F1E 3C3B
    %if ($ - %%insn_00413f1e) > 2
        %error "LONG_00413F1E"
    %endif
    times 2 - ($ - %%insn_00413f1e) db 0
    %%insn_00413f20:
    jnz short 0x413f16 ; 00413F20 75F4
    %if ($ - %%insn_00413f20) > 2
        %error "LONG_00413F20"
    %endif
    times 2 - ($ - %%insn_00413f20) db 0
    db 0x8B, 0xC1 ; 00413F22 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00413f24:
    mov dl,[eax+0x1] ; 00413F24 8A5001
    %if ($ - %%insn_00413f24) > 3
        %error "LONG_00413F24"
    %endif
    times 3 - ($ - %%insn_00413f24) db 0
    %%insn_00413f27:
    mov [eax],dl ; 00413F27 8810
    %if ($ - %%insn_00413f27) > 2
        %error "LONG_00413F27"
    %endif
    times 2 - ($ - %%insn_00413f27) db 0
    %%insn_00413f29:
    mov dl,[eax+0x1] ; 00413F29 8A5001
    %if ($ - %%insn_00413f29) > 3
        %error "LONG_00413F29"
    %endif
    times 3 - ($ - %%insn_00413f29) db 0
    %%insn_00413f2c:
    inc eax ; 00413F2C 40
    %if ($ - %%insn_00413f2c) > 1
        %error "LONG_00413F2C"
    %endif
    times 1 - ($ - %%insn_00413f2c) db 0
    %%insn_00413f2d:
    test dl,dl ; 00413F2D 84D2
    %if ($ - %%insn_00413f2d) > 2
        %error "LONG_00413F2D"
    %endif
    times 2 - ($ - %%insn_00413f2d) db 0
    %%insn_00413f2f:
    jnz short 0x413f24 ; 00413F2F 75F3
    %if ($ - %%insn_00413f2f) > 2
        %error "LONG_00413F2F"
    %endif
    times 2 - ($ - %%insn_00413f2f) db 0
    %%insn_00413f31:
    jmp short 0x413f17 ; 00413F31 EBE4
    %if ($ - %%insn_00413f31) > 2
        %error "LONG_00413F31"
    %endif
    times 2 - ($ - %%insn_00413f31) db 0
    %if ($ - %%fragment_start) != 51
        %error "function fragment size drift: 00413F00"
    %endif
%endmacro
