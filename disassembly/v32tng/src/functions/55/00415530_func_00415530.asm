; PE virtual entry 00415530
; Ghidra working symbol: FUN_00415530
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00415530_part_00 0
    %%fragment_start:
func_00415530:
    %%insn_00415530:
    mov ecx,[esp+0x4] ; 00415530 8B4C2404
    %if ($ - %%insn_00415530) > 4
        %error "LONG_00415530"
    %endif
    times 4 - ($ - %%insn_00415530) db 0
    %%insn_00415534:
    cmp word [ecx],0x0 ; 00415534 66833900
    %if ($ - %%insn_00415534) > 4
        %error "LONG_00415534"
    %endif
    times 4 - ($ - %%insn_00415534) db 0
    %%insn_00415538:
    lea eax,[ecx+0x2] ; 00415538 8D4102
    %if ($ - %%insn_00415538) > 3
        %error "LONG_00415538"
    %endif
    times 3 - ($ - %%insn_00415538) db 0
    %%insn_0041553b:
    jz short 0x415548 ; 0041553B 740B
    %if ($ - %%insn_0041553b) > 2
        %error "LONG_0041553B"
    %endif
    times 2 - ($ - %%insn_0041553b) db 0
    %%insn_0041553d:
    mov dx,[eax] ; 0041553D 668B10
    %if ($ - %%insn_0041553d) > 3
        %error "LONG_0041553D"
    %endif
    times 3 - ($ - %%insn_0041553d) db 0
    %%insn_00415540:
    add eax,0x2 ; 00415540 83C002
    %if ($ - %%insn_00415540) > 3
        %error "LONG_00415540"
    %endif
    times 3 - ($ - %%insn_00415540) db 0
    %%insn_00415543:
    test dx,dx ; 00415543 6685D2
    %if ($ - %%insn_00415543) > 3
        %error "LONG_00415543"
    %endif
    times 3 - ($ - %%insn_00415543) db 0
    %%insn_00415546:
    jnz short 0x41553d ; 00415546 75F5
    %if ($ - %%insn_00415546) > 2
        %error "LONG_00415546"
    %endif
    times 2 - ($ - %%insn_00415546) db 0
    db 0x2B, 0xC1 ; 00415548 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0041554a:
    sar eax,1 ; 0041554A D1F8
    %if ($ - %%insn_0041554a) > 2
        %error "LONG_0041554A"
    %endif
    times 2 - ($ - %%insn_0041554a) db 0
    %%insn_0041554c:
    dec eax ; 0041554C 48
    %if ($ - %%insn_0041554c) > 1
        %error "LONG_0041554C"
    %endif
    times 1 - ($ - %%insn_0041554c) db 0
    %%insn_0041554d:
    ret ; 0041554D C3
    %if ($ - %%insn_0041554d) > 1
        %error "LONG_0041554D"
    %endif
    times 1 - ($ - %%insn_0041554d) db 0
    %if ($ - %%fragment_start) != 30
        %error "function fragment size drift: 00415530"
    %endif
%endmacro
