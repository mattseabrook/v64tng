; Linear entry 06A81 (1000:6a81)
; Ghidra working symbol: FUN_1000_6a81
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06a81_part_00 0
    %%fragment_start:
func_06a81:
    %%insn_06a81:
    push bp ; 06A81 55
    %if ($ - %%insn_06a81) > 1
        %error "LONG_06A81"
    %endif
    times 1 - ($ - %%insn_06a81) db 0
    db 0x8B, 0xEC ; 06A82 8BEC | mov bp,sp | encoding preserved
    %%insn_06a84:
    push ax ; 06A84 50
    %if ($ - %%insn_06a84) > 1
        %error "LONG_06A84"
    %endif
    times 1 - ($ - %%insn_06a84) db 0
    %%insn_06a85:
    push di ; 06A85 57
    %if ($ - %%insn_06a85) > 1
        %error "LONG_06A85"
    %endif
    times 1 - ($ - %%insn_06a85) db 0
    %%insn_06a86:
    push si ; 06A86 56
    %if ($ - %%insn_06a86) > 1
        %error "LONG_06A86"
    %endif
    times 1 - ($ - %%insn_06a86) db 0
    %%insn_06a87:
    mov dx,[0xf1cb] ; 06A87 8B16CBF1
    %if ($ - %%insn_06a87) > 4
        %error "LONG_06A87"
    %endif
    times 4 - ($ - %%insn_06a87) db 0
    %%insn_06a8b:
    mov di,0xf1c9 ; 06A8B BFC9F1
    %if ($ - %%insn_06a8b) > 3
        %error "LONG_06A8B"
    %endif
    times 3 - ($ - %%insn_06a8b) db 0
    %%insn_06a8e:
    mov al,[0xe4b9] ; 06A8E A0B9E4
    %if ($ - %%insn_06a8e) > 3
        %error "LONG_06A8E"
    %endif
    times 3 - ($ - %%insn_06a8e) db 0
    db 0x8B, 0xDA ; 06A91 8BDA | mov bx,dx | encoding preserved
    %%insn_06a93:
    mov [bx-0x1431],al ; 06A93 8887CFEB
    %if ($ - %%insn_06a93) > 4
        %error "LONG_06A93"
    %endif
    times 4 - ($ - %%insn_06a93) db 0
    %%insn_06a97:
    mov al,[0xe4ba] ; 06A97 A0BAE4
    %if ($ - %%insn_06a97) > 3
        %error "LONG_06A97"
    %endif
    times 3 - ($ - %%insn_06a97) db 0
    %%insn_06a9a:
    mov [bx-0x1332],al ; 06A9A 8887CEEC
    %if ($ - %%insn_06a9a) > 4
        %error "LONG_06A9A"
    %endif
    times 4 - ($ - %%insn_06a9a) db 0
    %%insn_06a9e:
    mov al,[bp-0x2] ; 06A9E 8A46FE
    %if ($ - %%insn_06a9e) > 3
        %error "LONG_06A9E"
    %endif
    times 3 - ($ - %%insn_06a9e) db 0
    %%insn_06aa1:
    mov [bx-0x1233],al ; 06AA1 8887CDED
    %if ($ - %%insn_06aa1) > 4
        %error "LONG_06AA1"
    %endif
    times 4 - ($ - %%insn_06aa1) db 0
    %%insn_06aa5:
    mov al,[0xe4bb] ; 06AA5 A0BBE4
    %if ($ - %%insn_06aa5) > 3
        %error "LONG_06AA5"
    %endif
    times 3 - ($ - %%insn_06aa5) db 0
    %%insn_06aa8:
    mov [bx-0x1134],al ; 06AA8 8887CCEE
    %if ($ - %%insn_06aa8) > 4
        %error "LONG_06AA8"
    %endif
    times 4 - ($ - %%insn_06aa8) db 0
    %%insn_06aac:
    mov si,[0xf1c9] ; 06AAC 8B36C9F1
    %if ($ - %%insn_06aac) > 4
        %error "LONG_06AAC"
    %endif
    times 4 - ($ - %%insn_06aac) db 0
    %%insn_06ab0:
    cmp si,0xffffffffffffffff ; 06AB0 83FEFF
    %if ($ - %%insn_06ab0) > 3
        %error "LONG_06AB0"
    %endif
    times 3 - ($ - %%insn_06ab0) db 0
    %%insn_06ab3:
    jz short 0x6acd ; 06AB3 7418
    %if ($ - %%insn_06ab3) > 2
        %error "LONG_06AB3"
    %endif
    times 2 - ($ - %%insn_06ab3) db 0
    %%insn_06ab5:
    mov al,[bp-0x2] ; 06AB5 8A46FE
    %if ($ - %%insn_06ab5) > 3
        %error "LONG_06AB5"
    %endif
    times 3 - ($ - %%insn_06ab5) db 0
    %%insn_06ab8:
    cmp [si-0x1233],al ; 06AB8 3884CDED
    %if ($ - %%insn_06ab8) > 4
        %error "LONG_06AB8"
    %endif
    times 4 - ($ - %%insn_06ab8) db 0
    %%insn_06abc:
    jl short 0x6ae5 ; 06ABC 7C27
    %if ($ - %%insn_06abc) > 2
        %error "LONG_06ABC"
    %endif
    times 2 - ($ - %%insn_06abc) db 0
    db 0x8B, 0xFE ; 06ABE 8BFE | mov di,si | encoding preserved
    %%insn_06ac0:
    shl di,1 ; 06AC0 D1E7
    %if ($ - %%insn_06ac0) > 2
        %error "LONG_06AC0"
    %endif
    times 2 - ($ - %%insn_06ac0) db 0
    %%insn_06ac2:
    add di,0xefcb ; 06AC2 81C7CBEF
    %if ($ - %%insn_06ac2) > 4
        %error "LONG_06AC2"
    %endif
    times 4 - ($ - %%insn_06ac2) db 0
    %%insn_06ac6:
    mov si,[di] ; 06AC6 8B35
    %if ($ - %%insn_06ac6) > 2
        %error "LONG_06AC6"
    %endif
    times 2 - ($ - %%insn_06ac6) db 0
    %%insn_06ac8:
    cmp si,0xffffffffffffffff ; 06AC8 83FEFF
    %if ($ - %%insn_06ac8) > 3
        %error "LONG_06AC8"
    %endif
    times 3 - ($ - %%insn_06ac8) db 0
    %%insn_06acb:
    jnz short 0x6ab5 ; 06ACB 75E8
    %if ($ - %%insn_06acb) > 2
        %error "LONG_06ACB"
    %endif
    times 2 - ($ - %%insn_06acb) db 0
    db 0x8B, 0xDA ; 06ACD 8BDA | mov bx,dx | encoding preserved
    %%insn_06acf:
    shl bx,1 ; 06ACF D1E3
    %if ($ - %%insn_06acf) > 2
        %error "LONG_06ACF"
    %endif
    times 2 - ($ - %%insn_06acf) db 0
    %%insn_06ad1:
    mov word [bx-0x1035],0xffff ; 06AD1 C787CBEFFFFF
    %if ($ - %%insn_06ad1) > 6
        %error "LONG_06AD1"
    %endif
    times 6 - ($ - %%insn_06ad1) db 0
    %%insn_06ad7:
    mov [di],dx ; 06AD7 8915
    %if ($ - %%insn_06ad7) > 2
        %error "LONG_06AD7"
    %endif
    times 2 - ($ - %%insn_06ad7) db 0
    %%insn_06ad9:
    inc dx ; 06AD9 42
    %if ($ - %%insn_06ad9) > 1
        %error "LONG_06AD9"
    %endif
    times 1 - ($ - %%insn_06ad9) db 0
    %%insn_06ada:
    mov [0xf1cb],dx ; 06ADA 8916CBF1
    %if ($ - %%insn_06ada) > 4
        %error "LONG_06ADA"
    %endif
    times 4 - ($ - %%insn_06ada) db 0
    %%insn_06ade:
    pop si ; 06ADE 5E
    %if ($ - %%insn_06ade) > 1
        %error "LONG_06ADE"
    %endif
    times 1 - ($ - %%insn_06ade) db 0
    %%insn_06adf:
    pop di ; 06ADF 5F
    %if ($ - %%insn_06adf) > 1
        %error "LONG_06ADF"
    %endif
    times 1 - ($ - %%insn_06adf) db 0
    db 0x8B, 0xE5 ; 06AE0 8BE5 | mov sp,bp | encoding preserved
    %%insn_06ae2:
    pop bp ; 06AE2 5D
    %if ($ - %%insn_06ae2) > 1
        %error "LONG_06AE2"
    %endif
    times 1 - ($ - %%insn_06ae2) db 0
    %%insn_06ae3:
    ret ; 06AE3 C3
    %if ($ - %%insn_06ae3) > 1
        %error "LONG_06AE3"
    %endif
    times 1 - ($ - %%insn_06ae3) db 0
    %if ($ - %%fragment_start) != 99
        %error "SIZE_06A81"
    %endif
%endmacro

%macro emit_func_06a81_part_01 0
    %%fragment_start:
    db 0x8B, 0xDA ; 06AE5 8BDA | mov bx,dx | encoding preserved
    %%insn_06ae7:
    shl bx,1 ; 06AE7 D1E3
    %if ($ - %%insn_06ae7) > 2
        %error "LONG_06AE7"
    %endif
    times 2 - ($ - %%insn_06ae7) db 0
    %%insn_06ae9:
    mov [bx-0x1035],si ; 06AE9 89B7CBEF
    %if ($ - %%insn_06ae9) > 4
        %error "LONG_06AE9"
    %endif
    times 4 - ($ - %%insn_06ae9) db 0
    %%insn_06aed:
    jmp short 0x6ad7 ; 06AED EBE8
    %if ($ - %%insn_06aed) > 2
        %error "LONG_06AED"
    %endif
    times 2 - ($ - %%insn_06aed) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_06AE5"
    %endif
%endmacro
