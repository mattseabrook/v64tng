; Linear entry 04FC7 (1000:4fc7)
; Ghidra working symbol: FUN_1000_4fc7
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04fc7_part_00 0
    %%fragment_start:
func_04fc7:
    %%insn_04fc7:
    push dx ; 04FC7 52
    %if ($ - %%insn_04fc7) > 1
        %error "LONG_04FC7"
    %endif
    times 1 - ($ - %%insn_04fc7) db 0
    db 0x33, 0xD2 ; 04FC8 33D2 | xor dx,dx | encoding preserved
    %%insn_04fca:
    lodsb ; 04FCA AC
    %if ($ - %%insn_04fca) > 1
        %error "LONG_04FCA"
    %endif
    times 1 - ($ - %%insn_04fca) db 0
    %%insn_04fcb:
    cmp al,0x1a ; 04FCB 3C1A
    %if ($ - %%insn_04fcb) > 2
        %error "LONG_04FCB"
    %endif
    times 2 - ($ - %%insn_04fcb) db 0
    %%insn_04fcd:
    jnz short 0x4fd5 ; 04FCD 7506
    %if ($ - %%insn_04fcd) > 2
        %error "LONG_04FCD"
    %endif
    times 2 - ($ - %%insn_04fcd) db 0
    %%insn_04fcf:
    mov ax,0x8bd ; 04FCF B8BD08
    %if ($ - %%insn_04fcf) > 3
        %error "LONG_04FCF"
    %endif
    times 3 - ($ - %%insn_04fcf) db 0
    %%insn_04fd2:
    jmp 0x5ced ; 04FD2 E9180D
    %if ($ - %%insn_04fd2) > 3
        %error "LONG_04FD2"
    %endif
    times 3 - ($ - %%insn_04fd2) db 0
    %%insn_04fd5:
    cmp al,0xd ; 04FD5 3C0D
    %if ($ - %%insn_04fd5) > 2
        %error "LONG_04FD5"
    %endif
    times 2 - ($ - %%insn_04fd5) db 0
    %%insn_04fd7:
    jnz short 0x4fdd ; 04FD7 7504
    %if ($ - %%insn_04fd7) > 2
        %error "LONG_04FD7"
    %endif
    times 2 - ($ - %%insn_04fd7) db 0
    %%insn_04fd9:
    inc dl ; 04FD9 FEC2
    %if ($ - %%insn_04fd9) > 2
        %error "LONG_04FD9"
    %endif
    times 2 - ($ - %%insn_04fd9) db 0
    %%insn_04fdb:
    jmp short 0x4fe3 ; 04FDB EB06
    %if ($ - %%insn_04fdb) > 2
        %error "LONG_04FDB"
    %endif
    times 2 - ($ - %%insn_04fdb) db 0
    %%insn_04fdd:
    cmp al,0xa ; 04FDD 3C0A
    %if ($ - %%insn_04fdd) > 2
        %error "LONG_04FDD"
    %endif
    times 2 - ($ - %%insn_04fdd) db 0
    %%insn_04fdf:
    jnz short 0x4fe3 ; 04FDF 7502
    %if ($ - %%insn_04fdf) > 2
        %error "LONG_04FDF"
    %endif
    times 2 - ($ - %%insn_04fdf) db 0
    %%insn_04fe1:
    inc dh ; 04FE1 FEC6
    %if ($ - %%insn_04fe1) > 2
        %error "LONG_04FE1"
    %endif
    times 2 - ($ - %%insn_04fe1) db 0
    %%insn_04fe3:
    cmp dx,0x101 ; 04FE3 81FA0101
    %if ($ - %%insn_04fe3) > 4
        %error "LONG_04FE3"
    %endif
    times 4 - ($ - %%insn_04fe3) db 0
    %%insn_04fe7:
    jnz short 0x4fca ; 04FE7 75E1
    %if ($ - %%insn_04fe7) > 2
        %error "LONG_04FE7"
    %endif
    times 2 - ($ - %%insn_04fe7) db 0
    %%insn_04fe9:
    pop dx ; 04FE9 5A
    %if ($ - %%insn_04fe9) > 1
        %error "LONG_04FE9"
    %endif
    times 1 - ($ - %%insn_04fe9) db 0
    %%insn_04fea:
    ret ; 04FEA C3
    %if ($ - %%insn_04fea) > 1
        %error "LONG_04FEA"
    %endif
    times 1 - ($ - %%insn_04fea) db 0
    %if ($ - %%fragment_start) != 36
        %error "SIZE_04FC7"
    %endif
%endmacro
