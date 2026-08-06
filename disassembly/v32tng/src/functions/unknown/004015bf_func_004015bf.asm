; PE virtual entry 004015BF
; Ghidra working symbol: FUN_004015bf
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004015bf_part_00 0
    %%fragment_start:
func_004015bf:
    %%insn_004015bf:
    push ebp ; 004015BF 55
    %if ($ - %%insn_004015bf) > 1
        %error "LONG_004015BF"
    %endif
    times 1 - ($ - %%insn_004015bf) db 0
    db 0x8B, 0xEC ; 004015C0 8BEC | mov ebp,esp | encoding preserved
    %%insn_004015c2:
    push ecx ; 004015C2 51
    %if ($ - %%insn_004015c2) > 1
        %error "LONG_004015C2"
    %endif
    times 1 - ($ - %%insn_004015c2) db 0
    %%insn_004015c3:
    call dword near [0x42458c] ; 004015C3 FF158C454200
    %if ($ - %%insn_004015c3) > 6
        %error "LONG_004015C3"
    %endif
    times 6 - ($ - %%insn_004015c3) db 0
    %%insn_004015c9:
    add eax,[ebp+0x8] ; 004015C9 034508
    %if ($ - %%insn_004015c9) > 3
        %error "LONG_004015C9"
    %endif
    times 3 - ($ - %%insn_004015c9) db 0
    %%insn_004015cc:
    mov [ebp-0x4],eax ; 004015CC 8945FC
    %if ($ - %%insn_004015cc) > 3
        %error "LONG_004015CC"
    %endif
    times 3 - ($ - %%insn_004015cc) db 0
    %%insn_004015cf:
    push dword 0x1 ; 004015CF 6A01
    %if ($ - %%insn_004015cf) > 2
        %error "LONG_004015CF"
    %endif
    times 2 - ($ - %%insn_004015cf) db 0
    %%insn_004015d1:
    call dword near [0x4244cc] ; 004015D1 FF15CC444200
    %if ($ - %%insn_004015d1) > 6
        %error "LONG_004015D1"
    %endif
    times 6 - ($ - %%insn_004015d1) db 0
    %%insn_004015d7:
    call dword near [0x42458c] ; 004015D7 FF158C454200
    %if ($ - %%insn_004015d7) > 6
        %error "LONG_004015D7"
    %endif
    times 6 - ($ - %%insn_004015d7) db 0
    %%insn_004015dd:
    cmp eax,[ebp-0x4] ; 004015DD 3B45FC
    %if ($ - %%insn_004015dd) > 3
        %error "LONG_004015DD"
    %endif
    times 3 - ($ - %%insn_004015dd) db 0
    %%insn_004015e0:
    jc short 0x4015cf ; 004015E0 72ED
    %if ($ - %%insn_004015e0) > 2
        %error "LONG_004015E0"
    %endif
    times 2 - ($ - %%insn_004015e0) db 0
    db 0x8B, 0xE5 ; 004015E2 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004015e4:
    pop ebp ; 004015E4 5D
    %if ($ - %%insn_004015e4) > 1
        %error "LONG_004015E4"
    %endif
    times 1 - ($ - %%insn_004015e4) db 0
    %%insn_004015e5:
    ret ; 004015E5 C3
    %if ($ - %%insn_004015e5) > 1
        %error "LONG_004015E5"
    %endif
    times 1 - ($ - %%insn_004015e5) db 0
    %if ($ - %%fragment_start) != 39
        %error "function fragment size drift: 004015BF"
    %endif
%endmacro
