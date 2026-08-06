; Linear entry 0348C (1000:348c)
; Ghidra working symbol: FUN_1000_348c
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0348c_part_00 0
    %%fragment_start:
func_0348c:
    db 0x8A, 0xE0 ; 0348C 8AE0 | mov ah,al | encoding preserved
    %%insn_0348e:
    in al,dx ; 0348E EC
    %if ($ - %%insn_0348e) > 1
        %error "LONG_0348E"
    %endif
    times 1 - ($ - %%insn_0348e) db 0
    %%insn_0348f:
    push ax ; 0348F 50
    %if ($ - %%insn_0348f) > 1
        %error "LONG_0348F"
    %endif
    times 1 - ($ - %%insn_0348f) db 0
    db 0x8A, 0xC4 ; 03490 8AC4 | mov al,ah | encoding preserved
    %%insn_03492:
    out dx,al ; 03492 EE
    %if ($ - %%insn_03492) > 1
        %error "LONG_03492"
    %endif
    times 1 - ($ - %%insn_03492) db 0
    %%insn_03493:
    in al,dx ; 03493 EC
    %if ($ - %%insn_03493) > 1
        %error "LONG_03493"
    %endif
    times 1 - ($ - %%insn_03493) db 0
    db 0x22, 0xC4 ; 03494 22C4 | and al,ah | encoding preserved
    db 0x3A, 0xC4 ; 03496 3AC4 | cmp al,ah | encoding preserved
    %%insn_03498:
    jnz short 0x34a2 ; 03498 7508
    %if ($ - %%insn_03498) > 2
        %error "LONG_03498"
    %endif
    times 2 - ($ - %%insn_03498) db 0
    %%insn_0349a:
    mov al,0x0 ; 0349A B000
    %if ($ - %%insn_0349a) > 2
        %error "LONG_0349A"
    %endif
    times 2 - ($ - %%insn_0349a) db 0
    %%insn_0349c:
    out dx,al ; 0349C EE
    %if ($ - %%insn_0349c) > 1
        %error "LONG_0349C"
    %endif
    times 1 - ($ - %%insn_0349c) db 0
    %%insn_0349d:
    in al,dx ; 0349D EC
    %if ($ - %%insn_0349d) > 1
        %error "LONG_0349D"
    %endif
    times 1 - ($ - %%insn_0349d) db 0
    db 0x22, 0xC4 ; 0349E 22C4 | and al,ah | encoding preserved
    %%insn_034a0:
    cmp al,0x0 ; 034A0 3C00
    %if ($ - %%insn_034a0) > 2
        %error "LONG_034A0"
    %endif
    times 2 - ($ - %%insn_034a0) db 0
    %%insn_034a2:
    pop ax ; 034A2 58
    %if ($ - %%insn_034a2) > 1
        %error "LONG_034A2"
    %endif
    times 1 - ($ - %%insn_034a2) db 0
    %%insn_034a3:
    out dx,al ; 034A3 EE
    %if ($ - %%insn_034a3) > 1
        %error "LONG_034A3"
    %endif
    times 1 - ($ - %%insn_034a3) db 0
    %%insn_034a4:
    ret ; 034A4 C3
    %if ($ - %%insn_034a4) > 1
        %error "LONG_034A4"
    %endif
    times 1 - ($ - %%insn_034a4) db 0
    %if ($ - %%fragment_start) != 25
        %error "SIZE_0348C"
    %endif
%endmacro
