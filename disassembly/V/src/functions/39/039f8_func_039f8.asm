; Linear entry 039F8 (1000:39f8)
; Ghidra working symbol: FUN_1000_39f8
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_039f8_part_00 0
    %%fragment_start:
func_039f8:
    %%insn_039f8:
    push si ; 039F8 56
    %if ($ - %%insn_039f8) > 1
        %error "LONG_039F8"
    %endif
    times 1 - ($ - %%insn_039f8) db 0
    %%insn_039f9:
    push di ; 039F9 57
    %if ($ - %%insn_039f9) > 1
        %error "LONG_039F9"
    %endif
    times 1 - ($ - %%insn_039f9) db 0
    %%insn_039fa:
    push bx ; 039FA 53
    %if ($ - %%insn_039fa) > 1
        %error "LONG_039FA"
    %endif
    times 1 - ($ - %%insn_039fa) db 0
    db 0x8B, 0xDA ; 039FB 8BDA | mov bx,dx | encoding preserved
    %%insn_039fd:
    mov al,[bx] ; 039FD 8A07
    %if ($ - %%insn_039fd) > 2
        %error "LONG_039FD"
    %endif
    times 2 - ($ - %%insn_039fd) db 0
    %%insn_039ff:
    cmp al,0x1 ; 039FF 3C01
    %if ($ - %%insn_039ff) > 2
        %error "LONG_039FF"
    %endif
    times 2 - ($ - %%insn_039ff) db 0
    %%insn_03a01:
    jnz short 0x3a08 ; 03A01 7505
    %if ($ - %%insn_03a01) > 2
        %error "LONG_03A01"
    %endif
    times 2 - ($ - %%insn_03a01) db 0
    %%insn_03a03:
    mov si,0xd8e3 ; 03A03 BEE3D8
    %if ($ - %%insn_03a03) > 3
        %error "LONG_03A03"
    %endif
    times 3 - ($ - %%insn_03a03) db 0
    %%insn_03a06:
    jmp short 0x3a0b ; 03A06 EB03
    %if ($ - %%insn_03a06) > 2
        %error "LONG_03A06"
    %endif
    times 2 - ($ - %%insn_03a06) db 0
    %%insn_03a08:
    mov si,0xd923 ; 03A08 BE23D9
    %if ($ - %%insn_03a08) > 3
        %error "LONG_03A08"
    %endif
    times 3 - ($ - %%insn_03a08) db 0
    %%insn_03a0b:
    inc bx ; 03A0B 43
    %if ($ - %%insn_03a0b) > 1
        %error "LONG_03A0B"
    %endif
    times 1 - ($ - %%insn_03a0b) db 0
    %%insn_03a0c:
    mov di,0xd963 ; 03A0C BF63D9
    %if ($ - %%insn_03a0c) > 3
        %error "LONG_03A0C"
    %endif
    times 3 - ($ - %%insn_03a0c) db 0
    %%insn_03a0f:
    mov al,[ss:si] ; 03A0F 368A04
    %if ($ - %%insn_03a0f) > 3
        %error "LONG_03A0F"
    %endif
    times 3 - ($ - %%insn_03a0f) db 0
    db 0x22, 0xC0 ; 03A12 22C0 | and al,al | encoding preserved
    %%insn_03a14:
    jz short 0x3a1d ; 03A14 7407
    %if ($ - %%insn_03a14) > 2
        %error "LONG_03A14"
    %endif
    times 2 - ($ - %%insn_03a14) db 0
    %%insn_03a16:
    mov [ss:di],al ; 03A16 368805
    %if ($ - %%insn_03a16) > 3
        %error "LONG_03A16"
    %endif
    times 3 - ($ - %%insn_03a16) db 0
    %%insn_03a19:
    inc si ; 03A19 46
    %if ($ - %%insn_03a19) > 1
        %error "LONG_03A19"
    %endif
    times 1 - ($ - %%insn_03a19) db 0
    %%insn_03a1a:
    inc di ; 03A1A 47
    %if ($ - %%insn_03a1a) > 1
        %error "LONG_03A1A"
    %endif
    times 1 - ($ - %%insn_03a1a) db 0
    %%insn_03a1b:
    jmp short 0x3a0f ; 03A1B EBF2
    %if ($ - %%insn_03a1b) > 2
        %error "LONG_03A1B"
    %endif
    times 2 - ($ - %%insn_03a1b) db 0
    %%insn_03a1d:
    mov al,[bx] ; 03A1D 8A07
    %if ($ - %%insn_03a1d) > 2
        %error "LONG_03A1D"
    %endif
    times 2 - ($ - %%insn_03a1d) db 0
    %%insn_03a1f:
    mov [ss:di],al ; 03A1F 368805
    %if ($ - %%insn_03a1f) > 3
        %error "LONG_03A1F"
    %endif
    times 3 - ($ - %%insn_03a1f) db 0
    %%insn_03a22:
    inc bx ; 03A22 43
    %if ($ - %%insn_03a22) > 1
        %error "LONG_03A22"
    %endif
    times 1 - ($ - %%insn_03a22) db 0
    %%insn_03a23:
    inc di ; 03A23 47
    %if ($ - %%insn_03a23) > 1
        %error "LONG_03A23"
    %endif
    times 1 - ($ - %%insn_03a23) db 0
    db 0x22, 0xC0 ; 03A24 22C0 | and al,al | encoding preserved
    %%insn_03a26:
    jnz short 0x3a1d ; 03A26 75F5
    %if ($ - %%insn_03a26) > 2
        %error "LONG_03A26"
    %endif
    times 2 - ($ - %%insn_03a26) db 0
    %%insn_03a28:
    mov dx,0xd963 ; 03A28 BA63D9
    %if ($ - %%insn_03a28) > 3
        %error "LONG_03A28"
    %endif
    times 3 - ($ - %%insn_03a28) db 0
    db 0x33, 0xC0 ; 03A2B 33C0 | xor ax,ax | encoding preserved
    %%insn_03a2d:
    pop bx ; 03A2D 5B
    %if ($ - %%insn_03a2d) > 1
        %error "LONG_03A2D"
    %endif
    times 1 - ($ - %%insn_03a2d) db 0
    %%insn_03a2e:
    pop di ; 03A2E 5F
    %if ($ - %%insn_03a2e) > 1
        %error "LONG_03A2E"
    %endif
    times 1 - ($ - %%insn_03a2e) db 0
    %%insn_03a2f:
    pop si ; 03A2F 5E
    %if ($ - %%insn_03a2f) > 1
        %error "LONG_03A2F"
    %endif
    times 1 - ($ - %%insn_03a2f) db 0
    %%insn_03a30:
    ret ; 03A30 C3
    %if ($ - %%insn_03a30) > 1
        %error "LONG_03A30"
    %endif
    times 1 - ($ - %%insn_03a30) db 0
    %if ($ - %%fragment_start) != 57
        %error "SIZE_039F8"
    %endif
%endmacro
