; Linear entry 06FA9 (1000:6fa9)
; Ghidra working symbol: FUN_1000_6fa9
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06fa9_part_00 0
    %%fragment_start:
func_06fa9:
    %%insn_06fa9:
    cmp word [bp-0x2992],0x0 ; 06FA9 83BE6ED600
    %if ($ - %%insn_06fa9) > 5
        %error "LONG_06FA9"
    %endif
    times 5 - ($ - %%insn_06fa9) db 0
    %%insn_06fae:
    jnz short 0x6fb1 ; 06FAE 7501
    %if ($ - %%insn_06fae) > 2
        %error "LONG_06FAE"
    %endif
    times 2 - ($ - %%insn_06fae) db 0
    %%insn_06fb0:
    ret ; 06FB0 C3
    %if ($ - %%insn_06fb0) > 1
        %error "LONG_06FB0"
    %endif
    times 1 - ($ - %%insn_06fb0) db 0
    %%insn_06fb1:
    pusha ; 06FB1 60
    %if ($ - %%insn_06fb1) > 1
        %error "LONG_06FB1"
    %endif
    times 1 - ($ - %%insn_06fb1) db 0
    %%insn_06fb2:
    cmp word [bp-0xcf2],0x0 ; 06FB2 83BE0EF300
    %if ($ - %%insn_06fb2) > 5
        %error "LONG_06FB2"
    %endif
    times 5 - ($ - %%insn_06fb2) db 0
    %%insn_06fb7:
    jnz short 0x6fbc ; 06FB7 7503
    %if ($ - %%insn_06fb7) > 2
        %error "LONG_06FB7"
    %endif
    times 2 - ($ - %%insn_06fb7) db 0
    %%insn_06fb9:
    call 0x6e72 ; 06FB9 E8B6FE
    %if ($ - %%insn_06fb9) > 3
        %error "LONG_06FB9"
    %endif
    times 3 - ($ - %%insn_06fb9) db 0
    %%insn_06fbc:
    mov bx,0xf320 ; 06FBC BB20F3
    %if ($ - %%insn_06fbc) > 3
        %error "LONG_06FBC"
    %endif
    times 3 - ($ - %%insn_06fbc) db 0
    %%insn_06fbf:
    mov cx,[bp-0xcf0] ; 06FBF 8B8E10F3
    %if ($ - %%insn_06fbf) > 4
        %error "LONG_06FBF"
    %endif
    times 4 - ($ - %%insn_06fbf) db 0
    db 0x33, 0xD2 ; 06FC3 33D2 | xor dx,dx | encoding preserved
    %%insn_06fc5:
    jcxz short 0x6fd5 ; 06FC5 E30E
    %if ($ - %%insn_06fc5) > 2
        %error "LONG_06FC5"
    %endif
    times 2 - ($ - %%insn_06fc5) db 0
    %%insn_06fc7:
    cmp ax,[ss:bx] ; 06FC7 363B07
    %if ($ - %%insn_06fc7) > 3
        %error "LONG_06FC7"
    %endif
    times 3 - ($ - %%insn_06fc7) db 0
    %%insn_06fca:
    jnz short 0x6fce ; 06FCA 7502
    %if ($ - %%insn_06fca) > 2
        %error "LONG_06FCA"
    %endif
    times 2 - ($ - %%insn_06fca) db 0
    %%insn_06fcc:
    jmp short 0x7019 ; 06FCC EB4B
    %if ($ - %%insn_06fcc) > 2
        %error "LONG_06FCC"
    %endif
    times 2 - ($ - %%insn_06fcc) db 0
    %%insn_06fce:
    inc dx ; 06FCE 42
    %if ($ - %%insn_06fce) > 1
        %error "LONG_06FCE"
    %endif
    times 1 - ($ - %%insn_06fce) db 0
    %%insn_06fcf:
    add bx,0x6 ; 06FCF 83C306
    %if ($ - %%insn_06fcf) > 3
        %error "LONG_06FCF"
    %endif
    times 3 - ($ - %%insn_06fcf) db 0
    %%insn_06fd2:
    dec cx ; 06FD2 49
    %if ($ - %%insn_06fd2) > 1
        %error "LONG_06FD2"
    %endif
    times 1 - ($ - %%insn_06fd2) db 0
    %%insn_06fd3:
    jnz short 0x6fc7 ; 06FD3 75F2
    %if ($ - %%insn_06fd3) > 2
        %error "LONG_06FD3"
    %endif
    times 2 - ($ - %%insn_06fd3) db 0
    %%insn_06fd5:
    cmp word [bp-0xcee],0x33 ; 06FD5 83BE12F333
    %if ($ - %%insn_06fd5) > 5
        %error "LONG_06FD5"
    %endif
    times 5 - ($ - %%insn_06fd5) db 0
    %%insn_06fda:
    jna short 0x6fed ; 06FDA 7611
    %if ($ - %%insn_06fda) > 2
        %error "LONG_06FDA"
    %endif
    times 2 - ($ - %%insn_06fda) db 0
    %%insn_06fdc:
    cmp word [bp-0xcf0],0xc8 ; 06FDC 81BE10F3C800
    %if ($ - %%insn_06fdc) > 6
        %error "LONG_06FDC"
    %endif
    times 6 - ($ - %%insn_06fdc) db 0
    %%insn_06fe2:
    jnc short 0x6fed ; 06FE2 7309
    %if ($ - %%insn_06fe2) > 2
        %error "LONG_06FE2"
    %endif
    times 2 - ($ - %%insn_06fe2) db 0
    %%insn_06fe4:
    inc word [bp-0xcf0] ; 06FE4 FF8610F3
    %if ($ - %%insn_06fe4) > 4
        %error "LONG_06FE4"
    %endif
    times 4 - ($ - %%insn_06fe4) db 0
    %%insn_06fe8:
    mov [ss:bx],ax ; 06FE8 368907
    %if ($ - %%insn_06fe8) > 3
        %error "LONG_06FE8"
    %endif
    times 3 - ($ - %%insn_06fe8) db 0
    %%insn_06feb:
    jmp short 0x700d ; 06FEB EB20
    %if ($ - %%insn_06feb) > 2
        %error "LONG_06FEB"
    %endif
    times 2 - ($ - %%insn_06feb) db 0
    %%insn_06fed:
    inc word [bp-0xce2] ; 06FED FF861EF3
    %if ($ - %%insn_06fed) > 4
        %error "LONG_06FED"
    %endif
    times 4 - ($ - %%insn_06fed) db 0
    %%insn_06ff1:
    mov bx,[bp-0x298e] ; 06FF1 8B9E72D6
    %if ($ - %%insn_06ff1) > 4
        %error "LONG_06FF1"
    %endif
    times 4 - ($ - %%insn_06ff1) db 0
    %%insn_06ff5:
    mov [bp-0xcee],bx ; 06FF5 899E12F3
    %if ($ - %%insn_06ff5) > 4
        %error "LONG_06FF5"
    %endif
    times 4 - ($ - %%insn_06ff5) db 0
    %%insn_06ff9:
    mov word [bp-0xcf0],0x1 ; 06FF9 C78610F30100
    %if ($ - %%insn_06ff9) > 6
        %error "LONG_06FF9"
    %endif
    times 6 - ($ - %%insn_06ff9) db 0
    %%insn_06fff:
    mov word [bp-0xcec],0x0 ; 06FFF C78614F30000
    %if ($ - %%insn_06fff) > 6
        %error "LONG_06FFF"
    %endif
    times 6 - ($ - %%insn_06fff) db 0
    %%insn_07005:
    mov bx,0xf320 ; 07005 BB20F3
    %if ($ - %%insn_07005) > 3
        %error "LONG_07005"
    %endif
    times 3 - ($ - %%insn_07005) db 0
    %%insn_07008:
    mov [ss:bx],ax ; 07008 368907
    %if ($ - %%insn_07008) > 3
        %error "LONG_07008"
    %endif
    times 3 - ($ - %%insn_07008) db 0
    db 0x33, 0xD2 ; 0700B 33D2 | xor dx,dx | encoding preserved
    %%insn_0700d:
    mov word [bp-0xcea],0x1 ; 0700D C78616F30100
    %if ($ - %%insn_0700d) > 6
        %error "LONG_0700D"
    %endif
    times 6 - ($ - %%insn_0700d) db 0
    %%insn_07013:
    mov [bp-0xce8],bx ; 07013 899E18F3
    %if ($ - %%insn_07013) > 4
        %error "LONG_07013"
    %endif
    times 4 - ($ - %%insn_07013) db 0
    %%insn_07017:
    popa ; 07017 61
    %if ($ - %%insn_07017) > 1
        %error "LONG_07017"
    %endif
    times 1 - ($ - %%insn_07017) db 0
    %%insn_07018:
    ret ; 07018 C3
    %if ($ - %%insn_07018) > 1
        %error "LONG_07018"
    %endif
    times 1 - ($ - %%insn_07018) db 0
    %%insn_07019:
    mov word [bp-0xcea],0x2 ; 07019 C78616F30200
    %if ($ - %%insn_07019) > 6
        %error "LONG_07019"
    %endif
    times 6 - ($ - %%insn_07019) db 0
    %%insn_0701f:
    mov [bp-0xce8],bx ; 0701F 899E18F3
    %if ($ - %%insn_0701f) > 4
        %error "LONG_0701F"
    %endif
    times 4 - ($ - %%insn_0701f) db 0
    %%insn_07023:
    popa ; 07023 61
    %if ($ - %%insn_07023) > 1
        %error "LONG_07023"
    %endif
    times 1 - ($ - %%insn_07023) db 0
    %%insn_07024:
    ret ; 07024 C3
    %if ($ - %%insn_07024) > 1
        %error "LONG_07024"
    %endif
    times 1 - ($ - %%insn_07024) db 0
    %if ($ - %%fragment_start) != 124
        %error "SIZE_06FA9"
    %endif
%endmacro
