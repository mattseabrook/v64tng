; PE virtual entry 0040C197
; Ghidra working symbol: FUN_0040c197
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040c197_part_00 0
    %%fragment_start:
func_0040c197:
    %%insn_0040c197:
    push ebp ; 0040C197 55
    %if ($ - %%insn_0040c197) > 1
        %error "LONG_0040C197"
    %endif
    times 1 - ($ - %%insn_0040c197) db 0
    db 0x8B, 0xEC ; 0040C198 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040c19a:
    cmp dword [0x4212d0],0x0 ; 0040C19A 833DD012420000
    %if ($ - %%insn_0040c19a) > 7
        %error "LONG_0040C19A"
    %endif
    times 7 - ($ - %%insn_0040c19a) db 0
    %%insn_0040c1a1:
    jz short 0x40c1bb ; 0040C1A1 7418
    %if ($ - %%insn_0040c1a1) > 2
        %error "LONG_0040C1A1"
    %endif
    times 2 - ($ - %%insn_0040c1a1) db 0
    %%insn_0040c1a3:
    mov eax,[0x4212d0] ; 0040C1A3 A1D0124200
    %if ($ - %%insn_0040c1a3) > 5
        %error "LONG_0040C1A3"
    %endif
    times 5 - ($ - %%insn_0040c1a3) db 0
    %%insn_0040c1a8:
    push eax ; 0040C1A8 50
    %if ($ - %%insn_0040c1a8) > 1
        %error "LONG_0040C1A8"
    %endif
    times 1 - ($ - %%insn_0040c1a8) db 0
    %%insn_0040c1a9:
    call 0x40c9a0 ; 0040C1A9 E8F2070000
    %if ($ - %%insn_0040c1a9) > 5
        %error "LONG_0040C1A9"
    %endif
    times 5 - ($ - %%insn_0040c1a9) db 0
    %%insn_0040c1ae:
    add esp,0x4 ; 0040C1AE 83C404
    %if ($ - %%insn_0040c1ae) > 3
        %error "LONG_0040C1AE"
    %endif
    times 3 - ($ - %%insn_0040c1ae) db 0
    %%insn_0040c1b1:
    mov dword [0x4212d0],0x0 ; 0040C1B1 C705D012420000000000
    %if ($ - %%insn_0040c1b1) > 10
        %error "LONG_0040C1B1"
    %endif
    times 10 - ($ - %%insn_0040c1b1) db 0
    %%insn_0040c1bb:
    pop ebp ; 0040C1BB 5D
    %if ($ - %%insn_0040c1bb) > 1
        %error "LONG_0040C1BB"
    %endif
    times 1 - ($ - %%insn_0040c1bb) db 0
    %%insn_0040c1bc:
    ret ; 0040C1BC C3
    %if ($ - %%insn_0040c1bc) > 1
        %error "LONG_0040C1BC"
    %endif
    times 1 - ($ - %%insn_0040c1bc) db 0
    %if ($ - %%fragment_start) != 38
        %error "function fragment size drift: 0040C197"
    %endif
%endmacro
