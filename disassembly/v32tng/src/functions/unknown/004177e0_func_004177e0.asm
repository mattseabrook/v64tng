; PE virtual entry 004177E0
; Ghidra working symbol: FUN_004177e0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004177e0_part_00 0
    %%fragment_start:
func_004177e0:
    %%insn_004177e0:
    mov eax,[esp+0x4] ; 004177E0 8B442404
    %if ($ - %%insn_004177e0) > 4
        %error "LONG_004177E0"
    %endif
    times 4 - ($ - %%insn_004177e0) db 0
    %%insn_004177e4:
    push esi ; 004177E4 56
    %if ($ - %%insn_004177e4) > 1
        %error "LONG_004177E4"
    %endif
    times 1 - ($ - %%insn_004177e4) db 0
    db 0x8B, 0xC8 ; 004177E5 8BC8 | mov ecx,eax | encoding preserved
    %%insn_004177e7:
    and eax,0x1f ; 004177E7 83E01F
    %if ($ - %%insn_004177e7) > 3
        %error "LONG_004177E7"
    %endif
    times 3 - ($ - %%insn_004177e7) db 0
    %%insn_004177ea:
    sar ecx,byte 0x5 ; 004177EA C1F905
    %if ($ - %%insn_004177ea) > 3
        %error "LONG_004177EA"
    %endif
    times 3 - ($ - %%insn_004177ea) db 0
    %%insn_004177ed:
    lea edx,[eax+eax*8] ; 004177ED 8D14C0
    %if ($ - %%insn_004177ed) > 3
        %error "LONG_004177ED"
    %endif
    times 3 - ($ - %%insn_004177ed) db 0
    %%insn_004177f0:
    mov esi,[esp+0xc] ; 004177F0 8B74240C
    %if ($ - %%insn_004177f0) > 4
        %error "LONG_004177F0"
    %endif
    times 4 - ($ - %%insn_004177f0) db 0
    %%insn_004177f4:
    mov eax,[ecx*4+0x423480] ; 004177F4 8B048D80344200
    %if ($ - %%insn_004177f4) > 7
        %error "LONG_004177F4"
    %endif
    times 7 - ($ - %%insn_004177f4) db 0
    %%insn_004177fb:
    mov cl,[eax+edx*4+0x4] ; 004177FB 8A4C9004
    %if ($ - %%insn_004177fb) > 4
        %error "LONG_004177FB"
    %endif
    times 4 - ($ - %%insn_004177fb) db 0
    %%insn_004177ff:
    lea edx,[eax+edx*4+0x4] ; 004177FF 8D549004
    %if ($ - %%insn_004177ff) > 4
        %error "LONG_004177FF"
    %endif
    times 4 - ($ - %%insn_004177ff) db 0
    db 0x8A, 0xC1 ; 00417803 8AC1 | mov al,cl | encoding preserved
    %%insn_00417805:
    and eax,0x80 ; 00417805 2580000000
    %if ($ - %%insn_00417805) > 5
        %error "LONG_00417805"
    %endif
    times 5 - ($ - %%insn_00417805) db 0
    %%insn_0041780a:
    cmp esi,0x8000 ; 0041780A 81FE00800000
    %if ($ - %%insn_0041780a) > 6
        %error "LONG_0041780A"
    %endif
    times 6 - ($ - %%insn_0041780a) db 0
    %%insn_00417810:
    jnz short 0x417817 ; 00417810 7505
    %if ($ - %%insn_00417810) > 2
        %error "LONG_00417810"
    %endif
    times 2 - ($ - %%insn_00417810) db 0
    %%insn_00417812:
    and cl,0x7f ; 00417812 80E17F
    %if ($ - %%insn_00417812) > 3
        %error "LONG_00417812"
    %endif
    times 3 - ($ - %%insn_00417812) db 0
    %%insn_00417815:
    jmp short 0x417822 ; 00417815 EB0B
    %if ($ - %%insn_00417815) > 2
        %error "LONG_00417815"
    %endif
    times 2 - ($ - %%insn_00417815) db 0
    %%insn_00417817:
    cmp esi,0x4000 ; 00417817 81FE00400000
    %if ($ - %%insn_00417817) > 6
        %error "LONG_00417817"
    %endif
    times 6 - ($ - %%insn_00417817) db 0
    %%insn_0041781d:
    jnz short 0x417834 ; 0041781D 7515
    %if ($ - %%insn_0041781d) > 2
        %error "LONG_0041781D"
    %endif
    times 2 - ($ - %%insn_0041781d) db 0
    %%insn_0041781f:
    or cl,0x80 ; 0041781F 80C980
    %if ($ - %%insn_0041781f) > 3
        %error "LONG_0041781F"
    %endif
    times 3 - ($ - %%insn_0041781f) db 0
    %%insn_00417822:
    neg eax ; 00417822 F7D8
    %if ($ - %%insn_00417822) > 2
        %error "LONG_00417822"
    %endif
    times 2 - ($ - %%insn_00417822) db 0
    db 0x1B, 0xC0 ; 00417824 1BC0 | sbb eax,eax | encoding preserved
    %%insn_00417826:
    mov [edx],cl ; 00417826 880A
    %if ($ - %%insn_00417826) > 2
        %error "LONG_00417826"
    %endif
    times 2 - ($ - %%insn_00417826) db 0
    %%insn_00417828:
    and eax,0xffffc000 ; 00417828 2500C0FFFF
    %if ($ - %%insn_00417828) > 5
        %error "LONG_00417828"
    %endif
    times 5 - ($ - %%insn_00417828) db 0
    %%insn_0041782d:
    add eax,0x8000 ; 0041782D 0500800000
    %if ($ - %%insn_0041782d) > 5
        %error "LONG_0041782D"
    %endif
    times 5 - ($ - %%insn_0041782d) db 0
    %%insn_00417832:
    pop esi ; 00417832 5E
    %if ($ - %%insn_00417832) > 1
        %error "LONG_00417832"
    %endif
    times 1 - ($ - %%insn_00417832) db 0
    %%insn_00417833:
    ret ; 00417833 C3
    %if ($ - %%insn_00417833) > 1
        %error "LONG_00417833"
    %endif
    times 1 - ($ - %%insn_00417833) db 0
    %%insn_00417834:
    call 0x410e10 ; 00417834 E8D795FFFF
    %if ($ - %%insn_00417834) > 5
        %error "LONG_00417834"
    %endif
    times 5 - ($ - %%insn_00417834) db 0
    %%insn_00417839:
    mov dword [eax],0x16 ; 00417839 C70016000000
    %if ($ - %%insn_00417839) > 6
        %error "LONG_00417839"
    %endif
    times 6 - ($ - %%insn_00417839) db 0
    %%insn_0041783f:
    or eax,0xffffffffffffffff ; 0041783F 83C8FF
    %if ($ - %%insn_0041783f) > 3
        %error "LONG_0041783F"
    %endif
    times 3 - ($ - %%insn_0041783f) db 0
    %%insn_00417842:
    pop esi ; 00417842 5E
    %if ($ - %%insn_00417842) > 1
        %error "LONG_00417842"
    %endif
    times 1 - ($ - %%insn_00417842) db 0
    %%insn_00417843:
    ret ; 00417843 C3
    %if ($ - %%insn_00417843) > 1
        %error "LONG_00417843"
    %endif
    times 1 - ($ - %%insn_00417843) db 0
    %if ($ - %%fragment_start) != 100
        %error "function fragment size drift: 004177E0"
    %endif
%endmacro
