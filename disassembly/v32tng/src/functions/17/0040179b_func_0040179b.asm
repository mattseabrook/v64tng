; PE virtual entry 0040179B
; Ghidra working symbol: FUN_0040179b
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040179b_part_00 0
    %%fragment_start:
func_0040179b:
    %%insn_0040179b:
    push ebp ; 0040179B 55
    %if ($ - %%insn_0040179b) > 1
        %error "LONG_0040179B"
    %endif
    times 1 - ($ - %%insn_0040179b) db 0
    db 0x8B, 0xEC ; 0040179C 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040179e:
    push ecx ; 0040179E 51
    %if ($ - %%insn_0040179e) > 1
        %error "LONG_0040179E"
    %endif
    times 1 - ($ - %%insn_0040179e) db 0
    %%insn_0040179f:
    mov eax,[ebp+0x8] ; 0040179F 8B4508
    %if ($ - %%insn_0040179f) > 3
        %error "LONG_0040179F"
    %endif
    times 3 - ($ - %%insn_0040179f) db 0
    %%insn_004017a2:
    and eax,0xffff ; 004017A2 25FFFF0000
    %if ($ - %%insn_004017a2) > 5
        %error "LONG_004017A2"
    %endif
    times 5 - ($ - %%insn_004017a2) db 0
    %%insn_004017a7:
    cmp eax,0x1 ; 004017A7 83F801
    %if ($ - %%insn_004017a7) > 3
        %error "LONG_004017A7"
    %endif
    times 3 - ($ - %%insn_004017a7) db 0
    %%insn_004017aa:
    jnz short 0x4017cf ; 004017AA 7523
    %if ($ - %%insn_004017aa) > 2
        %error "LONG_004017AA"
    %endif
    times 2 - ($ - %%insn_004017aa) db 0
    %%insn_004017ac:
    mov ecx,[0x41f284] ; 004017AC 8B0D84F24100
    %if ($ - %%insn_004017ac) > 6
        %error "LONG_004017AC"
    %endif
    times 6 - ($ - %%insn_004017ac) db 0
    %%insn_004017b2:
    add ecx,[0x41f300] ; 004017B2 030D00F34100
    %if ($ - %%insn_004017b2) > 6
        %error "LONG_004017B2"
    %endif
    times 6 - ($ - %%insn_004017b2) db 0
    %%insn_004017b8:
    movzx dx,byte [ecx] ; 004017B8 660FB611
    %if ($ - %%insn_004017b8) > 4
        %error "LONG_004017B8"
    %endif
    times 4 - ($ - %%insn_004017b8) db 0
    %%insn_004017bc:
    mov [ebp-0x4],dx ; 004017BC 668955FC
    %if ($ - %%insn_004017bc) > 4
        %error "LONG_004017BC"
    %endif
    times 4 - ($ - %%insn_004017bc) db 0
    %%insn_004017c0:
    mov eax,[0x41f300] ; 004017C0 A100F34100
    %if ($ - %%insn_004017c0) > 5
        %error "LONG_004017C0"
    %endif
    times 5 - ($ - %%insn_004017c0) db 0
    %%insn_004017c5:
    add eax,0x1 ; 004017C5 83C001
    %if ($ - %%insn_004017c5) > 3
        %error "LONG_004017C5"
    %endif
    times 3 - ($ - %%insn_004017c5) db 0
    %%insn_004017c8:
    mov [0x41f300],eax ; 004017C8 A300F34100
    %if ($ - %%insn_004017c8) > 5
        %error "LONG_004017C8"
    %endif
    times 5 - ($ - %%insn_004017c8) db 0
    %%insn_004017cd:
    jmp short 0x4017d8 ; 004017CD EB09
    %if ($ - %%insn_004017cd) > 2
        %error "LONG_004017CD"
    %endif
    times 2 - ($ - %%insn_004017cd) db 0
    %%insn_004017cf:
    call 0x401473 ; 004017CF E89FFCFFFF
    %if ($ - %%insn_004017cf) > 5
        %error "LONG_004017CF"
    %endif
    times 5 - ($ - %%insn_004017cf) db 0
    %%insn_004017d4:
    mov [ebp-0x4],ax ; 004017D4 668945FC
    %if ($ - %%insn_004017d4) > 4
        %error "LONG_004017D4"
    %endif
    times 4 - ($ - %%insn_004017d4) db 0
    %%insn_004017d8:
    mov ecx,[ebp-0x4] ; 004017D8 8B4DFC
    %if ($ - %%insn_004017d8) > 3
        %error "LONG_004017D8"
    %endif
    times 3 - ($ - %%insn_004017d8) db 0
    %%insn_004017db:
    and ecx,0xffff ; 004017DB 81E1FFFF0000
    %if ($ - %%insn_004017db) > 6
        %error "LONG_004017DB"
    %endif
    times 6 - ($ - %%insn_004017db) db 0
    %%insn_004017e1:
    mov edx,[0x41f2b8] ; 004017E1 8B15B8F24100
    %if ($ - %%insn_004017e1) > 6
        %error "LONG_004017E1"
    %endif
    times 6 - ($ - %%insn_004017e1) db 0
    %%insn_004017e7:
    mov al,[edx+ecx] ; 004017E7 8A040A
    %if ($ - %%insn_004017e7) > 3
        %error "LONG_004017E7"
    %endif
    times 3 - ($ - %%insn_004017e7) db 0
    db 0x8B, 0xE5 ; 004017EA 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004017ec:
    pop ebp ; 004017EC 5D
    %if ($ - %%insn_004017ec) > 1
        %error "LONG_004017EC"
    %endif
    times 1 - ($ - %%insn_004017ec) db 0
    %%insn_004017ed:
    ret ; 004017ED C3
    %if ($ - %%insn_004017ed) > 1
        %error "LONG_004017ED"
    %endif
    times 1 - ($ - %%insn_004017ed) db 0
    %if ($ - %%fragment_start) != 83
        %error "function fragment size drift: 0040179B"
    %endif
%endmacro
