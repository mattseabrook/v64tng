; Linear entry 079F7 (1702:09d7)
; Ghidra working symbol: FUN_1702_09d7
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_079f7_part_00 0
    %%fragment_start:
func_079f7:
    %%insn_079f7:
    push bp ; 079F7 55
    %if ($ - %%insn_079f7) > 1
        %error "LONG_079F7"
    %endif
    times 1 - ($ - %%insn_079f7) db 0
    db 0x8B, 0xEC ; 079F8 8BEC | mov bp,sp | encoding preserved
    %%insn_079fa:
    push ds ; 079FA 1E
    %if ($ - %%insn_079fa) > 1
        %error "LONG_079FA"
    %endif
    times 1 - ($ - %%insn_079fa) db 0
    %%insn_079fb:
    push si ; 079FB 56
    %if ($ - %%insn_079fb) > 1
        %error "LONG_079FB"
    %endif
    times 1 - ($ - %%insn_079fb) db 0
    %%insn_079fc:
    push di ; 079FC 57
    %if ($ - %%insn_079fc) > 1
        %error "LONG_079FC"
    %endif
    times 1 - ($ - %%insn_079fc) db 0
    %%insn_079fd:
    pushf ; 079FD 9C
    %if ($ - %%insn_079fd) > 1
        %error "LONG_079FD"
    %endif
    times 1 - ($ - %%insn_079fd) db 0
    %%insn_079fe:
    cli ; 079FE FA
    %if ($ - %%insn_079fe) > 1
        %error "LONG_079FE"
    %endif
    times 1 - ($ - %%insn_079fe) db 0
    %%insn_079ff:
    cmp word [bp+0x8],0x0 ; 079FF 837E0800
    %if ($ - %%insn_079ff) > 4
        %error "LONG_079FF"
    %endif
    times 4 - ($ - %%insn_079ff) db 0
    %%insn_07a03:
    jnz short 0x7a0d ; 07A03 7508
    %if ($ - %%insn_07a03) > 2
        %error "LONG_07A03"
    %endif
    times 2 - ($ - %%insn_07a03) db 0
    %%insn_07a05:
    mov ax,0xd68d ; 07A05 B88DD6
    %if ($ - %%insn_07a05) > 3
        %error "LONG_07A05"
    %endif
    times 3 - ($ - %%insn_07a05) db 0
    %%insn_07a08:
    mov dx,0x0 ; 07A08 BA0000
    %if ($ - %%insn_07a08) > 3
        %error "LONG_07A08"
    %endif
    times 3 - ($ - %%insn_07a08) db 0
    %%insn_07a0b:
    jmp short 0x7a1b ; 07A0B EB0E
    %if ($ - %%insn_07a0b) > 2
        %error "LONG_07A0B"
    %endif
    times 2 - ($ - %%insn_07a0b) db 0
    %%insn_07a0d:
    mov ax,0x2710 ; 07A0D B81027
    %if ($ - %%insn_07a0d) > 3
        %error "LONG_07A0D"
    %endif
    times 3 - ($ - %%insn_07a0d) db 0
    %%insn_07a10:
    mov bx,0x2e9c ; 07A10 BB9C2E
    %if ($ - %%insn_07a10) > 3
        %error "LONG_07A10"
    %endif
    times 3 - ($ - %%insn_07a10) db 0
    %%insn_07a13:
    mul word [bp+0x8] ; 07A13 F76608
    %if ($ - %%insn_07a13) > 3
        %error "LONG_07A13"
    %endif
    times 3 - ($ - %%insn_07a13) db 0
    %%insn_07a16:
    div bx ; 07A16 F7F3
    %if ($ - %%insn_07a16) > 2
        %error "LONG_07A16"
    %endif
    times 2 - ($ - %%insn_07a16) db 0
    %%insn_07a18:
    mov dx,0x0 ; 07A18 BA0000
    %if ($ - %%insn_07a18) > 3
        %error "LONG_07A18"
    %endif
    times 3 - ($ - %%insn_07a18) db 0
    %%insn_07a1b:
    push dx ; 07A1B 52
    %if ($ - %%insn_07a1b) > 1
        %error "LONG_07A1B"
    %endif
    times 1 - ($ - %%insn_07a1b) db 0
    %%insn_07a1c:
    push ax ; 07A1C 50
    %if ($ - %%insn_07a1c) > 1
        %error "LONG_07A1C"
    %endif
    times 1 - ($ - %%insn_07a1c) db 0
    %%insn_07a1d:
    push word [bp+0x6] ; 07A1D FF7606
    %if ($ - %%insn_07a1d) > 3
        %error "LONG_07A1D"
    %endif
    times 3 - ($ - %%insn_07a1d) db 0
    %%insn_07a20:
    push cs ; 07A20 0E
    %if ($ - %%insn_07a20) > 1
        %error "LONG_07A20"
    %endif
    times 1 - ($ - %%insn_07a20) db 0
    %%insn_07a21:
    call 0x7961 ; 07A21 E83DFF
    %if ($ - %%insn_07a21) > 3
        %error "LONG_07A21"
    %endif
    times 3 - ($ - %%insn_07a21) db 0
    %%insn_07a24:
    add sp,0x6 ; 07A24 83C406
    %if ($ - %%insn_07a24) > 3
        %error "LONG_07A24"
    %endif
    times 3 - ($ - %%insn_07a24) db 0
    %%insn_07a27:
    or bh,0x0 ; 07A27 80CF00
    %if ($ - %%insn_07a27) > 3
        %error "LONG_07A27"
    %endif
    times 3 - ($ - %%insn_07a27) db 0
    %%insn_07a2a:
    push cs ; 07A2A 0E
    %if ($ - %%insn_07a2a) > 1
        %error "LONG_07A2A"
    %endif
    times 1 - ($ - %%insn_07a2a) db 0
    %%insn_07a2b:
    call 0x7a28 ; 07A2B E8FAFF
    %if ($ - %%insn_07a2b) > 3
        %error "LONG_07A2B"
    %endif
    times 3 - ($ - %%insn_07a2b) db 0
    %%insn_07a2e:
    pop di ; 07A2E 5F
    %if ($ - %%insn_07a2e) > 1
        %error "LONG_07A2E"
    %endif
    times 1 - ($ - %%insn_07a2e) db 0
    %%insn_07a2f:
    pop si ; 07A2F 5E
    %if ($ - %%insn_07a2f) > 1
        %error "LONG_07A2F"
    %endif
    times 1 - ($ - %%insn_07a2f) db 0
    %%insn_07a30:
    pop ds ; 07A30 1F
    %if ($ - %%insn_07a30) > 1
        %error "LONG_07A30"
    %endif
    times 1 - ($ - %%insn_07a30) db 0
    %%insn_07a31:
    pop bp ; 07A31 5D
    %if ($ - %%insn_07a31) > 1
        %error "LONG_07A31"
    %endif
    times 1 - ($ - %%insn_07a31) db 0
    %%insn_07a32:
    retf ; 07A32 CB
    %if ($ - %%insn_07a32) > 1
        %error "LONG_07A32"
    %endif
    times 1 - ($ - %%insn_07a32) db 0
    %if ($ - %%fragment_start) != 60
        %error "SIZE_079F7"
    %endif
%endmacro
