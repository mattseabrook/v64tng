; PE virtual entry 00413C80
; Ghidra working symbol: FUN_00413c80
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00413c80_part_00 0
    %%fragment_start:
func_00413c80:
    %%insn_00413c80:
    mov ecx,[esp+0x4] ; 00413C80 8B4C2404
    %if ($ - %%insn_00413c80) > 4
        %error "LONG_00413C80"
    %endif
    times 4 - ($ - %%insn_00413c80) db 0
    %%insn_00413c84:
    mov al,[ecx] ; 00413C84 8A01
    %if ($ - %%insn_00413c84) > 2
        %error "LONG_00413C84"
    %endif
    times 2 - ($ - %%insn_00413c84) db 0
    %%insn_00413c86:
    test al,al ; 00413C86 84C0
    %if ($ - %%insn_00413c86) > 2
        %error "LONG_00413C86"
    %endif
    times 2 - ($ - %%insn_00413c86) db 0
    %%insn_00413c88:
    jz short 0x413c9d ; 00413C88 7413
    %if ($ - %%insn_00413c88) > 2
        %error "LONG_00413C88"
    %endif
    times 2 - ($ - %%insn_00413c88) db 0
    %%insn_00413c8a:
    cmp al,0x30 ; 00413C8A 3C30
    %if ($ - %%insn_00413c8a) > 2
        %error "LONG_00413C8A"
    %endif
    times 2 - ($ - %%insn_00413c8a) db 0
    %%insn_00413c8c:
    jl short 0x413c9e ; 00413C8C 7C10
    %if ($ - %%insn_00413c8c) > 2
        %error "LONG_00413C8C"
    %endif
    times 2 - ($ - %%insn_00413c8c) db 0
    %%insn_00413c8e:
    cmp al,0x39 ; 00413C8E 3C39
    %if ($ - %%insn_00413c8e) > 2
        %error "LONG_00413C8E"
    %endif
    times 2 - ($ - %%insn_00413c8e) db 0
    %%insn_00413c90:
    jg short 0x413c9e ; 00413C90 7F0C
    %if ($ - %%insn_00413c90) > 2
        %error "LONG_00413C90"
    %endif
    times 2 - ($ - %%insn_00413c90) db 0
    %%insn_00413c92:
    sub al,0x30 ; 00413C92 2C30
    %if ($ - %%insn_00413c92) > 2
        %error "LONG_00413C92"
    %endif
    times 2 - ($ - %%insn_00413c92) db 0
    %%insn_00413c94:
    mov [ecx],al ; 00413C94 8801
    %if ($ - %%insn_00413c94) > 2
        %error "LONG_00413C94"
    %endif
    times 2 - ($ - %%insn_00413c94) db 0
    %%insn_00413c96:
    inc ecx ; 00413C96 41
    %if ($ - %%insn_00413c96) > 1
        %error "LONG_00413C96"
    %endif
    times 1 - ($ - %%insn_00413c96) db 0
    %%insn_00413c97:
    mov al,[ecx] ; 00413C97 8A01
    %if ($ - %%insn_00413c97) > 2
        %error "LONG_00413C97"
    %endif
    times 2 - ($ - %%insn_00413c97) db 0
    %%insn_00413c99:
    test al,al ; 00413C99 84C0
    %if ($ - %%insn_00413c99) > 2
        %error "LONG_00413C99"
    %endif
    times 2 - ($ - %%insn_00413c99) db 0
    %%insn_00413c9b:
    jnz short 0x413c8a ; 00413C9B 75ED
    %if ($ - %%insn_00413c9b) > 2
        %error "LONG_00413C9B"
    %endif
    times 2 - ($ - %%insn_00413c9b) db 0
    %%insn_00413c9d:
    ret ; 00413C9D C3
    %if ($ - %%insn_00413c9d) > 1
        %error "LONG_00413C9D"
    %endif
    times 1 - ($ - %%insn_00413c9d) db 0
    %%insn_00413c9e:
    cmp al,0x3b ; 00413C9E 3C3B
    %if ($ - %%insn_00413c9e) > 2
        %error "LONG_00413C9E"
    %endif
    times 2 - ($ - %%insn_00413c9e) db 0
    %%insn_00413ca0:
    jnz short 0x413c96 ; 00413CA0 75F4
    %if ($ - %%insn_00413ca0) > 2
        %error "LONG_00413CA0"
    %endif
    times 2 - ($ - %%insn_00413ca0) db 0
    db 0x8B, 0xC1 ; 00413CA2 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00413ca4:
    mov dl,[eax+0x1] ; 00413CA4 8A5001
    %if ($ - %%insn_00413ca4) > 3
        %error "LONG_00413CA4"
    %endif
    times 3 - ($ - %%insn_00413ca4) db 0
    %%insn_00413ca7:
    mov [eax],dl ; 00413CA7 8810
    %if ($ - %%insn_00413ca7) > 2
        %error "LONG_00413CA7"
    %endif
    times 2 - ($ - %%insn_00413ca7) db 0
    %%insn_00413ca9:
    mov dl,[eax+0x1] ; 00413CA9 8A5001
    %if ($ - %%insn_00413ca9) > 3
        %error "LONG_00413CA9"
    %endif
    times 3 - ($ - %%insn_00413ca9) db 0
    %%insn_00413cac:
    inc eax ; 00413CAC 40
    %if ($ - %%insn_00413cac) > 1
        %error "LONG_00413CAC"
    %endif
    times 1 - ($ - %%insn_00413cac) db 0
    %%insn_00413cad:
    test dl,dl ; 00413CAD 84D2
    %if ($ - %%insn_00413cad) > 2
        %error "LONG_00413CAD"
    %endif
    times 2 - ($ - %%insn_00413cad) db 0
    %%insn_00413caf:
    jnz short 0x413ca4 ; 00413CAF 75F3
    %if ($ - %%insn_00413caf) > 2
        %error "LONG_00413CAF"
    %endif
    times 2 - ($ - %%insn_00413caf) db 0
    %%insn_00413cb1:
    jmp short 0x413c97 ; 00413CB1 EBE4
    %if ($ - %%insn_00413cb1) > 2
        %error "LONG_00413CB1"
    %endif
    times 2 - ($ - %%insn_00413cb1) db 0
    %if ($ - %%fragment_start) != 51
        %error "function fragment size drift: 00413C80"
    %endif
%endmacro
