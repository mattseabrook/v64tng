; PE virtual entry 00412620
; Ghidra working symbol: FUN_00412620
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412620_part_00 0
    %%fragment_start:
func_00412620:
    %%insn_00412620:
    mov eax,[esp+0x4] ; 00412620 8B442404
    %if ($ - %%insn_00412620) > 4
        %error "LONG_00412620"
    %endif
    times 4 - ($ - %%insn_00412620) db 0
    %%insn_00412624:
    mov dword [0x42116c],0x0 ; 00412624 C7056C11420000000000
    %if ($ - %%insn_00412624) > 10
        %error "LONG_00412624"
    %endif
    times 10 - ($ - %%insn_00412624) db 0
    %%insn_0041262e:
    cmp eax,0xfffffffffffffffe ; 0041262E 83F8FE
    %if ($ - %%insn_0041262e) > 3
        %error "LONG_0041262E"
    %endif
    times 3 - ($ - %%insn_0041262e) db 0
    %%insn_00412631:
    jnz short 0x412643 ; 00412631 7510
    %if ($ - %%insn_00412631) > 2
        %error "LONG_00412631"
    %endif
    times 2 - ($ - %%insn_00412631) db 0
    %%insn_00412633:
    mov dword [0x42116c],0x1 ; 00412633 C7056C11420001000000
    %if ($ - %%insn_00412633) > 10
        %error "LONG_00412633"
    %endif
    times 10 - ($ - %%insn_00412633) db 0
    %%insn_0041263d:
    jmp dword near [0x4244c0] ; 0041263D FF25C0444200
    %if ($ - %%insn_0041263d) > 6
        %error "LONG_0041263D"
    %endif
    times 6 - ($ - %%insn_0041263d) db 0
    %%insn_00412643:
    cmp eax,0xfffffffffffffffd ; 00412643 83F8FD
    %if ($ - %%insn_00412643) > 3
        %error "LONG_00412643"
    %endif
    times 3 - ($ - %%insn_00412643) db 0
    %%insn_00412646:
    jnz short 0x412658 ; 00412646 7510
    %if ($ - %%insn_00412646) > 2
        %error "LONG_00412646"
    %endif
    times 2 - ($ - %%insn_00412646) db 0
    %%insn_00412648:
    mov dword [0x42116c],0x1 ; 00412648 C7056C11420001000000
    %if ($ - %%insn_00412648) > 10
        %error "LONG_00412648"
    %endif
    times 10 - ($ - %%insn_00412648) db 0
    %%insn_00412652:
    jmp dword near [0x4244dc] ; 00412652 FF25DC444200
    %if ($ - %%insn_00412652) > 6
        %error "LONG_00412652"
    %endif
    times 6 - ($ - %%insn_00412652) db 0
    %%insn_00412658:
    cmp eax,0xfffffffffffffffc ; 00412658 83F8FC
    %if ($ - %%insn_00412658) > 3
        %error "LONG_00412658"
    %endif
    times 3 - ($ - %%insn_00412658) db 0
    %%insn_0041265b:
    jnz short 0x41266c ; 0041265B 750F
    %if ($ - %%insn_0041265b) > 2
        %error "LONG_0041265B"
    %endif
    times 2 - ($ - %%insn_0041265b) db 0
    %%insn_0041265d:
    mov eax,[0x420f30] ; 0041265D A1300F4200
    %if ($ - %%insn_0041265d) > 5
        %error "LONG_0041265D"
    %endif
    times 5 - ($ - %%insn_0041265d) db 0
    %%insn_00412662:
    mov dword [0x42116c],0x1 ; 00412662 C7056C11420001000000
    %if ($ - %%insn_00412662) > 10
        %error "LONG_00412662"
    %endif
    times 10 - ($ - %%insn_00412662) db 0
    %%insn_0041266c:
    ret ; 0041266C C3
    %if ($ - %%insn_0041266c) > 1
        %error "LONG_0041266C"
    %endif
    times 1 - ($ - %%insn_0041266c) db 0
    %if ($ - %%fragment_start) != 77
        %error "function fragment size drift: 00412620"
    %endif
%endmacro
