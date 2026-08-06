; PE virtual entry 0040F550
; Ghidra working symbol: FUN_0040f550
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f550_part_00 0
    %%fragment_start:
func_0040f550:
    %%insn_0040f550:
    mov ecx,[esp+0x8] ; 0040F550 8B4C2408
    %if ($ - %%insn_0040f550) > 4
        %error "LONG_0040F550"
    %endif
    times 4 - ($ - %%insn_0040f550) db 0
    %%insn_0040f554:
    mov eax,[ecx+0x4] ; 0040F554 8B4104
    %if ($ - %%insn_0040f554) > 3
        %error "LONG_0040F554"
    %endif
    times 3 - ($ - %%insn_0040f554) db 0
    %%insn_0040f557:
    dec eax ; 0040F557 48
    %if ($ - %%insn_0040f557) > 1
        %error "LONG_0040F557"
    %endif
    times 1 - ($ - %%insn_0040f557) db 0
    %%insn_0040f558:
    mov [ecx+0x4],eax ; 0040F558 894104
    %if ($ - %%insn_0040f558) > 3
        %error "LONG_0040F558"
    %endif
    times 3 - ($ - %%insn_0040f558) db 0
    %%insn_0040f55b:
    js short 0x40f571 ; 0040F55B 7814
    %if ($ - %%insn_0040f55b) > 2
        %error "LONG_0040F55B"
    %endif
    times 2 - ($ - %%insn_0040f55b) db 0
    %%insn_0040f55d:
    mov edx,[ecx] ; 0040F55D 8B11
    %if ($ - %%insn_0040f55d) > 2
        %error "LONG_0040F55D"
    %endif
    times 2 - ($ - %%insn_0040f55d) db 0
    %%insn_0040f55f:
    mov eax,[esp+0x4] ; 0040F55F 8B442404
    %if ($ - %%insn_0040f55f) > 4
        %error "LONG_0040F55F"
    %endif
    times 4 - ($ - %%insn_0040f55f) db 0
    %%insn_0040f563:
    mov [edx],al ; 0040F563 8802
    %if ($ - %%insn_0040f563) > 2
        %error "LONG_0040F563"
    %endif
    times 2 - ($ - %%insn_0040f563) db 0
    %%insn_0040f565:
    mov edx,[ecx] ; 0040F565 8B11
    %if ($ - %%insn_0040f565) > 2
        %error "LONG_0040F565"
    %endif
    times 2 - ($ - %%insn_0040f565) db 0
    %%insn_0040f567:
    and eax,0xff ; 0040F567 25FF000000
    %if ($ - %%insn_0040f567) > 5
        %error "LONG_0040F567"
    %endif
    times 5 - ($ - %%insn_0040f567) db 0
    %%insn_0040f56c:
    inc edx ; 0040F56C 42
    %if ($ - %%insn_0040f56c) > 1
        %error "LONG_0040F56C"
    %endif
    times 1 - ($ - %%insn_0040f56c) db 0
    %%insn_0040f56d:
    mov [ecx],edx ; 0040F56D 8911
    %if ($ - %%insn_0040f56d) > 2
        %error "LONG_0040F56D"
    %endif
    times 2 - ($ - %%insn_0040f56d) db 0
    %%insn_0040f56f:
    jmp short 0x40f57f ; 0040F56F EB0E
    %if ($ - %%insn_0040f56f) > 2
        %error "LONG_0040F56F"
    %endif
    times 2 - ($ - %%insn_0040f56f) db 0
    %%insn_0040f571:
    mov eax,[esp+0x4] ; 0040F571 8B442404
    %if ($ - %%insn_0040f571) > 4
        %error "LONG_0040F571"
    %endif
    times 4 - ($ - %%insn_0040f571) db 0
    %%insn_0040f575:
    push ecx ; 0040F575 51
    %if ($ - %%insn_0040f575) > 1
        %error "LONG_0040F575"
    %endif
    times 1 - ($ - %%insn_0040f575) db 0
    %%insn_0040f576:
    push eax ; 0040F576 50
    %if ($ - %%insn_0040f576) > 1
        %error "LONG_0040F576"
    %endif
    times 1 - ($ - %%insn_0040f576) db 0
    %%insn_0040f577:
    call 0x40ea90 ; 0040F577 E814F5FFFF
    %if ($ - %%insn_0040f577) > 5
        %error "LONG_0040F577"
    %endif
    times 5 - ($ - %%insn_0040f577) db 0
    %%insn_0040f57c:
    add esp,0x8 ; 0040F57C 83C408
    %if ($ - %%insn_0040f57c) > 3
        %error "LONG_0040F57C"
    %endif
    times 3 - ($ - %%insn_0040f57c) db 0
    %%insn_0040f57f:
    cmp eax,0xffffffffffffffff ; 0040F57F 83F8FF
    %if ($ - %%insn_0040f57f) > 3
        %error "LONG_0040F57F"
    %endif
    times 3 - ($ - %%insn_0040f57f) db 0
    %%insn_0040f582:
    jnz short 0x40f58b ; 0040F582 7507
    %if ($ - %%insn_0040f582) > 2
        %error "LONG_0040F582"
    %endif
    times 2 - ($ - %%insn_0040f582) db 0
    %%insn_0040f584:
    mov ecx,[esp+0xc] ; 0040F584 8B4C240C
    %if ($ - %%insn_0040f584) > 4
        %error "LONG_0040F584"
    %endif
    times 4 - ($ - %%insn_0040f584) db 0
    %%insn_0040f588:
    mov [ecx],eax ; 0040F588 8901
    %if ($ - %%insn_0040f588) > 2
        %error "LONG_0040F588"
    %endif
    times 2 - ($ - %%insn_0040f588) db 0
    %%insn_0040f58a:
    ret ; 0040F58A C3
    %if ($ - %%insn_0040f58a) > 1
        %error "LONG_0040F58A"
    %endif
    times 1 - ($ - %%insn_0040f58a) db 0
    %%insn_0040f58b:
    mov eax,[esp+0xc] ; 0040F58B 8B44240C
    %if ($ - %%insn_0040f58b) > 4
        %error "LONG_0040F58B"
    %endif
    times 4 - ($ - %%insn_0040f58b) db 0
    %%insn_0040f58f:
    inc dword [eax] ; 0040F58F FF00
    %if ($ - %%insn_0040f58f) > 2
        %error "LONG_0040F58F"
    %endif
    times 2 - ($ - %%insn_0040f58f) db 0
    %%insn_0040f591:
    ret ; 0040F591 C3
    %if ($ - %%insn_0040f591) > 1
        %error "LONG_0040F591"
    %endif
    times 1 - ($ - %%insn_0040f591) db 0
    %if ($ - %%fragment_start) != 66
        %error "function fragment size drift: 0040F550"
    %endif
%endmacro
