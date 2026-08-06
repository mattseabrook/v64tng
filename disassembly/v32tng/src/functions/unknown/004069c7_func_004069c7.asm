; PE virtual entry 004069C7
; Ghidra working symbol: FUN_004069c7
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004069c7_part_00 0
    %%fragment_start:
func_004069c7:
    %%insn_004069c7:
    push ebp ; 004069C7 55
    %if ($ - %%insn_004069c7) > 1
        %error "LONG_004069C7"
    %endif
    times 1 - ($ - %%insn_004069c7) db 0
    db 0x8B, 0xEC ; 004069C8 8BEC | mov ebp,esp | encoding preserved
    db 0x33, 0xC0 ; 004069CA 33C0 | xor eax,eax | encoding preserved
    %%insn_004069cc:
    mov al,[0x41f4bc] ; 004069CC A0BCF44100
    %if ($ - %%insn_004069cc) > 5
        %error "LONG_004069CC"
    %endif
    times 5 - ($ - %%insn_004069cc) db 0
    db 0x33, 0xC9 ; 004069D1 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004069d3:
    mov cl,[0x41f4b8] ; 004069D3 8A0DB8F44100
    %if ($ - %%insn_004069d3) > 6
        %error "LONG_004069D3"
    %endif
    times 6 - ($ - %%insn_004069d3) db 0
    db 0x3B, 0xC1 ; 004069D9 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_004069db:
    jnz short 0x4069e1 ; 004069DB 7504
    %if ($ - %%insn_004069db) > 2
        %error "LONG_004069DB"
    %endif
    times 2 - ($ - %%insn_004069db) db 0
    db 0x32, 0xC0 ; 004069DD 32C0 | xor al,al | encoding preserved
    %%insn_004069df:
    jmp short 0x4069e3 ; 004069DF EB02
    %if ($ - %%insn_004069df) > 2
        %error "LONG_004069DF"
    %endif
    times 2 - ($ - %%insn_004069df) db 0
    %%insn_004069e1:
    mov al,0x1 ; 004069E1 B001
    %if ($ - %%insn_004069e1) > 2
        %error "LONG_004069E1"
    %endif
    times 2 - ($ - %%insn_004069e1) db 0
    %%insn_004069e3:
    pop ebp ; 004069E3 5D
    %if ($ - %%insn_004069e3) > 1
        %error "LONG_004069E3"
    %endif
    times 1 - ($ - %%insn_004069e3) db 0
    %%insn_004069e4:
    ret ; 004069E4 C3
    %if ($ - %%insn_004069e4) > 1
        %error "LONG_004069E4"
    %endif
    times 1 - ($ - %%insn_004069e4) db 0
    %if ($ - %%fragment_start) != 30
        %error "function fragment size drift: 004069C7"
    %endif
%endmacro
