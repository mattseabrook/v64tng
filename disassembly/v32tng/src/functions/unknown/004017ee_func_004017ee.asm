; PE virtual entry 004017EE
; Ghidra working symbol: FUN_004017ee
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004017ee_part_00 0
    %%fragment_start:
func_004017ee:
    %%insn_004017ee:
    push ebp ; 004017EE 55
    %if ($ - %%insn_004017ee) > 1
        %error "LONG_004017EE"
    %endif
    times 1 - ($ - %%insn_004017ee) db 0
    db 0x8B, 0xEC ; 004017EF 8BEC | mov ebp,esp | encoding preserved
    %%insn_004017f1:
    push ecx ; 004017F1 51
    %if ($ - %%insn_004017f1) > 1
        %error "LONG_004017F1"
    %endif
    times 1 - ($ - %%insn_004017f1) db 0
    %%insn_004017f2:
    mov eax,[ebp+0x8] ; 004017F2 8B4508
    %if ($ - %%insn_004017f2) > 3
        %error "LONG_004017F2"
    %endif
    times 3 - ($ - %%insn_004017f2) db 0
    %%insn_004017f5:
    and eax,0xffff ; 004017F5 25FFFF0000
    %if ($ - %%insn_004017f5) > 5
        %error "LONG_004017F5"
    %endif
    times 5 - ($ - %%insn_004017f5) db 0
    %%insn_004017fa:
    cmp eax,0x1 ; 004017FA 83F801
    %if ($ - %%insn_004017fa) > 3
        %error "LONG_004017FA"
    %endif
    times 3 - ($ - %%insn_004017fa) db 0
    %%insn_004017fd:
    jnz short 0x401822 ; 004017FD 7523
    %if ($ - %%insn_004017fd) > 2
        %error "LONG_004017FD"
    %endif
    times 2 - ($ - %%insn_004017fd) db 0
    %%insn_004017ff:
    mov ecx,[0x41f284] ; 004017FF 8B0D84F24100
    %if ($ - %%insn_004017ff) > 6
        %error "LONG_004017FF"
    %endif
    times 6 - ($ - %%insn_004017ff) db 0
    %%insn_00401805:
    add ecx,[0x41f300] ; 00401805 030D00F34100
    %if ($ - %%insn_00401805) > 6
        %error "LONG_00401805"
    %endif
    times 6 - ($ - %%insn_00401805) db 0
    %%insn_0040180b:
    movzx dx,byte [ecx] ; 0040180B 660FB611
    %if ($ - %%insn_0040180b) > 4
        %error "LONG_0040180B"
    %endif
    times 4 - ($ - %%insn_0040180b) db 0
    %%insn_0040180f:
    mov [ebp-0x4],dx ; 0040180F 668955FC
    %if ($ - %%insn_0040180f) > 4
        %error "LONG_0040180F"
    %endif
    times 4 - ($ - %%insn_0040180f) db 0
    %%insn_00401813:
    mov eax,[0x41f300] ; 00401813 A100F34100
    %if ($ - %%insn_00401813) > 5
        %error "LONG_00401813"
    %endif
    times 5 - ($ - %%insn_00401813) db 0
    %%insn_00401818:
    add eax,0x1 ; 00401818 83C001
    %if ($ - %%insn_00401818) > 3
        %error "LONG_00401818"
    %endif
    times 3 - ($ - %%insn_00401818) db 0
    %%insn_0040181b:
    mov [0x41f300],eax ; 0040181B A300F34100
    %if ($ - %%insn_0040181b) > 5
        %error "LONG_0040181B"
    %endif
    times 5 - ($ - %%insn_0040181b) db 0
    %%insn_00401820:
    jmp short 0x40182b ; 00401820 EB09
    %if ($ - %%insn_00401820) > 2
        %error "LONG_00401820"
    %endif
    times 2 - ($ - %%insn_00401820) db 0
    %%insn_00401822:
    call 0x401473 ; 00401822 E84CFCFFFF
    %if ($ - %%insn_00401822) > 5
        %error "LONG_00401822"
    %endif
    times 5 - ($ - %%insn_00401822) db 0
    %%insn_00401827:
    mov [ebp-0x4],ax ; 00401827 668945FC
    %if ($ - %%insn_00401827) > 4
        %error "LONG_00401827"
    %endif
    times 4 - ($ - %%insn_00401827) db 0
    %%insn_0040182b:
    mov ax,[ebp-0x4] ; 0040182B 668B45FC
    %if ($ - %%insn_0040182b) > 4
        %error "LONG_0040182B"
    %endif
    times 4 - ($ - %%insn_0040182b) db 0
    db 0x8B, 0xE5 ; 0040182F 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00401831:
    pop ebp ; 00401831 5D
    %if ($ - %%insn_00401831) > 1
        %error "LONG_00401831"
    %endif
    times 1 - ($ - %%insn_00401831) db 0
    %%insn_00401832:
    ret ; 00401832 C3
    %if ($ - %%insn_00401832) > 1
        %error "LONG_00401832"
    %endif
    times 1 - ($ - %%insn_00401832) db 0
    %if ($ - %%fragment_start) != 69
        %error "function fragment size drift: 004017EE"
    %endif
%endmacro
