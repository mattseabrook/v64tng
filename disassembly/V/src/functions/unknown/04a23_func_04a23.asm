; Linear entry 04A23 (1000:4a23)
; Ghidra working symbol: FUN_1000_4a23
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04a23_part_00 0
    %%fragment_start:
func_04a23:
    %%insn_04a23:
    push cx ; 04A23 51
    %if ($ - %%insn_04a23) > 1
        %error "LONG_04A23"
    %endif
    times 1 - ($ - %%insn_04a23) db 0
    %%insn_04a24:
    push dx ; 04A24 52
    %if ($ - %%insn_04a24) > 1
        %error "LONG_04A24"
    %endif
    times 1 - ($ - %%insn_04a24) db 0
    db 0x33, 0xC0 ; 04A25 33C0 | xor ax,ax | encoding preserved
    db 0x32, 0xED ; 04A27 32ED | xor ch,ch | encoding preserved
    %%insn_04a29:
    mov cl,[si] ; 04A29 8A0C
    %if ($ - %%insn_04a29) > 2
        %error "LONG_04A29"
    %endif
    times 2 - ($ - %%insn_04a29) db 0
    %%insn_04a2b:
    sub cl,0x30 ; 04A2B 80E930
    %if ($ - %%insn_04a2b) > 3
        %error "LONG_04A2B"
    %endif
    times 3 - ($ - %%insn_04a2b) db 0
    %%insn_04a2e:
    cmp cl,0x9 ; 04A2E 80F909
    %if ($ - %%insn_04a2e) > 3
        %error "LONG_04A2E"
    %endif
    times 3 - ($ - %%insn_04a2e) db 0
    %%insn_04a31:
    jna short 0x4a36 ; 04A31 7603
    %if ($ - %%insn_04a31) > 2
        %error "LONG_04A31"
    %endif
    times 2 - ($ - %%insn_04a31) db 0
    %%insn_04a33:
    pop cx ; 04A33 59
    %if ($ - %%insn_04a33) > 1
        %error "LONG_04A33"
    %endif
    times 1 - ($ - %%insn_04a33) db 0
    %%insn_04a34:
    stc ; 04A34 F9
    %if ($ - %%insn_04a34) > 1
        %error "LONG_04A34"
    %endif
    times 1 - ($ - %%insn_04a34) db 0
    %%insn_04a35:
    ret ; 04A35 C3
    %if ($ - %%insn_04a35) > 1
        %error "LONG_04A35"
    %endif
    times 1 - ($ - %%insn_04a35) db 0
    db 0x23, 0xC0 ; 04A36 23C0 | and ax,ax | encoding preserved
    %%insn_04a38:
    jz short 0x4a49 ; 04A38 740F
    %if ($ - %%insn_04a38) > 2
        %error "LONG_04A38"
    %endif
    times 2 - ($ - %%insn_04a38) db 0
    %%insn_04a3a:
    push cx ; 04A3A 51
    %if ($ - %%insn_04a3a) > 1
        %error "LONG_04A3A"
    %endif
    times 1 - ($ - %%insn_04a3a) db 0
    %%insn_04a3b:
    mov cx,0xa ; 04A3B B90A00
    %if ($ - %%insn_04a3b) > 3
        %error "LONG_04A3B"
    %endif
    times 3 - ($ - %%insn_04a3b) db 0
    %%insn_04a3e:
    mul cx ; 04A3E F7E1
    %if ($ - %%insn_04a3e) > 2
        %error "LONG_04A3E"
    %endif
    times 2 - ($ - %%insn_04a3e) db 0
    db 0x23, 0xD2 ; 04A40 23D2 | and dx,dx | encoding preserved
    %%insn_04a42:
    jz short 0x4a48 ; 04A42 7404
    %if ($ - %%insn_04a42) > 2
        %error "LONG_04A42"
    %endif
    times 2 - ($ - %%insn_04a42) db 0
    %%insn_04a44:
    pop cx ; 04A44 59
    %if ($ - %%insn_04a44) > 1
        %error "LONG_04A44"
    %endif
    times 1 - ($ - %%insn_04a44) db 0
    %%insn_04a45:
    pop cx ; 04A45 59
    %if ($ - %%insn_04a45) > 1
        %error "LONG_04A45"
    %endif
    times 1 - ($ - %%insn_04a45) db 0
    %%insn_04a46:
    stc ; 04A46 F9
    %if ($ - %%insn_04a46) > 1
        %error "LONG_04A46"
    %endif
    times 1 - ($ - %%insn_04a46) db 0
    %%insn_04a47:
    ret ; 04A47 C3
    %if ($ - %%insn_04a47) > 1
        %error "LONG_04A47"
    %endif
    times 1 - ($ - %%insn_04a47) db 0
    %%insn_04a48:
    pop cx ; 04A48 59
    %if ($ - %%insn_04a48) > 1
        %error "LONG_04A48"
    %endif
    times 1 - ($ - %%insn_04a48) db 0
    db 0x03, 0xC1 ; 04A49 03C1 | add ax,cx | encoding preserved
    %%insn_04a4b:
    inc si ; 04A4B 46
    %if ($ - %%insn_04a4b) > 1
        %error "LONG_04A4B"
    %endif
    times 1 - ($ - %%insn_04a4b) db 0
    %%insn_04a4c:
    cmp byte [si],0x0 ; 04A4C 803C00
    %if ($ - %%insn_04a4c) > 3
        %error "LONG_04A4C"
    %endif
    times 3 - ($ - %%insn_04a4c) db 0
    %%insn_04a4f:
    jnz short 0x4a29 ; 04A4F 75D8
    %if ($ - %%insn_04a4f) > 2
        %error "LONG_04A4F"
    %endif
    times 2 - ($ - %%insn_04a4f) db 0
    %%insn_04a51:
    pop dx ; 04A51 5A
    %if ($ - %%insn_04a51) > 1
        %error "LONG_04A51"
    %endif
    times 1 - ($ - %%insn_04a51) db 0
    %%insn_04a52:
    pop cx ; 04A52 59
    %if ($ - %%insn_04a52) > 1
        %error "LONG_04A52"
    %endif
    times 1 - ($ - %%insn_04a52) db 0
    %%insn_04a53:
    clc ; 04A53 F8
    %if ($ - %%insn_04a53) > 1
        %error "LONG_04A53"
    %endif
    times 1 - ($ - %%insn_04a53) db 0
    %%insn_04a54:
    ret ; 04A54 C3
    %if ($ - %%insn_04a54) > 1
        %error "LONG_04A54"
    %endif
    times 1 - ($ - %%insn_04a54) db 0
    %if ($ - %%fragment_start) != 50
        %error "SIZE_04A23"
    %endif
%endmacro
